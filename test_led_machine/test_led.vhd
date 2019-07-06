library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_led is
	generic (
		t_data : INTEGER := 8;
		t_timer 	: INTEGER := 27
	);
end test_led;

architecture behavioral of test_led is

	signal w_clk 				: STD_LOGIC;
	signal w_rst 				: STD_LOGIC;
	signal w_test				: STD_LOGIC;
	
	signal w_i_data 			: STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_i_read 			: STD_LOGIC;
	
	--signal w_type_1 		: STD_LOGIC;
	signal w_type_2 		: STD_LOGIC;
	signal w_type_3 		: STD_LOGIC;
	signal w_size 			: STD_LOGIC;
	signal w_sugar	 		: STD_LOGIC;
	signal w_temp	 		: STD_LOGIC;
	signal w_repo			: STD_LOGIC;
	signal w_prepare			: STD_LOGIC;
	signal w_done			: STD_LOGIC;
	-----------------------------------------------------
	component leds_machine is
		port(
			--- INPUTS
			i_clk 				: in STD_LOGIC;
			i_rst 				: in STD_LOGIC;
			
			i_data 				: in STD_LOGIC_VECTOR(t_data-1 downto 0);
			i_read 				: in STD_LOGIC;
			--- OUTPUTS
			o_type_1 			: out STD_LOGIC;
			o_type_2 			: out STD_LOGIC;
			o_type_3 			: out STD_LOGIC;
			o_size 				: out STD_LOGIC;
			o_sugar	 			: out STD_LOGIC;
			o_temp	 			: out STD_LOGIC;
			o_repo				: out STD_LOGIC;
			o_prepare			: out STD_LOGIC;
			o_done				: out STD_LOGIC
		);
	end component;
	
begin

	U1: leds_machine
		port map(
			--- INPUTS
			i_clk 		=> w_clk,
			i_rst 		=> w_rst,
			
			i_data 		=> w_i_data,
			i_read 		=> w_i_read,
			o_type_1 	=> w_test,
			--- OUTPUTS
			
			--o_type_1 => w_type_1,
			--o_type_2 => w_type_2,
			o_type_3 	=> w_type_3,
			o_size 		=> w_size,
			o_sugar		=> w_sugar,
			o_temp		=> w_temp,
			o_repo		=> w_repo,
			o_prepare	=> w_prepare,
			o_done		=> w_done
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
		w_i_data <= "10011001";
		w_i_read <= '1';
		--w_type_1 <= '0';
		wait for 20 NS;
		--w_i_read_timer <= '1';
		--w_i_data_timer <= "00000001";
	end process;
	
	
end behavioral;