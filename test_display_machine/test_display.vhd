library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_display is
	generic (
		p_disp : INTEGER := 8
	);
end test_display;

architecture behavioral of test_display is

	signal w_disp_1 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_2 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_3 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_disp_4 : STD_LOGIC_VECTOR(p_disp-1 downto 0);
	signal w_clk : STD_LOGIC;
	signal w_rst : STD_LOGIC;
	signal w_done : STD_LOGIC;
	signal w_wait : STD_LOGIC;
	signal w_read : STD_LOGIC;
	-----------------------------------------------------
	component button_display_machine is
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
	end component;
	
begin

	U1: button_display_machine
	port map(
		i_clk => w_clk,
		i_rst => w_rst,
		i_done => w_done,
		i_wait => w_wait,
		i_read => w_read,
		o_disp_1 => w_disp_1,
		o_disp_2 => w_disp_2,
		o_disp_3 => w_disp_3,
		o_disp_4 => w_disp_4
	);

	process 
		begin 
			w_clk <= '0';
			wait for 10 NS;
			w_clk <= '1';
			wait for 10 NS;
	end process;	
	
	process 
	begin 
		w_rst <= '0';
		wait for 50 NS;
		w_rst <= '1';
		wait;
	end process;
	
	process begin 
		wait for 100 NS;
		w_read <= '1';
		w_done <= '1';
		wait for 20 NS;
		w_read <= '0';
		wait for 50 NS;
		w_read <= '1';
		w_done <= '0';
		wait for 20 NS;
		w_read <= '0';
		wait;
	end process;
	
	
end behavioral;