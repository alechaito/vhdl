library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_led is
	generic (
		t_data : INTEGER := 8
	);
end test_led;

architecture behavioral of test_led is

	signal w_clk 		: STD_LOGIC;
	signal w_rst 		: STD_LOGIC;
	
	signal w_i_data 	: STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_i_read 	: STD_LOGIC;
	
	signal w_o_data 	: STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_o_read 	: STD_LOGIC;
	-----------------------------------------------------
	component leds_machine is
		port(
			--- INPUTS
			i_clk 	: in STD_LOGIC;
			i_rst 	: in STD_LOGIC;
			i_data 	: in STD_LOGIC_VECTOR(t_data-1 downto 0);
			i_read 	: in STD_LOGIC;
			--- OUTPUTS
			o_data 	: out STD_LOGIC_VECTOR(t_data-1 downto 0);
			o_read 	: out STD_LOGIC
		);
	end component;
	
begin

	U1: leds_machine
		port map(
			--- INPUTS
			i_clk => w_clk,
			i_rst => w_rst,
			i_data => w_i_data,
			i_read => w_i_read,
			--- OUTPUTS
			o_data => w_o_data,
			o_read => w_o_read	
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
		w_i_read <= '1';
		w_i_data <= "00000001";
		wait for 20 NS;
		w_i_read <= '0';
		wait for 50 NS;
		w_i_read <= '1';
		w_i_data <= "00000010";
		wait for 20 NS;
		w_i_read <= '0';
		wait;
	end process;
	
	
end behavioral;