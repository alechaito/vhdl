library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity leds_machine is
	generic (
		p_disp : INTEGER := 8
	);
	Port(
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_type_1 : in STD_LOGIC;
		i_type_2 : in STD_LOGIC;
		i_type_3 : in STD_LOGIC;
		i_size : in STD_LOGIC;
		i_sugar : in STD_LOGIC;
		i_prepare : in STD_LOGIC;
		i_temp : in STD_LOGIC;
		--#AINDA PRECISO ESCREVER AQQUI
	);
end leds_machine;

architecture behavioral of leds_machine is
	-- Internal signals
	----------------------------------------------------
type w_state_type is (st_idle, st_check_repo, st_check_type, st_check_size, st_check_sugar, st_check_valv );
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	
	signal w_state : w_state_type;
	--# Sinais internos para os contadores de quantidade em binario;
	signal w_res_1 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de cafe
	signal w_res_2 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de leite
	signal w_res_3 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de chocolate
	signal w_res_4 : STD_LOGIC_VECTOR(3 downto 0); --#Reservatorio de sugar
	signal w_res_stats : STD_LOGIC; -- (0) = estado ok | (1) = precisa de reposicao
	-----------------------------------------------------
	
begin
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_state <= st_idle;
		elsif rising_edge(i_clk) then
			case w_state is
				when st_idle =>
					--# Checando estado dos leds tipo
					if(i_data(0) == "1") then
						w_state <= st_led_type;
					end if;
					if(i_data(7) == "1") then
						
					end if;
				when st_led_type =>
					if(i_data(0) == "1") then
						o_led_type_1 <= "1";
					else if(i_data(1) == "1") then
						o_led_type_2 <= "1";
					else if(i_data(2) == "1") then
						o_led_type_3 <= "1";
					end if;
					w_state <= st_led_size;
				when st_led_size =>
					if(i_data(3) == "1") then
						o_led_size <= "1";
					else
						o_led_size <= "0";
					end if;
					w_state <= st_led_sugar;
				when st_led_sugar =>
					if(i_data(4) == "1") then
						o_led_sugar <= "1";
					else
						o_led_sugar <= "0";
					end if;
					w_state <= st_led_prepare;
				when st_led_prepare =>
					if(i_data(5) == "1") then
						o_led_prepare <= "1";
					else
						o_led_prepare <= "0";
					end if;
					w_state <= st_led_done;
				when st_led_done =>
					if(i_data(6) == "1") then
						o_led_done <= "1";
					else
						o_led_done <= "0";
					end if;
					w_state <= st_idle;
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;
	--------------
	-- Component BCD
	
	U_BCD: bcd
		port map (
			i_data => w_disp_0
		);
		
	U_TOP: top_logic
	port map(
		--INPUTS
		i_disp_1  => w_disp_1, 
		i_disp_2  => w_disp_2,
		i_disp_3  => w_disp_3,
	);
	
	
end behavioral;