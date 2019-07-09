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
		i_read 			: in STD_LOGIC;
		--- OUTPUTS
		o_type_1 		: out STD_LOGIC;
		o_type_2 		: out STD_LOGIC;
		o_type_3 		: out STD_LOGIC;
		o_size 			: out STD_LOGIC;
		o_sugar	 		: out STD_LOGIC;
		o_temp	 		: out STD_LOGIC;
		o_repo			: out STD_LOGIC;
		o_prepare		: out STD_LOGIC;
		o_done			: out STD_LOGIC
	);
	
end leds_machine;

architecture behavioral of leds_machine is
	-- Internal signals
	type w_state_type is ( st_idle, st_led_start, st_timer, st_t_done);
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	signal w_state : w_state_type;
	
	-- Sinais internos para os contadores de quantidade em binario
	signal w_timer 		: STD_LOGIC_VECTOR(t_timer-1 downto 0);
	signal w_t_seg 		: STD_LOGIC_VECTOR(3 downto 0); -- POSICOES NECESSARIAS PRA CONTA NO MAXIMO 16 SEG
	signal w_t_ms			: STD_LOGIC_VECTOR(3 downto 0);
begin
	
	UU1 : process(i_clk, i_rst)
		variable v_count : STD_LOGIC_VECTOR(3 downto 0);
		variable v_checked : INTEGER;
	begin
		if (i_rst = '0') then
			w_timer <= (others => '0');
			w_t_seg <= (others => '0');
			w_state <= st_idle;
		elsif rising_edge(i_clk) then
			case w_state is
				--# INICIO ESTADO IDLE
				when st_idle =>
					if(i_read = '1' and v_count = "0000") then
						w_state <= st_led_start;
					elsif(i_data(7) = '1' and v_count >= "0000") then
						w_state <= st_timer;
					end if;
				--O_DATA = [t1, t2, t3, size, sugar, repo, temp, prepare]
				when st_led_start =>
					v_count := "0000";
					if(i_data(0) = '1') then
						v_count := v_count + 1;
						o_type_1 <= '1';
					else
						o_type_1 <= '0';
					end if;
					--------------------------------
					if(i_data(1) = '1') then
						v_count := v_count + 2;
						o_type_2 <= '1';
					else
						o_type_2 <= '0';
					end if;
					--------------------------------
					if(i_data(2) = '1') then
						v_count := v_count + 3;
						o_type_3 <= '1';
					else
						o_type_3 <= '0';
					end if;
					--------------------------------
					if(i_data(3) = '1') then
						v_count := v_count + 10;
						o_size <= '1';
					else
						v_count := v_count + 5;
						o_size <= '0';
					end if;
					--------------------------------
					if(i_data(4) = '1') then
						v_count := v_count + 1;
						o_sugar <= '1';
					else
						o_sugar <= '0';
					end if;
					--------------------------------
					if(i_data(5) = '1') then
						o_repo <= '1';
					else
						o_repo <= '0';
					end if;
					--------------------------------
					if(i_data(6) = '1') then
						o_temp <= '1';
					else
						o_temp <= '0';
					end if;
					if(i_data(7) = '1') then
						o_prepare <= '1';
					else
						o_prepare <= '0';
					end if;
					--------------------------------
					w_state <= st_idle;
				--# FIM ESTADO LED TYPE 1
				--# INICIO ESTADO LED TYPE 2
				when st_timer =>
					if(w_timer = "101111101011111000010000000") then
						w_t_seg <= w_t_seg + 1;
						w_timer <= (others => '0');
					elsif(w_t_seg = v_count) then
						o_done <= '1';
						v_count := "0000";
						w_t_seg <= (others => '0');
						w_timer <= (others => '0');
						w_state <= st_t_done;
					else
						w_timer <= w_timer + 1;
					end if;
				--# FIM ESTADO TIMER
				when st_t_done =>
					-- Completou 250 ms
					if(w_timer = "101111101011110000100000") then
						o_done <= '1';
						w_t_ms <= w_t_ms + 1;
						w_timer <= (others => '0');
					else
						o_done <= '0';
					end if;
					
					-- Completou 1 sec
					if(w_t_ms = "0100") then -- 4 x 250ms = 1 sec
						w_t_seg <= w_t_seg + 1;
						w_t_ms <= (others => '0');
					elsif(w_t_seg = "0101") then -- TIMER COMPLETOU 5 SEGUNDOS DE LED PISCANTE
						o_done <= '0';
						w_t_seg <= (others => '0');
						w_timer <= (others => '0');
						w_state <= st_idle;
					end if;
					
					w_timer <= w_timer + 1;
					
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;
end behavioral;