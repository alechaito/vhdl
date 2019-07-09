library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_input is
	generic (
		t_data : INTEGER := 8
	);
end test_input;

architecture behavioral of test_input is

	signal w_clk 		: STD_LOGIC;
	signal w_rst 		: STD_LOGIC;
	
	signal w_type1 	: STD_LOGIC;	
	signal w_type2 	: STD_LOGIC;
	signal w_type3 	: STD_LOGIC;
			
	signal w_size 		: STD_LOGIC;
	signal w_sugar 	: STD_LOGIC;
			
	signal w_prepare 	: STD_LOGIC;
	signal w_temp 		: STD_LOGIC;
	signal w_done 		: STD_LOGIC;		
	--#OUTPUTS
	signal w_data 		: STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_read 		: STD_LOGIC;
			
	signal w_res1 		: STD_LOGIC_VECTOR(3 downto 0);
	signal w_res2 		: STD_LOGIC_VECTOR(3 downto 0);
	signal w_res3 		: STD_LOGIC_VECTOR(3 downto 0);
	signal w_res4 		: STD_LOGIC_VECTOR(3 downto 0);
	-----------------------------------------------------
	component input_machine is
		port(
			i_clk : in STD_LOGIC;
			i_rst : in STD_LOGIC;
			
			i_type_1 	: in STD_LOGIC;
			i_type_2 	: in STD_LOGIC;
			i_type_3 	: in STD_LOGIC;
			
			i_size 		: in STD_LOGIC;
			i_sugar 		: in STD_LOGIC;
			
			i_prepare 	: in STD_LOGIC;
			i_temp 		: in STD_LOGIC;
			i_done		: in STD_LOGIC;
			--#OUTPUTS
			o_data 		: out STD_LOGIC_VECTOR(t_data-1 downto 0);
			o_read 		: out STD_LOGIC
		);
	end component;
	
begin

	U1: input_machine
		port map(
			i_clk => w_clk,
			i_rst => w_rst,
			
			i_type_1 	=> w_type1,
			i_type_2 	=> w_type2,
			i_type_3 	=> w_type3,
			
			i_size 		=> w_size,
			i_sugar 		=> w_sugar,
			
			i_prepare 	=> w_prepare,
			i_temp 		=> w_temp,
			i_done		=> w_done,
			--#OUTPUTS
			o_data 		=> w_data,
			o_read		=> w_read
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
		w_temp <= '0';
		--w_done <= '1';
		wait for 20 NS;
		w_type1 <= '1';
		w_done <= '1';
		wait for 20 NS;
		w_sugar <= '0';
		wait for 20 NS;
		w_size <= '0';
		wait for 20 NS;
		w_prepare <= '1';
		wait for 300 NS;
		w_done <= '0';
		wait;
	end process;
	
	
end behavioral;