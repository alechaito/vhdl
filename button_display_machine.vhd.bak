library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity button_display_machine is
	generic (
		p_disp : INTEGER := 8
	);
	port(
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_done : in STD_LOGIC;
		i_wait : in STD_LOGIC;
		i_read : in STD_LOGIC;
		o_disp_1 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
		o_disp_2 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
		o_disp_3 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
		o_disp_4 : out STD_LOGIC_VECTOR(p_disp-1 downto 0)
	);
end button_display_machine;

architecture behavioral of button_display_machine is
	-- Internal signals
	----------------------------------------------------
	type w_state_type is (st_idle, st_disp_wait, st_disp_done);
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	
	signal w_state : w_state_type;
	-----------------------------------------------------
	-- BCD DEVICE
	component bcd is
		port (
			i_data  : in STD_LOGIC_VECTOR(p_disp-1 downto 0); 
			o_q  : out STD_LOGIC_VECTOR(p_disp-1 downto 0)
		);
	end component;
	-- TOP_LOGIC DEVICE WITH 3 DISPLAY TO COMPLETE 4
	
begin
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_state <= st_idle;
			o_disp_1 <= (others => '0');
			o_disp_2 <= (others => '0');
			o_disp_3 <= (others => '0');
			o_disp_4 <= (others => '0');
		elsif rising_edge(i_clk) then
			case w_state is
				when st_idle =>
					--# DONE DISPLAY
					if(i_done = '1' and i_read = '1') then
						w_state <= st_disp_done;
					elsif(i_done = '0' and i_read = '1') then
						o_disp_1 <= (others => '0');
						o_disp_2 <= (others => '0');
						o_disp_3 <= (others => '0');
						o_disp_4 <= (others => '0');
					elsif(i_wait = '0' and i_read = '1') then
						o_disp_1 <= (others => '0');
						o_disp_2 <= (others => '0');
						o_disp_3 <= (others => '0');
						o_disp_4 <= (others => '0');
					--# WAIT DISPLAY
					elsif(i_wait = '1' and i_read = '1') then
						w_state <= st_disp_wait;
					end if;
				when st_disp_done =>
					o_disp_1 <= "00000000";
					o_disp_2 <= "00000001";
					o_disp_3 <= "00000010";
					o_disp_4 <= "00000011";
					w_state <= st_idle;
				when st_disp_wait =>
					o_disp_1 <= "11111111";
					o_disp_2 <= "11111111";
					o_disp_3 <= "11111111";
					o_disp_4 <= "11111111";
					w_state <= st_idle;
				when others =>
					w_state <= st_idle;
				end case;
		end if;
	end process UU1;
	
end behavioral;