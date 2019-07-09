library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity input_machine is
	generic (
		t_data	: INTEGER := 8;
		t_res 	: integer := 4
	);
	Port(
		i_clk 			: in STD_LOGIC;
		i_rst 			: in STD_LOGIC;
		
		i_type_1 		: in STD_LOGIC;
		i_type_2 		: in STD_LOGIC;
		i_type_3 		: in STD_LOGIC;
		
		i_size 			: in STD_LOGIC;
		i_sugar 			: in STD_LOGIC;
		
		i_prepare 		: in STD_LOGIC;
		
		i_temp 			: in STD_LOGIC;
		
		i_done			: in STD_LOGIC;
		--#OUTPUTS
		o_data 			: out STD_LOGIC_VECTOR(t_data-1 downto 0);
		o_read 			: out STD_LOGIC
	);
end input_machine;

architecture behavioral of input_machine is
	-- Internal signals
	----------------------------------------------------
	type w_state_type is (
		st_idle, 
		st_check_repo, 
		st_check_type, 
		st_check_size, 
		st_check_sugar, 
		st_check_valv, 
		st_check_temp 
	);
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	
	signal w_state 		: w_state_type;
	--# Sinais internos para os contadores de quantidade em binario;
	-----------------------------------------------------
begin
	--------------------------
	-- O_DATA = [t1, t2, t3, size, sugar, repo, temp, prepare]
	--	O_DATA =	[0, 1, 2, 3, 4, 5, 6, 7]
	---------------------------
	
	UU1 : process(i_clk, i_rst)
		variable v_type 		: integer := 0;
		variable v_size		: integer := 0;
		variable v_sugar		: integer := 0;
		variable v_res_1 		: integer := 0;
		variable v_res_2 		: integer := 0;
		variable v_res_3 		: integer := 0;
		variable v_res_4 		: integer := 0;
		variable v_repo 		: integer := 1;
		begin
			if (i_rst = '0') then
				v_res_1	:= 10;
				v_res_2	:= 10;
				v_res_3	:= 10;
				v_res_4	:= 10;
				v_repo	:= 1;
				o_read <= '0';
				o_data <= (others => '0');
				w_state <= st_idle;
			elsif rising_edge(i_clk) then
					case w_state is
						-----------------------------------------------------
						when st_idle =>
							o_read <= '0';
							if(v_repo = 1 and i_done = '1') then
								v_type	:= 0;
								v_size  	:= 0;
								v_sugar 	:= 0;
								w_state <= st_check_repo;
							end if;	
							---------------------
							if(v_repo = 0 and i_temp = '0') then
									w_state <= st_check_type;
							end if;
						-----------------------------------------------------
						when st_check_repo =>
							o_read <= '0';
							if(v_res_1 = 0) then
								o_data(5) <= '1'; -- Led repo pos [5]
								o_read <= '1';
							elsif(v_res_2 = 0) then
								o_data(5) <= '1'; -- Led repo pos [5]
								o_read <= '1';
							elsif(v_res_3 = 0) then
								o_data(5) <= '1'; -- Led repo pos [5]
								o_read <= '1';
							elsif(v_res_4 = 0) then
								o_data(5) <= '1'; -- Led repo pos [5]
								o_read <= '1';
							else
								w_state <= st_check_temp;
							end if;
						-----------------------------------------------------
						when st_check_temp =>
							o_read <= '0';
							if(i_temp = '1') then -- Temperatura abaixo de 90
								o_data(6) <= '1'; -- Led temp pos [6]
								o_read <= '1';
							else
								v_repo := 0;
								w_state <= st_idle;
							end if;
						-----------------------------------------------------
						when st_check_type =>
							if(i_type_1 = '1') then
								v_type := 1;
								w_state <= st_check_sugar;
							elsif(i_type_2 = '1') then
								v_type := 2;
								w_state <= st_check_sugar;
							elsif(i_type_3 = '1') then
								v_type := 3;
								w_state <= st_check_sugar;
							end if;
						-----------------------------------------------------
						when st_check_sugar =>
							if(i_sugar = '1') then
								v_sugar := 1;
							else
								v_sugar := 0;
							end if;
							w_state <= st_check_size;
						-----------------------------------------------------
						when st_check_size =>
							if(i_size = '1') then
								v_size := 1;
							else
								v_size := 0;
							end if;
							w_state <= st_check_valv;
						-----------------------------------------------------
						when st_check_valv =>
							o_read <= '0';
							if(i_prepare = '1') then --#APERTOU BOTAO PRA INICIAR PREPARO
								-- Verificando as variaveis e ligando os leds
								-- leds tipos
								if(v_type = 1) then
									v_res_1 := v_res_1 - 1;
									o_data(0) <= '1';
									o_read <= '1';
								elsif (v_type = 2) then
									v_res_1 := v_res_1 - 1;
									v_res_2 := v_res_2 - 1;
									o_data(1) <= '1';
									o_read <= '1';
								elsif (v_type = 3) then
									v_res_1 := v_res_1 - 1;
									v_res_2 := v_res_2 - 1;
									v_res_3 := v_res_3 - 1;
									o_data(2) <= '1';
									o_read <= '1';
								else
									o_data(0) <= '0'; -- desliga
									o_data(1) <= '0'; -- desliga
									o_data(2) <= '0'; -- desliga
									o_read <= '1';
								end if;
								-----------------------
								-- led size
								if(v_size = 1) then
									o_data(3) <= '1';
									o_read <= '1';
								else
									o_data(3) <= '0';
									o_read <= '1';
								end if;
								-------------------
								-- led sugar
								if(v_sugar = 1) then
									o_data(4) <= '1';
									o_read <= '1';
									v_res_4 := v_res_4 - 1;
								else
									o_data(4) <= '0';
									o_read <= '1';
								end if;
								-------------------
								o_data(7) <= '1'; -- LIGA O LED DO PREPARO
								o_read <= '1';
								v_repo := 1;
								w_state <= st_idle;
							else
								o_data(7) <= '0'; -- DESLIGA O LED DO PREPARO
								o_read <= '1';
								v_repo := 1;
								w_state <= st_idle;
							end if;
						when others =>
							w_state <= st_idle;
					end case;
			end if;
		end process UU1;
	
end behavioral;