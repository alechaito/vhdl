library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity button_display_machine is
	generic (
		p_disp : INTEGER := 8
	);
	Port(
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_type_1 : in STD_LOGIC;
		i_type_2 : in STD_LOGIC;
		i_type_3 : in STD_LOGIC;
		i_done : in STD_LOGIC;
		i_prepare : in STD_LOGIC;
		o_display_1 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
		o_display_2 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
		o_display_3 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
		o_display_4 : out STD_LOGIC_VECTOR(p_disp-1 downto 0);
	);
end button_display_machine;

architecture behavioral of button_display_machine is
	-- Internal signals
	----------------------------------------------------
type w_state_type is (st_idle, st_disp_wait, st_disp_done);
	attribute syn_encoding : string;
	attribute syn_encoding of w_state_type : type is "safe";
	
	signal w_state : w_state_type;
	signal w_disp_wait_1 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_wait_2 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_wait_3 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_wait_4 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	
	signal w_disp_done_1 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_done_2 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_done_3 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_done_4 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	-----------------------------------------------------
	-- BCD DEVICE
	component display is
	generic (
				p_in : INTEGER := 10;
				p_out : INTEGER := 7
				);
	port (
		i_data  : in STD_LOGIC_VECTOR(p_in-1 downto 0); 
		o_q  : out STD_LOGIC_VECTOR(p_out-1 downto 0)
	);
	end component;
	-- TOP_LOGIC DEVICE WITH 3 DISPLAY TO COMPLETE 4
	
begin
	
	UU1 : process(i_clk, i_rst)
	begin
		if (i_rst = '0') then
			w_state <= st_idle;
			w_disp_done <= (OTHERS => '0'); 
			w_disp_wait  <= (OTHERS => '0'); -- zerar vetor inteiro de 28
		elsif rising_edge(i_clk) then
			case w_state is
				when st_disp_wait =>
					if(i_type_1 = '1' or i_type_2 = '1' or i_type_3 = '1') then
						if(i_prepare = '1') then
							w_state <= st_disp_wait;
							w_disp_wait_1 = "11111111";
							w_disp_wait_2 = "11111111";
							w_disp_wait_3 = "11111111";
							w_disp_wait_4 = "11111111";
						end if;
					end if;
				when st_disp_wait =>
					if(i_type_1 = '1' or i_type_2 = '1' or i_type_3 = '1') then
						if(i_done = '1') then
							w_state <= st_disp_wait;
							w_disp_wait_1 = "11111111";
							w_disp_wait_2 = "11111111";
							w_disp_wait_3 = "11111111";
							w_disp_wait_4 = "11111111";
						end if;
					end if;
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