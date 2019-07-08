library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity m_coffee is
	generic (
		t_data	: INTEGER := 8;
		t_timer 	: INTEGER := 27;
		t_res 	: integer := 4
	);
	Port(
		-- INPUTS
		i_clk 			: in STD_LOGIC;
		i_rst 			: in STD_LOGIC;
		-- TYPE COFFEE
		i_type_1 		: in STD_LOGIC;
		i_type_2 		: in STD_LOGIC;
		i_type_3 		: in STD_LOGIC;
		-- OPTIONS
		i_size 			: in STD_LOGIC;
		i_sugar 			: in STD_LOGIC;
		-- ACTIONS
		i_prepare 		: in STD_LOGIC;
		i_temp 			: in STD_LOGIC;
		-- LEDS
		o_type_1 		: out STD_LOGIC;
		o_type_2 		: out STD_LOGIC;
		o_type_3 		: out STD_LOGIC;
		o_size 			: out STD_LOGIC;
		o_sugar	 		: out STD_LOGIC;
		o_temp	 		: out STD_LOGIC;
		o_repo			: out STD_LOGIC;
		o_prepare		: out STD_LOGIC;
		o_done			: out STD_LOGIC;
		-- DISPLAYS
		o_disp_1 		: out STD_LOGIC_VECTOR(t_data-1 downto 0);
		o_disp_2 		: out STD_LOGIC_VECTOR(t_data-1 downto 0);
		o_disp_3 		: out STD_LOGIC_VECTOR(t_data-1 downto 0);
		o_disp_4 		: out STD_LOGIC_VECTOR(t_data-1 downto 0)
	);
end m_coffee;

architecture behavioral of m_coffee is
	-- FIRST COMPONENT
	component input_machine is
		Port(
			i_clk 			: in STD_LOGIC;
			i_rst 			: in STD_LOGIC;
			
			i_type_1 		: in STD_LOGIC;
			i_type_2 		: in STD_LOGIC;
			i_type_3 		: in STD_LOGIC;
			
			i_size 			: in STD_LOGIC;
			i_sugar 			: in STD_LOGIC;
			
			i_prepare 		: in STD_LOGIC;
			i_temp 			: in STD_LOGIC;
			i_done			: in STD_LOGIC;
			--#OUTPUTS
			o_data 			: out STD_LOGIC_VECTOR(t_data-1 downto 0);
			o_read 			: out STD_LOGIC
		);
	end component;
	------------------------------------------------
	component leds_machine is
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
	end component;
	------------------------------------------------
	component button_display_machine is
		port(
			i_clk : in STD_LOGIC;
			i_rst : in STD_LOGIC;
			i_done : in STD_LOGIC;
			i_wait : in STD_LOGIC;
			o_disp_1 : out STD_LOGIC_VECTOR(t_data-1 downto 0);
			o_disp_2 : out STD_LOGIC_VECTOR(t_data-1 downto 0);
			o_disp_3 : out STD_LOGIC_VECTOR(t_data-1 downto 0);
			o_disp_4 : out STD_LOGIC_VECTOR(t_data-1 downto 0)
		);
	end component;
	------------------------------
	--------------------------------------------
	-- Sinais Internos
	
	-- SIGNAIS FOR DISP MACHINE
	signal w_disp_1 : STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_disp_2 : STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_disp_3 : STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_disp_4 : STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_wait : STD_LOGIC;
	signal w_read : STD_LOGIC;
	------------------------------
	-- SIGNALS FOR LED	
	signal w_repo				: STD_LOGIC;
	signal w_done				: STD_LOGIC;
	--------------------------------
	-- Signals Input Machine
	signal w_type1 		: STD_LOGIC;	
	signal w_type2 		: STD_LOGIC;
	signal w_type3 		: STD_LOGIC;
			
	signal w_size 			: STD_LOGIC;
	signal w_sugar 		: STD_LOGIC;
			
	signal w_prepare 		: STD_LOGIC;
	signal w_temp 			: STD_LOGIC;	
	--#OUTPUTS
	signal w_data_input 			: STD_LOGIC_VECTOR(t_data-1 downto 0);
	signal w_read_input 		: STD_LOGIC;
begin
	---------------------------------
	U1: input_machine
		port map(
			i_clk => i_clk,
			i_rst => i_rst,
			
			i_type_1 	=> i_type_1,
			i_type_2 	=> i_type_2,
			i_type_3 	=> i_type_3,
			
			i_size 		=> i_size,
			i_sugar 		=> i_sugar,
			
			i_prepare 	=> i_prepare,
			i_temp 		=> i_temp,
			i_done		=> w_done,
			--#OUTPUTS
			o_data 		=> w_data_input,
			o_read		=> w_read_input
		);
	-----------------------------------
	U2: leds_machine
		port map(
			--- INPUTS
			i_clk 		=> i_clk,
			i_rst 		=> i_rst,
			
			i_data 		=> w_data_input,
			i_read 		=> w_read_input,
			--- OUTPUTS
			
			o_type_1 	=> o_type_1,
			o_type_2 	=> o_type_2,
			o_type_3 	=> o_type_3,
			o_size 		=> o_size,
			o_sugar		=> o_sugar,
			o_temp		=> o_temp,
			o_repo		=> o_repo,
			o_prepare	=> w_prepare,
			o_done		=> w_done
		);
	-----------------------------------
	U3: button_display_machine
		port map(
			i_clk => i_clk,
			i_rst => i_rst,
			i_done => w_done,
			i_wait => w_prepare,
			o_disp_1 => o_disp_1,
			o_disp_2 => o_disp_2,
			o_disp_3 => o_disp_3,
			o_disp_4 => o_disp_4
		);
	
	o_done 		<= w_done;
	o_prepare 	<= w_prepare;
	
end behavioral;