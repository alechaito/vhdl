library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_led is
	generic (
		t_data : INTEGER := 8
	);
end tb_led;

architecture behavioral of tb_led is

	signal w_clk 		: STD_LOGIC;
	signal w_rst 		: STD_LOGIC;
	
	signal w_read 	: STD_LOGIC;	
	signal w_data 	: STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_out 	: STD_LOGIC;
	
	-----------------------------------------------------
	component m_led is
		port(
			--- INPUTS
			i_clk 			: in STD_LOGIC;
			i_rst 			: in STD_LOGIC;
			i_data 			: in STD_LOGIC_VECTOR(t_data-1 downto 0);
			i_read 			: in STD_LOGIC;
			--- OUTPUTS
			o_data		: out STD_LOGIC
		);
	end component;
	
begin

	U1: m_led
		port map(
			--- INPUTS
			i_clk => w_clk,
			i_rst => w_rst,
			i_data => w_data,
			i_read => w_read,
			--- OUTPUTS
			o_data => w_out
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
		w_data <= "00000000";
		w_read <= '1';
		wait;
	end process;
	
	
end behavioral;