library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity leds_machine is
	generic (
		t_data : INTEGER := 8
	);
	port(
		--- INPUTS
		i_clk 		: in STD_LOGIC;
		i_rst 		: in STD_LOGIC;
		i_data 		: in STD_LOGIC_VECTOR(t_data-1 downto 0);
		i_read 		: in STD_LOGIC;
		--- OUTPUTS
		o_data 		: out STD_LOGIC_VECTOR(t_data-1 downto 0);
		o_read 		: out STD_LOGIC
	);
end leds_machine;

architecture behavioral of leds_machine is
	-- Internal signals
	----------------------------------------------------
	type w_state_type is ( st_idle, st_led_start, st_timer);
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
					if(i_read = '1') then
						w_state <= st_led_start;
					end if;
				when st_led_start =>
					if(i_data(0) = '1') then
						o_data <= "11001111";
					elsif(i_data(1) = '1') then
						o_data <= "00000110";
					end if;
					w_state <= st_idle;
				--# FIM ESTADO LED TYPE 1
				--# INICIO ESTADO LED TYPE 2
				when st_timer =>
					--if(conv_integer(w_timer_count) = conv_integer(w_timer_total)) then -- TIMER COMPLETOU X SEGUNDS
						--o_led_done <= "1";
					--else
						--w_timer_count <= w_timer_count + 1;
					--end if;
					--o_led_type_1 <= "1";
					w_state <= st_idle;
				--# FIM ESTADO TIMER
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;	
	
end behavioral;