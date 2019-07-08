library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity display is
	generic(
		t_in : integer := 8
	);
	port ( 
	  
		i_clk 				: in  STD_LOGIC;
		i_rst 				: in  STD_LOGIC;

		i_done 				: in STD_LOGIC;
		i_wait 				: in STD_LOGIC;
		i_read 				: in STD_LOGIC;

		o_top_disp_1			: out STD_LOGIC_VECTOR(t_in-1 DOWNTO 0);
		o_top_disp_2			: out STD_LOGIC_VECTOR(t_in-1 DOWNTO 0);
		o_top_disp_3			: out STD_LOGIC_VECTOR(t_in-1 DOWNTO 0);
		o_top_disp_4			: out STD_LOGIC_VECTOR(t_in-1 DOWNTO 0)
	 );
end display;


architecture behavioral of display is

	component button_display_machine is
		port(
			--#signalS
			i_clk 			: in STD_LOGIC;
			i_rst 			: in STD_LOGIC;
			--#INPUTS
			i_done 			: in STD_LOGIC;
			i_wait 			: in STD_LOGIC;
			i_read 			: in STD_LOGIC;
			--#OUTPUTS
			o_disp_1 	: out STD_LOGIC_VECTOR(t_in-1 downto 0);
			o_disp_2 	: out STD_LOGIC_VECTOR(t_in-1 downto 0);
			o_disp_3 	: out STD_LOGIC_VECTOR(t_in-1 downto 0);
			o_disp_4 	: out STD_LOGIC_VECTOR(t_in-1 downto 0)
		);
	end component;
	
	
	component bcd is
		port(
			i_data	: in STD_LOGIC_VECTOR (t_in -1 downto 0);
			o_q    	: out STD_LOGIC_VECTOR (t_in -1 downto 0)
		);
	end component;

	
	signal w_disp_1 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	signal w_disp_2 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	signal w_disp_3 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	signal w_disp_4 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	
	signal w_out_1 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	signal w_out_2 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	signal w_out_3 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	signal w_out_4 	: STD_LOGIC_VECTOR((t_in-1) DOWNTO 0);
	
begin

	--
	-- INSTANCIALIZAÇÃO DA MAQUINA DE ESTADOS.
	--
	U0_M1 : button_display_machine
		port map(
			--#signalS
			i_clk 			=> i_clk,
			i_rst 			=> i_rst,
			--#INPUTS
			i_done 			=> i_done,
			i_wait 			=> i_wait,
			i_read 			=> i_read,
			--#OUTPUTS
			o_disp_1 	=> w_disp_1,
			o_disp_2 	=> w_disp_2,
			o_disp_3 	=> w_disp_3,
			o_disp_4 	=> w_disp_4
		);

	
	--
	-- INSTANCIALIZAÇÃO CONVEROSOR BCD
	--
	
	U2_BCD1: bcd    --bom
		port map(
			i_data	=> w_disp_1,
			o_q   	=> w_out_1
		);
	
	U3_BCD2: bcd    --regular
		port map(
			i_data	=> w_disp_2,
			o_q   	=> w_out_2
		);
		
	U4_BCD3: bcd    --ruim
		port map(
			i_data	=> w_disp_3,
			o_q   	=> w_out_3
		);
	
	U4_BCD4: bcd    --ruim
		port map(
			i_data	=> w_disp_4,
			o_q   	=> w_out_4
		);
		
	o_top_disp_1 <= w_out_1;
	o_top_disp_1 <= w_out_2;
	o_top_disp_1 <= w_out_3;
	o_top_disp_1 <= w_out_4;
	
end Behavioral;