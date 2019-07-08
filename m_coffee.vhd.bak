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
		o_read 			: out STD_LOGIC;
		
		
		o_res1 			: out STD_LOGIC_VECTOR(t_res-1 downto 0);
		o_res2 			: out STD_LOGIC_VECTOR(t_res-1 downto 0);
		o_res3 			: out STD_LOGIC_VECTOR(t_res-1 downto 0);
		o_res4 			: out STD_LOGIC_VECTOR(t_res-1 downto 0)
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
	signal w_res_1 		: STD_LOGIC_VECTOR(t_res-1 downto 0); --#Reservatorio de cafe
	signal w_res_2 		: STD_LOGIC_VECTOR(t_res-1 downto 0); --#Reservatorio de leite
	signal w_res_3 		: STD_LOGIC_VECTOR(t_res-1 downto 0); --#Reservatorio de chocolate
	signal w_res_4 		: STD_LOGIC_VECTOR(t_res-1 downto 0); --#Reservatorio de sugar
	signal w_res_stats 	: STD_LOGIC; -- (0) = estado ok | (1) = precisa de reposicao
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
		begin
			if (i_rst = '0') then
				w_res_1 <= "1010"; --#Inicialisando reservatorios com 10
				w_res_2 <= "1010"; --#Inicialisando reservatorios com 10
				w_res_3 <= "1010"; --#Inicialisando reservatorios com 10
				w_res_4 <= "1010"; --#Inicialisando reservatorios com 10
				
				w_res_stats <= '1'; -- Ja inicia a maquina de estados indo para o estado de reposicao
				o_data <= (others => '0');
				w_state <= st_idle;
			elsif rising_edge(i_clk) then
					case w_state is
						-----------------------------------------------------
						when st_idle =>
							if(w_res_stats = '1' and i_done = '1') then
								v_type	:= 0;
								v_size  	:= 0;
								v_sugar 	:= 0;
								w_state <= st_check_repo;
							end if;	
							---------------------
							if(w_res_stats = '0' and i_temp = '0' and i_done = '1') then
								if(i_type_1 = '1' or i_type_2 = '1' or i_type_3 = '1') then
									w_state <= st_check_type;
								end if;
							end if;
						-----------------------------------------------------
						when st_check_repo =>
							if(w_res_1 = "0000") then
								o_data(5) <= '1'; -- Led repo pos [5]
								o_read <= '1';
							else
								w_state <= st_check_temp;
							end if;
						-----------------------------------------------------
						when st_check_temp =>
							if(i_temp = '1') then -- Temperatura abaixo de 90
								o_data(6) <= '1'; -- Led temp pos [6]
								o_read <= '1';
							else
								w_res_stats <= '0';
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
							if(i_prepare = '1') then --#APERTOU BOTAO PRA INICIAR PREPARO
								-- Verificando as variaveis e ligando os leds
								-- leds tipos
								if(v_type = 1) then
									w_res_1 <= w_res_1 - 1;
									o_data(0) <= '1';
									o_read <= '1';
								elsif (v_type = 2) then
									w_res_1 <= w_res_1 - 1;
									w_res_2 <= w_res_2 - 1;
									o_data(1) <= '1';
									o_read <= '1';
								elsif (v_type = 3) then
									w_res_1 <= w_res_1 - 1;
									w_res_2 <= w_res_2 - 1;
									w_res_3 <= w_res_3 - 1;
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
									w_res_4 <= w_res_4 - 1;
								else
									o_data(4) <= '0';
									o_read <= '1';
								end if;
								-------------------
								o_data(7) <= '1'; -- LIGA O LED DO PREPARO
								o_read <= '1';
								w_res_stats <= '1';
								w_state <= st_idle;
							else
								o_data(7) <= '0'; -- DESLIGA O LED DO PREPARO
								o_read <= '1';
								w_res_stats <= '1';
								w_state <= st_idle;
							end if;
						when others =>
							w_state <= st_idle;
					end case;
			end if;
		end process UU1;
	
	o_res1 <= w_res_1;
	o_res2 <= w_res_2;
	o_res3 <= w_res_3;
	o_res4 <= w_res_4;
	
	
end behavioral;