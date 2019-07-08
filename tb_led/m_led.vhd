library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity m_led is
	generic (
		t_data 	: INTEGER := 8;
		t_timer 	: INTEGER := 27
	);
	port(
		--- INPUTS
		i_clk 			: in STD_LOGIC;
		i_rst 			: in STD_LOGIC;
		i_data 			: in STD_LOGIC_VECTOR(t_data-1 downto 0);
		i_read 			: in STD_LOGIC;
		--- OUTPUTS
		o_data		: out STD_LOGIC
	);
	
end m_led;

architecture behavioral of m_led is
	-- Internal signals
	type w_state_type is ( st_idle, st_led_start, st_timer);
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	signal w_state : w_state_type;
	
	-- Sinais internos para os contadores de quantidade em binario
	signal w_timer_to_count : STD_LOGIC_VECTOR(t_timer-1 downto 0); -- TIMER COUNT
	signal w_timer 			: STD_LOGIC_VECTOR(t_timer-1 downto 0);
	signal w_timer_seg 		: STD_LOGIC_VECTOR(3 downto 0); -- POSICOES NECESSARIAS PRA CONTA NO MAXIMO 16 SEG
	signal w_data : STD_LOGIC;
begin
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_timer <= (others => '0');
			w_timer_seg <= (others => '0');
			w_timer_to_count <= (others => '0');
			w_data <= '0';
			w_state <= st_idle;
		elsif rising_edge(i_clk) then
			case w_state is
				--# INICIO ESTADO IDLE
				when st_idle =>
					--w_timer_seg <= "1111";
					--w_type_2 <= '1';
					if(i_read = '1') then
						w_state <= st_led_start;
					--elsif(i_read_timer = '1') then
					--w_timer_to_count <= i_data_timer;
					--w_state <= st_timer;
					end if;
				--O_DATA = [t1, t2, t3, size, sugar, repo, temp, prepare]
				when st_led_start =>
--					if(i_data(0) = '1') then
--						o_type_1 <= '1';
--					else
--						o_type_1 <= '0';
--					end if;
--					--------------------------------
--					if(i_data(1) = '1') then
--						o_type_2 <= '1';
--					else
--						o_type_2 <= '0';
--					end if;
--					--------------------------------
--					if(i_data(2) = '1') then
--						o_type_3 <= '1';
--					else
--						o_type_3 <= '0';
--					end if;
--					--------------------------------
--					if(i_data(3) = '1') then
--						o_size <= '1';
--					else
--						o_size <= '0';
--					end if;
--					--------------------------------
--					if(i_data(4) = '1') then
--						o_sugar <= '1';
--					else
--						o_sugar <= '0';
--					end if;
--					--------------------------------
--					if(i_data(5) = '1') then
--						o_repo <= '1';
--					else
--						o_repo <= '0';
--					end if;
--					--------------------------------
--					if(i_data(6) = '1') then
--						o_temp <= '1';
--					else
--						o_temp <= '0';
--					end if;
					if(i_data(7) = '1') then
						w_data <= '1';
					else
						w_data <= '1';
					end if;
					--------------------------------
					w_state <= st_idle;
				--# FIM ESTADO LED TYPE 1
				--# INICIO ESTADO LED TYPE 2
				when st_timer => -- timer testado 22/06
					if(w_timer = "101111101011111000010000000") then
						w_timer_seg <= w_timer_seg + 1;
						w_timer <= (others => '0');
						--o_data  <= "00000010";
					elsif(w_timer_seg = "0100") then -- TIMER COMPLETOU 4 SEGUNDS
						--o_data  <= "00001110";
						w_state <= st_idle;
					else
						w_timer <= w_timer + 1;
						--o_data  <= "00000001";
						--o_timer <= "00000" & w_timer;
					end if;
				--# FIM ESTADO TIMER
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;
	
	--#Enviando sinal pro test_bench
	--o_timer  <= w_timer_seg;
	o_data <= w_data;
end behavioral;