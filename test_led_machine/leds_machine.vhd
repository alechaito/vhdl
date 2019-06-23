library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity leds_machine is
	generic (
		t_data 	: INTEGER := 8;
		t_timer 	: INTEGER := 27
	);
	port(
		--- INPUTS
		i_clk 			: in STD_LOGIC;
		i_rst 			: in STD_LOGIC;
		i_data 			: in STD_LOGIC_VECTOR(t_data-1 downto 0);
		i_data_timer  	: in STD_LOGIC_VECTOR(t_timer-1 downto 0);
		i_read_timer 	: in STD_LOGIC;
		i_read 			: in STD_LOGIC;
		--- OUTPUTS
		o_data 			: out STD_LOGIC_VECTOR(t_data-1 downto 0);
		o_timer			: out STD_LOGIC_VECTOR(3 downto 0);
		o_read 			: out STD_LOGIC
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
	signal w_timer_to_count : STD_LOGIC_VECTOR(t_timer-1 downto 0); --#TIMER COUNT
	signal w_timer : STD_LOGIC_VECTOR(t_timer-1 downto 0);
	signal w_timer_seg : STD_LOGIC_VECTOR(3 downto 0); -- POSICOES NECESSARIAS PRA CONTA NO MAXIMO 16 SEG
	-----------------------------------------------------
begin
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_state <= st_idle;
			w_timer <= (others => '0');
			w_timer_seg <= (others => '0');
			w_timer_to_count <= (others => '0');
		elsif rising_edge(i_clk) then
			case w_state is
				--# INICIO ESTADO IDLE
				when st_idle =>
					if(i_read = '1') then
						w_state <= st_led_start;
					elsif(i_read_timer = '1') then
						--w_timer_to_count <= i_data_timer;
						w_state <= st_timer;
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
				when st_timer => -- timer testado 22/06
					if(w_timer = "101111101011111000010000000") then
						w_timer_seg <= w_timer_seg + 1;
						w_timer <= (others => '0');
						o_data  <= "00000010";
					elsif(w_timer_seg = "0100") then -- TIMER COMPLETOU 4 SEGUNDS
						o_data  <= "00001110";
						w_state <= st_idle;
					else
						w_timer <= w_timer + 1;
						o_data  <= "00000001";
						--o_timer <= "00000" & w_timer;
					end if;
				--# FIM ESTADO TIMER
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;
	
	--#Enviando sinal pro test_bench
	o_timer  <= w_timer_seg;
	
end behavioral;