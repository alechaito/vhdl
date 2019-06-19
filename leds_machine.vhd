library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity leds_machine is
	generic (
		p_disp : INTEGER := 8
	);
	Port(
		--- INPUTS
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_type_1 : in STD_LOGIC;
		i_type_2 : in STD_LOGIC;
		i_type_3 : in STD_LOGIC;
		i_size : in STD_LOGIC;
		i_sugar : in STD_LOGIC;
		i_prepare : in STD_LOGIC;
		i_temp : in STD_LOGIC;
		--- OUTPUTS
		o_led_type_1 : out STD_LOGIC;
		o_led_type_2 : out STD_LOGIC;
		o_led_type_3 : out STD_LOGIC;
		o_led_sugar : out STD_LOGIC;
		o_led_size : out STD_LOGIC;
		o_led_prepare : out STD_LOGIC;
		o_led_repo : out STD_LOGIC;
		o_led_temp : out STD_LOGIC;
		o_led_res_agua : out STD_LOGIC;
		o_led_done : out STD_LOGIC;
		
	);
end leds_machine;

architecture behavioral of leds_machine is
	-- Internal signals
	----------------------------------------------------
	type w_state_type is (
			st_idle, 
			st_led_type_1, 
			st_led_type_2, 
			st_led_type_3, 
			st_led_prepare, 
			st_led_repo,
			st_led_res_agua,
			st_led_size,
			st_led_sugar,
			st_led_temp,
			st_timer
		);
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	
	signal w_state : w_state_type;
	--# Sinais internos para os contadores de quantidade em binario;
	signal w_timer_count : STD_LOGIC_VECTOR(30 downto 0); --#TIMER COUNT
	signal w_timer_total : STD_LOGIC_VECTOR(4 downto 0);
	-----------------------------------------------------
	
begin
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_state <= st_idle;
		elsif rising_edge(i_clk) then
			case w_state is
				--# INICIO ESTADO IDLE
				when st_idle =>
					--############### LED TIPO 1
					if(i_data(0) == "1") then
						w_state <= st_led_type_1;
						w_timer_total <= w_timer_total + 1;
					else
						o_led_type_1 <= "0";
					end if;
					--##################################
					--############### LED TIPO 2
					if(i_data(1) == "1") then
						w_state <= st_led_type_2;
						w_timer_total <= w_timer_total + 2;
					else
						o_led_type_2 <= "0";
					end if;
					--##################################
					--############### LED TIPO 3
					if(i_data(2) == "1") then
						w_state <= st_led_type_3;
						w_timer_total <= w_timer_total + 3;
					else
						o_led_type_3 <= "0";
					end if;
					--##################################
					--############### LED SIZE
					if(i_data(3) == "1") then
						w_state <= st_led_size;
						w_timer_total <= w_timer_total + 10;
					else
						w_timer_total <= w_timer_total + 5;
						o_led_size <= "0";
					end if;
					--##################################
					--############### LED REPO
					if(i_data(4) == "1") then
						w_state <= st_led_repo;
					else
						o_led_repo <= "0";
					end if;
					--##################################
					--############### LED PREPARE
					if(i_data(5) == "1") then
						w_state <= st_led_prepare;
					else
						o_led_prepare <= "0";
					end if;
					--##################################
					--############### LED TEMP
					if(i_data(6) == "1") then
						w_state <= st_led_temp;
					else
						o_led_temp <= "0";
					end if;
					--##################################
					--############### LED RES_AGUA
					if(i_data(7) == "1") then
						w_state <= st_led_res_agua;
					else
						o_led_res_agua <= "0";
					end if;
					--##################################
					--############### LED SUGAR
					if(i_data(8) == "1") then
						w_state <= st_led_sugar;
						w_timer_total <= w_timer_total + 1;
					else
						o_led_sugar <= "0";
					end if;
					--##################################
					--############### ESTADO TIMER
					if(i_data(9) == "1") then -- TIMER ATIVADO
						w_state <= st_led_type_1;
					else
						--DESLIGA O LED
					end if;
					--##################################
				--# FIM ESTADO IDLE
				--# INICIO ESTADO LED TYPE 1
				when st_led_type_1 =>
					o_led_type_1 <= "1";
					w_state <= st_idle;
				--# FIM ESTADO LED TYPE 1
				--# INICIO ESTADO LED TYPE 2
				when st_led_type_2 =>
					o_led_type_2 <= "1";
					w_state <= st_idle;
				--# FIM ESTADO LED TYPE 2
				--# INICIO ESTADO LED TYPE 3
				when st_led_type_3 =>
					o_led_type_3 <= "1";
					w_state <= st_idle;
				--# FIM ESTADO LED TYPE 3
				--# INICIO ESTADO LED SIZE
				when st_led_size =>
					o_led_size <= "1";
					w_state <= st_idle;
				--# FIM ESTADO LED SIZE
				--# INICIO ESTADO LED REPO
				when st_led_repo =>
					o_led_repo <= "1";
					w_state <= st_idle;
				--# FIM ESTADO LED REPO
				--# INICIO ESTADO LED PREPARE
				when st_led_prepare =>
					o_led_prepare <= "1";
					w_state <= st_timer;
				--# FIM ESTADO LED PREPARE
				--# INICIO ESTADO LED RES_AGUA
				when st_led_res_agua =>
					o_led_res_agua <= "1";
					w_state <= st_idle;
				--# FIM ESTADO LED RES_AGUA
				--# INICIO ESTADO TIMER
				when st_timer =>
					if(conv_integer(w_timer_count) = conv_integer(w_timer_total)) then -- TIMER COMPLETOU X SEGUNDS
						o_led_done <= "1";
					else
						w_timer_count <= w_timer_count + 1;
					end if;
					o_led_type_1 <= "1";
					w_state <= st_idle;
				--# FIM ESTADO TIMER
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;	
end behavioral;