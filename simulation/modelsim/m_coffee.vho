-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/08/2019 23:47:42"

-- 
-- Device: Altera EP3C40F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m_coffee IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_type_1 : IN std_logic;
	i_type_2 : IN std_logic;
	i_type_3 : IN std_logic;
	i_size : IN std_logic;
	i_sugar : IN std_logic;
	i_prepare : IN std_logic;
	i_temp : IN std_logic;
	o_type_1 : BUFFER std_logic;
	o_type_2 : BUFFER std_logic;
	o_type_3 : BUFFER std_logic;
	o_size : BUFFER std_logic;
	o_sugar : BUFFER std_logic;
	o_temp : BUFFER std_logic;
	o_repo : BUFFER std_logic;
	o_prepare : BUFFER std_logic;
	o_done : BUFFER std_logic;
	o_disp_1 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_disp_2 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_disp_3 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_disp_4 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END m_coffee;

-- Design Ports Information
-- o_type_1	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_type_2	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_type_3	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_size	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sugar	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_temp	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_repo	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_prepare	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_done	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[4]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[7]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[4]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_prepare	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_temp	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_type_1	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_type_2	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_type_3	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_size	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sugar	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m_coffee IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rst : std_logic;
SIGNAL ww_i_type_1 : std_logic;
SIGNAL ww_i_type_2 : std_logic;
SIGNAL ww_i_type_3 : std_logic;
SIGNAL ww_i_size : std_logic;
SIGNAL ww_i_sugar : std_logic;
SIGNAL ww_i_prepare : std_logic;
SIGNAL ww_i_temp : std_logic;
SIGNAL ww_o_type_1 : std_logic;
SIGNAL ww_o_type_2 : std_logic;
SIGNAL ww_o_type_3 : std_logic;
SIGNAL ww_o_size : std_logic;
SIGNAL ww_o_sugar : std_logic;
SIGNAL ww_o_temp : std_logic;
SIGNAL ww_o_repo : std_logic;
SIGNAL ww_o_prepare : std_logic;
SIGNAL ww_o_done : std_logic;
SIGNAL ww_o_disp_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_disp_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_disp_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_disp_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_type_1~output_o\ : std_logic;
SIGNAL \o_type_2~output_o\ : std_logic;
SIGNAL \o_type_3~output_o\ : std_logic;
SIGNAL \o_size~output_o\ : std_logic;
SIGNAL \o_sugar~output_o\ : std_logic;
SIGNAL \o_temp~output_o\ : std_logic;
SIGNAL \o_repo~output_o\ : std_logic;
SIGNAL \o_prepare~output_o\ : std_logic;
SIGNAL \o_done~output_o\ : std_logic;
SIGNAL \o_disp_1[0]~output_o\ : std_logic;
SIGNAL \o_disp_1[1]~output_o\ : std_logic;
SIGNAL \o_disp_1[2]~output_o\ : std_logic;
SIGNAL \o_disp_1[3]~output_o\ : std_logic;
SIGNAL \o_disp_1[4]~output_o\ : std_logic;
SIGNAL \o_disp_1[5]~output_o\ : std_logic;
SIGNAL \o_disp_1[6]~output_o\ : std_logic;
SIGNAL \o_disp_1[7]~output_o\ : std_logic;
SIGNAL \o_disp_2[0]~output_o\ : std_logic;
SIGNAL \o_disp_2[1]~output_o\ : std_logic;
SIGNAL \o_disp_2[2]~output_o\ : std_logic;
SIGNAL \o_disp_2[3]~output_o\ : std_logic;
SIGNAL \o_disp_2[4]~output_o\ : std_logic;
SIGNAL \o_disp_2[5]~output_o\ : std_logic;
SIGNAL \o_disp_2[6]~output_o\ : std_logic;
SIGNAL \o_disp_2[7]~output_o\ : std_logic;
SIGNAL \o_disp_3[0]~output_o\ : std_logic;
SIGNAL \o_disp_3[1]~output_o\ : std_logic;
SIGNAL \o_disp_3[2]~output_o\ : std_logic;
SIGNAL \o_disp_3[3]~output_o\ : std_logic;
SIGNAL \o_disp_3[4]~output_o\ : std_logic;
SIGNAL \o_disp_3[5]~output_o\ : std_logic;
SIGNAL \o_disp_3[6]~output_o\ : std_logic;
SIGNAL \o_disp_3[7]~output_o\ : std_logic;
SIGNAL \o_disp_4[0]~output_o\ : std_logic;
SIGNAL \o_disp_4[1]~output_o\ : std_logic;
SIGNAL \o_disp_4[2]~output_o\ : std_logic;
SIGNAL \o_disp_4[3]~output_o\ : std_logic;
SIGNAL \o_disp_4[4]~output_o\ : std_logic;
SIGNAL \o_disp_4[5]~output_o\ : std_logic;
SIGNAL \o_disp_4[6]~output_o\ : std_logic;
SIGNAL \o_disp_4[7]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_prepare~input_o\ : std_logic;
SIGNAL \i_type_3~input_o\ : std_logic;
SIGNAL \i_type_1~input_o\ : std_logic;
SIGNAL \i_type_2~input_o\ : std_logic;
SIGNAL \U1|Selector99~4_combout\ : std_logic;
SIGNAL \i_temp~input_o\ : std_logic;
SIGNAL \U1|Selector99~7_combout\ : std_logic;
SIGNAL \i_size~input_o\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~1_combout\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~q\ : std_logic;
SIGNAL \U1|o_data[3]~feeder_combout\ : std_logic;
SIGNAL \i_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Selector31~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_type[1]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_type[1]~q\ : std_logic;
SIGNAL \U1|Selector32~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_type[0]~q\ : std_logic;
SIGNAL \U1|o_data[1]~1_combout\ : std_logic;
SIGNAL \U1|o_data[2]~2_combout\ : std_logic;
SIGNAL \U2|v_count~2_combout\ : std_logic;
SIGNAL \U2|v_count~3_combout\ : std_logic;
SIGNAL \U2|v_count~4_combout\ : std_logic;
SIGNAL \U2|v_count~0_combout\ : std_logic;
SIGNAL \U2|v_count~1_combout\ : std_logic;
SIGNAL \i_sugar~input_o\ : std_logic;
SIGNAL \U1|UU1:v_sugar[0]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_sugar[0]~1_combout\ : std_logic;
SIGNAL \U1|UU1:v_sugar[0]~q\ : std_logic;
SIGNAL \U1|o_data[4]~feeder_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[0]~2\ : std_logic;
SIGNAL \U2|UU1:v_count[1]~2\ : std_logic;
SIGNAL \U2|UU1:v_count[2]~2\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~3_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[1]~1_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|w_state~13_combout\ : std_logic;
SIGNAL \U2|w_state~14_combout\ : std_logic;
SIGNAL \U2|w_state.st_led_start~q\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|w_state~18_combout\ : std_logic;
SIGNAL \U2|w_state.st_idle~q\ : std_logic;
SIGNAL \U2|w_state.st_idle~0_combout\ : std_logic;
SIGNAL \U2|w_timer[0]~27_combout\ : std_logic;
SIGNAL \U2|w_timer[17]~63\ : std_logic;
SIGNAL \U2|w_timer[18]~64_combout\ : std_logic;
SIGNAL \U2|o_done~1_combout\ : std_logic;
SIGNAL \U2|w_timer[18]~65\ : std_logic;
SIGNAL \U2|w_timer[19]~66_combout\ : std_logic;
SIGNAL \U2|w_timer[19]~67\ : std_logic;
SIGNAL \U2|w_timer[20]~68_combout\ : std_logic;
SIGNAL \U2|w_timer[20]~69\ : std_logic;
SIGNAL \U2|w_timer[21]~70_combout\ : std_logic;
SIGNAL \U2|w_timer[21]~71\ : std_logic;
SIGNAL \U2|w_timer[22]~72_combout\ : std_logic;
SIGNAL \U2|w_timer[22]~73\ : std_logic;
SIGNAL \U2|w_timer[23]~74_combout\ : std_logic;
SIGNAL \U2|w_timer[23]~75\ : std_logic;
SIGNAL \U2|w_timer[24]~76_combout\ : std_logic;
SIGNAL \U2|w_timer[24]~77\ : std_logic;
SIGNAL \U2|w_timer[25]~78_combout\ : std_logic;
SIGNAL \U2|w_timer[25]~79\ : std_logic;
SIGNAL \U2|w_timer[26]~80_combout\ : std_logic;
SIGNAL \U2|Equal1~7_combout\ : std_logic;
SIGNAL \U2|Equal1~6_combout\ : std_logic;
SIGNAL \U2|Equal1~5_combout\ : std_logic;
SIGNAL \U2|Equal1~2_combout\ : std_logic;
SIGNAL \U2|Equal1~3_combout\ : std_logic;
SIGNAL \U2|Equal1~1_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|Equal1~4_combout\ : std_logic;
SIGNAL \U2|Equal1~8_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[0]~1_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[0]~q\ : std_logic;
SIGNAL \U2|Add4~0_combout\ : std_logic;
SIGNAL \U2|w_t_seg[0]~12_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~6_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~13_combout\ : std_logic;
SIGNAL \U2|w_t_seg[2]~9_combout\ : std_logic;
SIGNAL \U2|Add4~1_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~11_combout\ : std_logic;
SIGNAL \U2|o_done~0_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~7_combout\ : std_logic;
SIGNAL \U2|w_t_seg[0]~8_combout\ : std_logic;
SIGNAL \U2|w_t_seg[1]~10_combout\ : std_logic;
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|w_timer[23]~43_combout\ : std_logic;
SIGNAL \U2|w_timer[0]~28\ : std_logic;
SIGNAL \U2|w_timer[1]~29_combout\ : std_logic;
SIGNAL \U2|w_timer[1]~30\ : std_logic;
SIGNAL \U2|w_timer[2]~31_combout\ : std_logic;
SIGNAL \U2|w_timer[2]~32\ : std_logic;
SIGNAL \U2|w_timer[3]~33_combout\ : std_logic;
SIGNAL \U2|w_timer[3]~34\ : std_logic;
SIGNAL \U2|w_timer[4]~35_combout\ : std_logic;
SIGNAL \U2|w_timer[4]~36\ : std_logic;
SIGNAL \U2|w_timer[5]~37_combout\ : std_logic;
SIGNAL \U2|w_timer[5]~38\ : std_logic;
SIGNAL \U2|w_timer[6]~39_combout\ : std_logic;
SIGNAL \U2|w_timer[6]~40\ : std_logic;
SIGNAL \U2|w_timer[7]~41_combout\ : std_logic;
SIGNAL \U2|w_timer[7]~42\ : std_logic;
SIGNAL \U2|w_timer[8]~44_combout\ : std_logic;
SIGNAL \U2|w_timer[8]~45\ : std_logic;
SIGNAL \U2|w_timer[9]~46_combout\ : std_logic;
SIGNAL \U2|w_timer[9]~47\ : std_logic;
SIGNAL \U2|w_timer[10]~48_combout\ : std_logic;
SIGNAL \U2|w_timer[10]~49\ : std_logic;
SIGNAL \U2|w_timer[11]~50_combout\ : std_logic;
SIGNAL \U2|w_timer[11]~51\ : std_logic;
SIGNAL \U2|w_timer[12]~52_combout\ : std_logic;
SIGNAL \U2|w_timer[12]~53\ : std_logic;
SIGNAL \U2|w_timer[13]~54_combout\ : std_logic;
SIGNAL \U2|w_timer[13]~55\ : std_logic;
SIGNAL \U2|w_timer[14]~56_combout\ : std_logic;
SIGNAL \U2|w_timer[14]~57\ : std_logic;
SIGNAL \U2|w_timer[15]~58_combout\ : std_logic;
SIGNAL \U2|w_timer[15]~59\ : std_logic;
SIGNAL \U2|w_timer[16]~60_combout\ : std_logic;
SIGNAL \U2|w_timer[16]~61\ : std_logic;
SIGNAL \U2|w_timer[17]~62_combout\ : std_logic;
SIGNAL \U2|Equal3~1_combout\ : std_logic;
SIGNAL \U2|Equal3~2_combout\ : std_logic;
SIGNAL \U2|Equal3~0_combout\ : std_logic;
SIGNAL \U2|Equal3~3_combout\ : std_logic;
SIGNAL \U2|w_t_ms[0]~0_combout\ : std_logic;
SIGNAL \U2|w_t_ms[0]~2_combout\ : std_logic;
SIGNAL \U2|w_t_ms[1]~4_combout\ : std_logic;
SIGNAL \U2|Add6~0_combout\ : std_logic;
SIGNAL \U2|w_t_ms[2]~1_combout\ : std_logic;
SIGNAL \U2|w_t_ms[3]~3_combout\ : std_logic;
SIGNAL \U2|Equal4~0_combout\ : std_logic;
SIGNAL \U2|w_state~12_combout\ : std_logic;
SIGNAL \U2|w_state~15_combout\ : std_logic;
SIGNAL \U2|w_state.st_t_done~q\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~1_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~2_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[1]~q\ : std_logic;
SIGNAL \U2|UU1:v_count[2]~1_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[2]~q\ : std_logic;
SIGNAL \U1|w_state.st_idle~1_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~2_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~3_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~0_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~4_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[31]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[0]~q\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[1]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[1]~q\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[2]~q\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[3]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[3]~q\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[4]~q\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[5]~q\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[6]~q\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[7]~q\ : std_logic;
SIGNAL \U1|Add1~15\ : std_logic;
SIGNAL \U1|Add1~16_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[8]~q\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~18_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[9]~q\ : std_logic;
SIGNAL \U1|Add1~19\ : std_logic;
SIGNAL \U1|Add1~20_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[10]~q\ : std_logic;
SIGNAL \U1|Add1~21\ : std_logic;
SIGNAL \U1|Add1~22_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[11]~q\ : std_logic;
SIGNAL \U1|Add1~23\ : std_logic;
SIGNAL \U1|Add1~24_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[12]~q\ : std_logic;
SIGNAL \U1|Add1~25\ : std_logic;
SIGNAL \U1|Add1~26_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[13]~q\ : std_logic;
SIGNAL \U1|Add1~27\ : std_logic;
SIGNAL \U1|Add1~28_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[14]~q\ : std_logic;
SIGNAL \U1|Add1~29\ : std_logic;
SIGNAL \U1|Add1~30_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[15]~q\ : std_logic;
SIGNAL \U1|Add1~31\ : std_logic;
SIGNAL \U1|Add1~32_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[16]~q\ : std_logic;
SIGNAL \U1|Add1~33\ : std_logic;
SIGNAL \U1|Add1~34_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[17]~q\ : std_logic;
SIGNAL \U1|Add1~35\ : std_logic;
SIGNAL \U1|Add1~36_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[18]~q\ : std_logic;
SIGNAL \U1|Add1~37\ : std_logic;
SIGNAL \U1|Add1~38_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[19]~q\ : std_logic;
SIGNAL \U1|Add1~39\ : std_logic;
SIGNAL \U1|Add1~40_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[20]~q\ : std_logic;
SIGNAL \U1|Add1~41\ : std_logic;
SIGNAL \U1|Add1~42_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[21]~q\ : std_logic;
SIGNAL \U1|Add1~43\ : std_logic;
SIGNAL \U1|Add1~44_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[22]~q\ : std_logic;
SIGNAL \U1|Add1~45\ : std_logic;
SIGNAL \U1|Add1~46_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[23]~q\ : std_logic;
SIGNAL \U1|Add1~47\ : std_logic;
SIGNAL \U1|Add1~48_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[24]~q\ : std_logic;
SIGNAL \U1|Add1~49\ : std_logic;
SIGNAL \U1|Add1~50_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[25]~q\ : std_logic;
SIGNAL \U1|Add1~51\ : std_logic;
SIGNAL \U1|Add1~52_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[26]~q\ : std_logic;
SIGNAL \U1|Add1~53\ : std_logic;
SIGNAL \U1|Add1~54_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[27]~q\ : std_logic;
SIGNAL \U1|Equal3~1_combout\ : std_logic;
SIGNAL \U1|Equal3~3_combout\ : std_logic;
SIGNAL \U1|Add1~55\ : std_logic;
SIGNAL \U1|Add1~56_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[28]~q\ : std_logic;
SIGNAL \U1|Add1~57\ : std_logic;
SIGNAL \U1|Add1~58_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[29]~q\ : std_logic;
SIGNAL \U1|Add1~59\ : std_logic;
SIGNAL \U1|Add1~60_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[30]~q\ : std_logic;
SIGNAL \U1|Add1~61\ : std_logic;
SIGNAL \U1|Add1~62_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_2[31]~q\ : std_logic;
SIGNAL \U1|Equal3~0_combout\ : std_logic;
SIGNAL \U1|Equal3~2_combout\ : std_logic;
SIGNAL \U1|Equal3~4_combout\ : std_logic;
SIGNAL \U1|Equal3~6_combout\ : std_logic;
SIGNAL \U1|Equal3~7_combout\ : std_logic;
SIGNAL \U1|Equal3~5_combout\ : std_logic;
SIGNAL \U1|Equal3~8_combout\ : std_logic;
SIGNAL \U1|Equal3~9_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[31]~1_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[0]~q\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[1]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[1]~q\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[2]~q\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[3]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[3]~q\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[4]~q\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[5]~q\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[6]~q\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[7]~q\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[8]~q\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[9]~q\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[10]~q\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[11]~q\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[12]~q\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[13]~q\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[14]~q\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[15]~q\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[16]~q\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[17]~q\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[18]~q\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[19]~q\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[20]~q\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[21]~q\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[22]~q\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[23]~q\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[24]~q\ : std_logic;
SIGNAL \U1|Add0~49\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[25]~q\ : std_logic;
SIGNAL \U1|Add0~51\ : std_logic;
SIGNAL \U1|Add0~52_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[26]~q\ : std_logic;
SIGNAL \U1|Add0~53\ : std_logic;
SIGNAL \U1|Add0~54_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[27]~q\ : std_logic;
SIGNAL \U1|Equal2~1_combout\ : std_logic;
SIGNAL \U1|Equal2~3_combout\ : std_logic;
SIGNAL \U1|Add0~55\ : std_logic;
SIGNAL \U1|Add0~56_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[28]~q\ : std_logic;
SIGNAL \U1|Add0~57\ : std_logic;
SIGNAL \U1|Add0~58_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[29]~q\ : std_logic;
SIGNAL \U1|Add0~59\ : std_logic;
SIGNAL \U1|Add0~60_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[30]~q\ : std_logic;
SIGNAL \U1|Add0~61\ : std_logic;
SIGNAL \U1|Add0~62_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_1[31]~q\ : std_logic;
SIGNAL \U1|Equal2~0_combout\ : std_logic;
SIGNAL \U1|Equal2~2_combout\ : std_logic;
SIGNAL \U1|Equal2~4_combout\ : std_logic;
SIGNAL \U1|Equal2~5_combout\ : std_logic;
SIGNAL \U1|Equal2~7_combout\ : std_logic;
SIGNAL \U1|Equal2~6_combout\ : std_logic;
SIGNAL \U1|Equal2~8_combout\ : std_logic;
SIGNAL \U1|Equal2~9_combout\ : std_logic;
SIGNAL \U1|Selector99~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[0]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[31]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[0]~q\ : std_logic;
SIGNAL \U1|Add3~1_cout\ : std_logic;
SIGNAL \U1|Add3~2_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[1]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[1]~q\ : std_logic;
SIGNAL \U1|Add3~3\ : std_logic;
SIGNAL \U1|Add3~4_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[2]~q\ : std_logic;
SIGNAL \U1|Add3~5\ : std_logic;
SIGNAL \U1|Add3~6_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[3]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[3]~q\ : std_logic;
SIGNAL \U1|Add3~7\ : std_logic;
SIGNAL \U1|Add3~8_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[4]~q\ : std_logic;
SIGNAL \U1|Add3~9\ : std_logic;
SIGNAL \U1|Add3~10_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[5]~q\ : std_logic;
SIGNAL \U1|Add3~11\ : std_logic;
SIGNAL \U1|Add3~12_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[6]~q\ : std_logic;
SIGNAL \U1|Add3~13\ : std_logic;
SIGNAL \U1|Add3~14_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[7]~q\ : std_logic;
SIGNAL \U1|Add3~15\ : std_logic;
SIGNAL \U1|Add3~16_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[8]~q\ : std_logic;
SIGNAL \U1|Add3~17\ : std_logic;
SIGNAL \U1|Add3~18_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[9]~q\ : std_logic;
SIGNAL \U1|Add3~19\ : std_logic;
SIGNAL \U1|Add3~20_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[10]~q\ : std_logic;
SIGNAL \U1|Add3~21\ : std_logic;
SIGNAL \U1|Add3~22_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[11]~q\ : std_logic;
SIGNAL \U1|Add3~23\ : std_logic;
SIGNAL \U1|Add3~24_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[12]~q\ : std_logic;
SIGNAL \U1|Add3~25\ : std_logic;
SIGNAL \U1|Add3~26_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[13]~q\ : std_logic;
SIGNAL \U1|Add3~27\ : std_logic;
SIGNAL \U1|Add3~28_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[14]~q\ : std_logic;
SIGNAL \U1|Add3~29\ : std_logic;
SIGNAL \U1|Add3~30_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[15]~q\ : std_logic;
SIGNAL \U1|Equal5~5_combout\ : std_logic;
SIGNAL \U1|Equal5~6_combout\ : std_logic;
SIGNAL \U1|Equal5~7_combout\ : std_logic;
SIGNAL \U1|Equal5~8_combout\ : std_logic;
SIGNAL \U1|Equal5~9_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[0]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[31]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[0]~q\ : std_logic;
SIGNAL \U1|Add2~1_cout\ : std_logic;
SIGNAL \U1|Add2~2_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[1]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[1]~q\ : std_logic;
SIGNAL \U1|Add2~3\ : std_logic;
SIGNAL \U1|Add2~4_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[2]~q\ : std_logic;
SIGNAL \U1|Add2~5\ : std_logic;
SIGNAL \U1|Add2~6_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[3]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[3]~q\ : std_logic;
SIGNAL \U1|Add2~7\ : std_logic;
SIGNAL \U1|Add2~8_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[4]~q\ : std_logic;
SIGNAL \U1|Add2~9\ : std_logic;
SIGNAL \U1|Add2~10_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[5]~q\ : std_logic;
SIGNAL \U1|Add2~11\ : std_logic;
SIGNAL \U1|Add2~12_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[6]~q\ : std_logic;
SIGNAL \U1|Add2~13\ : std_logic;
SIGNAL \U1|Add2~14_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[7]~q\ : std_logic;
SIGNAL \U1|Add2~15\ : std_logic;
SIGNAL \U1|Add2~16_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[8]~q\ : std_logic;
SIGNAL \U1|Add2~17\ : std_logic;
SIGNAL \U1|Add2~18_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[9]~q\ : std_logic;
SIGNAL \U1|Add2~19\ : std_logic;
SIGNAL \U1|Add2~20_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[10]~q\ : std_logic;
SIGNAL \U1|Add2~21\ : std_logic;
SIGNAL \U1|Add2~22_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[11]~q\ : std_logic;
SIGNAL \U1|Add2~23\ : std_logic;
SIGNAL \U1|Add2~24_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[12]~q\ : std_logic;
SIGNAL \U1|Add2~25\ : std_logic;
SIGNAL \U1|Add2~26_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[13]~q\ : std_logic;
SIGNAL \U1|Add2~27\ : std_logic;
SIGNAL \U1|Add2~28_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[14]~q\ : std_logic;
SIGNAL \U1|Add2~29\ : std_logic;
SIGNAL \U1|Add2~30_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[15]~q\ : std_logic;
SIGNAL \U1|Equal4~5_combout\ : std_logic;
SIGNAL \U1|Equal4~6_combout\ : std_logic;
SIGNAL \U1|Equal4~7_combout\ : std_logic;
SIGNAL \U1|Equal4~8_combout\ : std_logic;
SIGNAL \U1|Equal4~9_combout\ : std_logic;
SIGNAL \U1|Add2~31\ : std_logic;
SIGNAL \U1|Add2~32_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[16]~q\ : std_logic;
SIGNAL \U1|Add2~33\ : std_logic;
SIGNAL \U1|Add2~34_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[17]~q\ : std_logic;
SIGNAL \U1|Add2~35\ : std_logic;
SIGNAL \U1|Add2~36_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[18]~q\ : std_logic;
SIGNAL \U1|Add2~37\ : std_logic;
SIGNAL \U1|Add2~38_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[19]~q\ : std_logic;
SIGNAL \U1|Add2~39\ : std_logic;
SIGNAL \U1|Add2~40_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[20]~q\ : std_logic;
SIGNAL \U1|Add2~41\ : std_logic;
SIGNAL \U1|Add2~42_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[21]~q\ : std_logic;
SIGNAL \U1|Add2~43\ : std_logic;
SIGNAL \U1|Add2~44_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[22]~q\ : std_logic;
SIGNAL \U1|Add2~45\ : std_logic;
SIGNAL \U1|Add2~46_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[23]~q\ : std_logic;
SIGNAL \U1|Equal4~2_combout\ : std_logic;
SIGNAL \U1|Add2~47\ : std_logic;
SIGNAL \U1|Add2~48_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[24]~q\ : std_logic;
SIGNAL \U1|Add2~49\ : std_logic;
SIGNAL \U1|Add2~50_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[25]~q\ : std_logic;
SIGNAL \U1|Add2~51\ : std_logic;
SIGNAL \U1|Add2~52_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[26]~q\ : std_logic;
SIGNAL \U1|Add2~53\ : std_logic;
SIGNAL \U1|Add2~54_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[27]~q\ : std_logic;
SIGNAL \U1|Add2~55\ : std_logic;
SIGNAL \U1|Add2~56_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[28]~q\ : std_logic;
SIGNAL \U1|Add2~57\ : std_logic;
SIGNAL \U1|Add2~58_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[29]~q\ : std_logic;
SIGNAL \U1|Add2~59\ : std_logic;
SIGNAL \U1|Add2~60_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[30]~q\ : std_logic;
SIGNAL \U1|Add2~61\ : std_logic;
SIGNAL \U1|Add2~62_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_3[31]~q\ : std_logic;
SIGNAL \U1|Equal4~0_combout\ : std_logic;
SIGNAL \U1|Equal4~1_combout\ : std_logic;
SIGNAL \U1|Equal4~3_combout\ : std_logic;
SIGNAL \U1|Equal4~4_combout\ : std_logic;
SIGNAL \U1|Add3~31\ : std_logic;
SIGNAL \U1|Add3~32_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[16]~feeder_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[16]~q\ : std_logic;
SIGNAL \U1|Add3~33\ : std_logic;
SIGNAL \U1|Add3~34_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[17]~q\ : std_logic;
SIGNAL \U1|Add3~35\ : std_logic;
SIGNAL \U1|Add3~36_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[18]~feeder_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[18]~q\ : std_logic;
SIGNAL \U1|Add3~37\ : std_logic;
SIGNAL \U1|Add3~38_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[19]~q\ : std_logic;
SIGNAL \U1|Equal5~3_combout\ : std_logic;
SIGNAL \U1|Add3~39\ : std_logic;
SIGNAL \U1|Add3~40_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[20]~q\ : std_logic;
SIGNAL \U1|Add3~41\ : std_logic;
SIGNAL \U1|Add3~42_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[21]~q\ : std_logic;
SIGNAL \U1|Add3~43\ : std_logic;
SIGNAL \U1|Add3~44_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[22]~q\ : std_logic;
SIGNAL \U1|Add3~45\ : std_logic;
SIGNAL \U1|Add3~46_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[23]~q\ : std_logic;
SIGNAL \U1|Add3~47\ : std_logic;
SIGNAL \U1|Add3~48_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[24]~q\ : std_logic;
SIGNAL \U1|Add3~49\ : std_logic;
SIGNAL \U1|Add3~50_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[25]~q\ : std_logic;
SIGNAL \U1|Add3~51\ : std_logic;
SIGNAL \U1|Add3~52_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[26]~q\ : std_logic;
SIGNAL \U1|Add3~53\ : std_logic;
SIGNAL \U1|Add3~54_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[27]~q\ : std_logic;
SIGNAL \U1|Add3~55\ : std_logic;
SIGNAL \U1|Add3~56_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[28]~q\ : std_logic;
SIGNAL \U1|Add3~57\ : std_logic;
SIGNAL \U1|Add3~58_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[29]~q\ : std_logic;
SIGNAL \U1|Add3~59\ : std_logic;
SIGNAL \U1|Add3~60_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[30]~q\ : std_logic;
SIGNAL \U1|Add3~61\ : std_logic;
SIGNAL \U1|Add3~62_combout\ : std_logic;
SIGNAL \U1|UU1:v_res_4[31]~q\ : std_logic;
SIGNAL \U1|Equal5~0_combout\ : std_logic;
SIGNAL \U1|Equal5~2_combout\ : std_logic;
SIGNAL \U1|Equal5~1_combout\ : std_logic;
SIGNAL \U1|Equal5~4_combout\ : std_logic;
SIGNAL \U1|Selector99~1_combout\ : std_logic;
SIGNAL \U1|Selector98~0_combout\ : std_logic;
SIGNAL \U1|w_state~19_combout\ : std_logic;
SIGNAL \U1|w_state~22_combout\ : std_logic;
SIGNAL \U1|w_state~24_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_repo~q\ : std_logic;
SIGNAL \U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|Selector0~1_combout\ : std_logic;
SIGNAL \U1|Selector0~2_combout\ : std_logic;
SIGNAL \U1|o_read~q\ : std_logic;
SIGNAL \U2|UU1~0_combout\ : std_logic;
SIGNAL \U2|w_state~16_combout\ : std_logic;
SIGNAL \U2|w_state~17_combout\ : std_logic;
SIGNAL \U2|w_state.st_timer~q\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~q\ : std_logic;
SIGNAL \U2|Equal2~1_combout\ : std_logic;
SIGNAL \U2|Selector39~1_combout\ : std_logic;
SIGNAL \U2|Selector39~0_combout\ : std_logic;
SIGNAL \U2|Selector39~2_combout\ : std_logic;
SIGNAL \U2|o_done~q\ : std_logic;
SIGNAL \U1|w_state~26_combout\ : std_logic;
SIGNAL \U1|w_state~27_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~q\ : std_logic;
SIGNAL \U1|Selector99~2_combout\ : std_logic;
SIGNAL \U1|Selector99~3_combout\ : std_logic;
SIGNAL \U1|Selector99~5_combout\ : std_logic;
SIGNAL \U1|w_state~20_combout\ : std_logic;
SIGNAL \U1|Selector99~6_combout\ : std_logic;
SIGNAL \U1|w_state~21_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_temp~q\ : std_logic;
SIGNAL \U1|Selector135~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_repo[0]~q\ : std_logic;
SIGNAL \U1|w_state~23_combout\ : std_logic;
SIGNAL \U1|w_state~25_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_type~q\ : std_logic;
SIGNAL \U1|UU1:v_type[0]~0_combout\ : std_logic;
SIGNAL \U1|w_state~29_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_sugar~q\ : std_logic;
SIGNAL \U1|w_state~28_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_size~q\ : std_logic;
SIGNAL \U1|w_state~18_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_valv~q\ : std_logic;
SIGNAL \U1|UU1:v_res_1[31]~0_combout\ : std_logic;
SIGNAL \U1|o_data[0]~0_combout\ : std_logic;
SIGNAL \U2|o_type_1~0_combout\ : std_logic;
SIGNAL \U2|o_type_1~q\ : std_logic;
SIGNAL \U2|o_type_2~q\ : std_logic;
SIGNAL \U2|o_type_3~feeder_combout\ : std_logic;
SIGNAL \U2|o_type_3~q\ : std_logic;
SIGNAL \U2|o_size~q\ : std_logic;
SIGNAL \U2|o_sugar~feeder_combout\ : std_logic;
SIGNAL \U2|o_sugar~q\ : std_logic;
SIGNAL \U1|o_data[6]~3_combout\ : std_logic;
SIGNAL \U2|o_temp~feeder_combout\ : std_logic;
SIGNAL \U2|o_temp~q\ : std_logic;
SIGNAL \U1|o_data[5]~4_combout\ : std_logic;
SIGNAL \U2|o_repo~feeder_combout\ : std_logic;
SIGNAL \U2|o_repo~q\ : std_logic;
SIGNAL \U2|o_prepare~feeder_combout\ : std_logic;
SIGNAL \U2|o_prepare~q\ : std_logic;
SIGNAL \U3|w_state~7_combout\ : std_logic;
SIGNAL \U3|w_state.st_disp_done~q\ : std_logic;
SIGNAL \U3|o_disp_4~0_combout\ : std_logic;
SIGNAL \U2|w_timer\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \U2|w_t_seg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|w_t_ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|o_disp_4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|o_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|ALT_INV_o_done~1_combout\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_type_1 <= i_type_1;
ww_i_type_2 <= i_type_2;
ww_i_type_3 <= i_type_3;
ww_i_size <= i_size;
ww_i_sugar <= i_sugar;
ww_i_prepare <= i_prepare;
ww_i_temp <= i_temp;
o_type_1 <= ww_o_type_1;
o_type_2 <= ww_o_type_2;
o_type_3 <= ww_o_type_3;
o_size <= ww_o_size;
o_sugar <= ww_o_sugar;
o_temp <= ww_o_temp;
o_repo <= ww_o_repo;
o_prepare <= ww_o_prepare;
o_done <= ww_o_done;
o_disp_1 <= ww_o_disp_1;
o_disp_2 <= ww_o_disp_2;
o_disp_3 <= ww_o_disp_3;
o_disp_4 <= ww_o_disp_4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);

\i_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rst~input_o\);
\U2|ALT_INV_o_done~1_combout\ <= NOT \U2|o_done~1_combout\;

-- Location: IOOBUF_X67_Y28_N16
\o_type_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_type_1~q\,
	devoe => ww_devoe,
	o => \o_type_1~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\o_type_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_type_2~q\,
	devoe => ww_devoe,
	o => \o_type_2~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\o_type_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_type_3~q\,
	devoe => ww_devoe,
	o => \o_type_3~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\o_size~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_size~q\,
	devoe => ww_devoe,
	o => \o_size~output_o\);

-- Location: IOOBUF_X36_Y43_N9
\o_sugar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_sugar~q\,
	devoe => ww_devoe,
	o => \o_sugar~output_o\);

-- Location: IOOBUF_X36_Y43_N16
\o_temp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_temp~q\,
	devoe => ww_devoe,
	o => \o_temp~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\o_repo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_repo~q\,
	devoe => ww_devoe,
	o => \o_repo~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\o_prepare~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_prepare~q\,
	devoe => ww_devoe,
	o => \o_prepare~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\o_done~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_done~q\,
	devoe => ww_devoe,
	o => \o_done~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\o_disp_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N30
\o_disp_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[1]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\o_disp_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\o_disp_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[3]~output_o\);

-- Location: IOOBUF_X67_Y25_N16
\o_disp_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[4]~output_o\);

-- Location: IOOBUF_X7_Y43_N16
\o_disp_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\o_disp_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[6]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\o_disp_1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_1[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\o_disp_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_disp_4\(0),
	devoe => ww_devoe,
	o => \o_disp_2[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\o_disp_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[1]~output_o\);

-- Location: IOOBUF_X67_Y13_N16
\o_disp_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\o_disp_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[3]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\o_disp_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_disp_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[5]~output_o\);

-- Location: IOOBUF_X20_Y43_N30
\o_disp_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[6]~output_o\);

-- Location: IOOBUF_X67_Y10_N2
\o_disp_2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_2[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\o_disp_3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\o_disp_3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_disp_4\(0),
	devoe => ww_devoe,
	o => \o_disp_3[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\o_disp_3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\o_disp_3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[3]~output_o\);

-- Location: IOOBUF_X67_Y11_N2
\o_disp_3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[4]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\o_disp_3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[5]~output_o\);

-- Location: IOOBUF_X1_Y43_N30
\o_disp_3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[6]~output_o\);

-- Location: IOOBUF_X67_Y17_N16
\o_disp_3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_3[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\o_disp_4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_disp_4\(0),
	devoe => ww_devoe,
	o => \o_disp_4[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\o_disp_4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_disp_4\(0),
	devoe => ww_devoe,
	o => \o_disp_4[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\o_disp_4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_4[2]~output_o\);

-- Location: IOOBUF_X67_Y14_N9
\o_disp_4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_4[3]~output_o\);

-- Location: IOOBUF_X67_Y14_N2
\o_disp_4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_4[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_disp_4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_4[5]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\o_disp_4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_4[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\o_disp_4[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_disp_4[7]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\i_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
\i_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X67_Y28_N1
\i_prepare~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_prepare,
	o => \i_prepare~input_o\);

-- Location: IOIBUF_X45_Y43_N15
\i_type_3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_type_3,
	o => \i_type_3~input_o\);

-- Location: IOIBUF_X67_Y28_N8
\i_type_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_type_1,
	o => \i_type_1~input_o\);

-- Location: IOIBUF_X41_Y43_N15
\i_type_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_type_2,
	o => \i_type_2~input_o\);

-- Location: LCCOMB_X44_Y26_N16
\U1|Selector99~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~4_combout\ = (!\U1|w_state.st_check_size~q\ & (!\U1|w_state.st_check_valv~q\ & !\U1|w_state.st_check_sugar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datac => \U1|w_state.st_check_valv~q\,
	datad => \U1|w_state.st_check_sugar~q\,
	combout => \U1|Selector99~4_combout\);

-- Location: IOIBUF_X43_Y0_N29
\i_temp~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_temp,
	o => \i_temp~input_o\);

-- Location: LCCOMB_X44_Y26_N12
\U1|Selector99~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~7_combout\ = (\U1|w_state.st_check_temp~q\ & !\i_temp~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|w_state.st_check_temp~q\,
	datad => \i_temp~input_o\,
	combout => \U1|Selector99~7_combout\);

-- Location: IOIBUF_X67_Y27_N15
\i_size~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_size,
	o => \i_size~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\i_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

-- Location: LCCOMB_X43_Y27_N10
\U1|UU1:v_size[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_size[0]~0_combout\ = (\i_rst~input_o\ & ((\U1|Selector99~2_combout\) # ((\U1|w_state.st_check_size~q\ & \U1|w_state.st_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datab => \U1|Selector99~2_combout\,
	datac => \U1|w_state.st_idle~q\,
	datad => \i_rst~input_o\,
	combout => \U1|UU1:v_size[0]~0_combout\);

-- Location: LCCOMB_X43_Y27_N12
\U1|UU1:v_size[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_size[0]~1_combout\ = (\U1|UU1:v_size[0]~0_combout\ & (\i_size~input_o\ & (\U1|w_state.st_idle~q\))) # (!\U1|UU1:v_size[0]~0_combout\ & (((\U1|UU1:v_size[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_size~input_o\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|UU1:v_size[0]~q\,
	datad => \U1|UU1:v_size[0]~0_combout\,
	combout => \U1|UU1:v_size[0]~1_combout\);

-- Location: FF_X43_Y27_N13
\U1|UU1:v_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_size[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_size[0]~q\);

-- Location: LCCOMB_X38_Y27_N16
\U1|o_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[3]~feeder_combout\ = \U1|UU1:v_size[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|UU1:v_size[0]~q\,
	combout => \U1|o_data[3]~feeder_combout\);

-- Location: CLKCTRL_G2
\i_rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_rst~inputclkctrl_outclk\);

-- Location: FF_X38_Y27_N17
\U1|o_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[3]~feeder_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(3));

-- Location: LCCOMB_X43_Y27_N26
\U1|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector31~0_combout\ = (!\i_type_1~input_o\ & \U1|w_state.st_check_type~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_type_1~input_o\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|Selector31~0_combout\);

-- Location: LCCOMB_X43_Y27_N20
\U1|UU1:v_type[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_type[1]~0_combout\ = (\i_rst~input_o\ & ((\U1|Selector99~2_combout\) # (!\U1|UU1:v_type[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datac => \U1|UU1:v_type[0]~0_combout\,
	datad => \U1|Selector99~2_combout\,
	combout => \U1|UU1:v_type[1]~0_combout\);

-- Location: FF_X43_Y27_N27
\U1|UU1:v_type[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector31~0_combout\,
	ena => \U1|UU1:v_type[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_type[1]~q\);

-- Location: LCCOMB_X43_Y27_N24
\U1|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector32~0_combout\ = (\U1|w_state.st_check_type~q\ & ((\i_type_1~input_o\) # (!\i_type_2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_type_1~input_o\,
	datab => \i_type_2~input_o\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|Selector32~0_combout\);

-- Location: FF_X43_Y27_N25
\U1|UU1:v_type[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector32~0_combout\,
	ena => \U1|UU1:v_type[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_type[0]~q\);

-- Location: LCCOMB_X39_Y27_N10
\U1|o_data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[1]~1_combout\ = (\U1|UU1:v_res_1[31]~0_combout\ & ((\U1|UU1:v_type[0]~q\ & ((\U1|o_data\(1)))) # (!\U1|UU1:v_type[0]~q\ & (\U1|UU1:v_type[1]~q\)))) # (!\U1|UU1:v_res_1[31]~0_combout\ & (((\U1|o_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[31]~0_combout\,
	datab => \U1|UU1:v_type[1]~q\,
	datac => \U1|o_data\(1),
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|o_data[1]~1_combout\);

-- Location: FF_X39_Y27_N11
\U1|o_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[1]~1_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(1));

-- Location: LCCOMB_X39_Y27_N28
\U1|o_data[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[2]~2_combout\ = (\U1|UU1:v_res_1[31]~0_combout\ & ((\U1|UU1:v_type[1]~q\ & ((\U1|o_data\(2)) # (\U1|UU1:v_type[0]~q\))) # (!\U1|UU1:v_type[1]~q\ & (\U1|o_data\(2) & \U1|UU1:v_type[0]~q\)))) # (!\U1|UU1:v_res_1[31]~0_combout\ & 
-- (((\U1|o_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[31]~0_combout\,
	datab => \U1|UU1:v_type[1]~q\,
	datac => \U1|o_data\(2),
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|o_data[2]~2_combout\);

-- Location: FF_X39_Y27_N29
\U1|o_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[2]~2_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(2));

-- Location: LCCOMB_X38_Y27_N22
\U2|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~2_combout\ = (\U1|o_data\(3) & (((!\U1|o_data\(2)) # (!\U1|o_data\(1))) # (!\U1|o_data\(0)))) # (!\U1|o_data\(3) & ((\U1|o_data\(2)) # ((\U1|o_data\(0) & \U1|o_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(0),
	datab => \U1|o_data\(3),
	datac => \U1|o_data\(1),
	datad => \U1|o_data\(2),
	combout => \U2|v_count~2_combout\);

-- Location: LCCOMB_X38_Y27_N30
\U2|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~3_combout\ = (\U1|o_data\(1) & ((\U1|o_data\(0) & ((\U1|o_data\(3)) # (\U1|o_data\(2)))) # (!\U1|o_data\(0) & ((!\U1|o_data\(2)) # (!\U1|o_data\(3)))))) # (!\U1|o_data\(1) & (\U1|o_data\(3) $ (((\U1|o_data\(0)) # (!\U1|o_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(0),
	datab => \U1|o_data\(1),
	datac => \U1|o_data\(3),
	datad => \U1|o_data\(2),
	combout => \U2|v_count~3_combout\);

-- Location: LCCOMB_X39_Y27_N18
\U2|v_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~4_combout\ = (\U1|o_data\(2) & ((\U1|o_data\(1)) # (\U1|o_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(1),
	datab => \U1|o_data\(0),
	datad => \U1|o_data\(2),
	combout => \U2|v_count~4_combout\);

-- Location: LCCOMB_X38_Y27_N12
\U2|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~0_combout\ = \U1|o_data\(1) $ (((\U1|o_data\(0) & ((\U1|o_data\(3)) # (!\U1|o_data\(2)))) # (!\U1|o_data\(0) & (\U1|o_data\(3) & !\U1|o_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(0),
	datab => \U1|o_data\(3),
	datac => \U1|o_data\(1),
	datad => \U1|o_data\(2),
	combout => \U2|v_count~0_combout\);

-- Location: LCCOMB_X39_Y27_N4
\U2|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~1_combout\ = \U1|o_data\(0) $ (\U1|o_data\(3) $ (\U1|o_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|o_data\(0),
	datac => \U1|o_data\(3),
	datad => \U1|o_data\(2),
	combout => \U2|v_count~1_combout\);

-- Location: IOIBUF_X45_Y43_N29
\i_sugar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sugar,
	o => \i_sugar~input_o\);

-- Location: LCCOMB_X43_Y27_N28
\U1|UU1:v_sugar[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_sugar[0]~0_combout\ = (\i_rst~input_o\ & ((\U1|Selector99~2_combout\) # ((\U1|w_state.st_idle~q\ & \U1|w_state.st_check_sugar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|w_state.st_check_sugar~q\,
	datad => \U1|Selector99~2_combout\,
	combout => \U1|UU1:v_sugar[0]~0_combout\);

-- Location: LCCOMB_X43_Y27_N14
\U1|UU1:v_sugar[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_sugar[0]~1_combout\ = (\U1|UU1:v_sugar[0]~0_combout\ & (\i_sugar~input_o\ & (\U1|w_state.st_idle~q\))) # (!\U1|UU1:v_sugar[0]~0_combout\ & (((\U1|UU1:v_sugar[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sugar~input_o\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|UU1:v_sugar[0]~q\,
	datad => \U1|UU1:v_sugar[0]~0_combout\,
	combout => \U1|UU1:v_sugar[0]~1_combout\);

-- Location: FF_X43_Y27_N15
\U1|UU1:v_sugar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_sugar[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_sugar[0]~q\);

-- Location: LCCOMB_X38_Y27_N18
\U1|o_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[4]~feeder_combout\ = \U1|UU1:v_sugar[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|UU1:v_sugar[0]~q\,
	combout => \U1|o_data[4]~feeder_combout\);

-- Location: FF_X38_Y27_N19
\U1|o_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[4]~feeder_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(4));

-- Location: LCCOMB_X38_Y26_N20
\U2|UU1:v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[0]~1_combout\ = (\U2|v_count~1_combout\ & (\U1|o_data\(4) & VCC)) # (!\U2|v_count~1_combout\ & (\U1|o_data\(4) $ (VCC)))
-- \U2|UU1:v_count[0]~2\ = CARRY((!\U2|v_count~1_combout\ & \U1|o_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|v_count~1_combout\,
	datab => \U1|o_data\(4),
	datad => VCC,
	combout => \U2|UU1:v_count[0]~1_combout\,
	cout => \U2|UU1:v_count[0]~2\);

-- Location: LCCOMB_X38_Y26_N22
\U2|UU1:v_count[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[1]~1_combout\ = (\U2|v_count~0_combout\ & (!\U2|UU1:v_count[0]~2\)) # (!\U2|v_count~0_combout\ & ((\U2|UU1:v_count[0]~2\) # (GND)))
-- \U2|UU1:v_count[1]~2\ = CARRY((!\U2|UU1:v_count[0]~2\) # (!\U2|v_count~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|v_count~0_combout\,
	datad => VCC,
	cin => \U2|UU1:v_count[0]~2\,
	combout => \U2|UU1:v_count[1]~1_combout\,
	cout => \U2|UU1:v_count[1]~2\);

-- Location: LCCOMB_X38_Y26_N24
\U2|UU1:v_count[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[2]~1_combout\ = (\U2|UU1:v_count[1]~2\ & ((\U2|v_count~3_combout\ $ (\U2|v_count~4_combout\)))) # (!\U2|UU1:v_count[1]~2\ & (\U2|v_count~3_combout\ $ (\U2|v_count~4_combout\ $ (VCC))))
-- \U2|UU1:v_count[2]~2\ = CARRY((!\U2|UU1:v_count[1]~2\ & (\U2|v_count~3_combout\ $ (\U2|v_count~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|v_count~3_combout\,
	datab => \U2|v_count~4_combout\,
	datad => VCC,
	cin => \U2|UU1:v_count[1]~2\,
	combout => \U2|UU1:v_count[2]~1_combout\,
	cout => \U2|UU1:v_count[2]~2\);

-- Location: LCCOMB_X38_Y26_N26
\U2|UU1:v_count[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[3]~3_combout\ = \U2|UU1:v_count[2]~2\ $ (\U2|v_count~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|v_count~2_combout\,
	cin => \U2|UU1:v_count[2]~2\,
	combout => \U2|UU1:v_count[3]~3_combout\);

-- Location: FF_X39_Y27_N23
\U1|o_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_prepare~input_o\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|w_state.st_check_valv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(7));

-- Location: LCCOMB_X39_Y27_N30
\U2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (!\U2|w_state.st_idle~q\ & ((\U1|o_data\(7)) # ((!\U2|UU1:v_count[3]~q\ & !\U2|UU1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(7),
	datab => \U2|UU1:v_count[3]~q\,
	datac => \U2|w_state.st_idle~q\,
	datad => \U2|UU1~0_combout\,
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X39_Y26_N26
\U2|w_state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~13_combout\ = (\U2|Selector3~0_combout\ & (!\U2|w_state.st_led_start~q\ & (\U2|w_state~12_combout\ & !\U2|Selector39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector3~0_combout\,
	datab => \U2|w_state.st_led_start~q\,
	datac => \U2|w_state~12_combout\,
	datad => \U2|Selector39~1_combout\,
	combout => \U2|w_state~13_combout\);

-- Location: LCCOMB_X39_Y26_N14
\U2|w_state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~14_combout\ = (!\U2|UU1:v_count[3]~q\ & (\U2|w_state~13_combout\ & !\U2|UU1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[3]~q\,
	datac => \U2|w_state~13_combout\,
	datad => \U2|UU1~0_combout\,
	combout => \U2|w_state~14_combout\);

-- Location: FF_X39_Y26_N15
\U2|w_state.st_led_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_state~14_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_state.st_led_start~q\);

-- Location: LCCOMB_X39_Y26_N0
\U2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (\U2|w_state.st_led_start~q\) # ((\U2|Selector3~0_combout\) # (\U2|Selector39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_state.st_led_start~q\,
	datac => \U2|Selector3~0_combout\,
	datad => \U2|Selector39~1_combout\,
	combout => \U2|Selector3~1_combout\);

-- Location: LCCOMB_X39_Y26_N8
\U2|w_state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~18_combout\ = (!\U2|w_state.st_led_start~q\ & (\U2|w_state~12_combout\ & ((\U2|w_state.st_idle~q\) # (\U2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_led_start~q\,
	datab => \U2|w_state~12_combout\,
	datac => \U2|w_state.st_idle~q\,
	datad => \U2|Selector3~1_combout\,
	combout => \U2|w_state~18_combout\);

-- Location: FF_X39_Y26_N9
\U2|w_state.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_state~18_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_state.st_idle~q\);

-- Location: LCCOMB_X39_Y26_N30
\U2|w_state.st_idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state.st_idle~0_combout\ = (\U2|w_state.st_timer~q\ & (\U2|w_state.st_idle~q\ & (!\U2|w_state.st_led_start~q\ & !\U2|w_state.st_t_done~q\))) # (!\U2|w_state.st_timer~q\ & ((\U2|w_state.st_idle~q\ & (\U2|w_state.st_led_start~q\ $ 
-- (\U2|w_state.st_t_done~q\))) # (!\U2|w_state.st_idle~q\ & (!\U2|w_state.st_led_start~q\ & !\U2|w_state.st_t_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_timer~q\,
	datab => \U2|w_state.st_idle~q\,
	datac => \U2|w_state.st_led_start~q\,
	datad => \U2|w_state.st_t_done~q\,
	combout => \U2|w_state.st_idle~0_combout\);

-- Location: LCCOMB_X37_Y27_N6
\U2|w_timer[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[0]~27_combout\ = \U2|w_timer\(0) $ (VCC)
-- \U2|w_timer[0]~28\ = CARRY(\U2|w_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(0),
	datad => VCC,
	combout => \U2|w_timer[0]~27_combout\,
	cout => \U2|w_timer[0]~28\);

-- Location: LCCOMB_X37_Y26_N8
\U2|w_timer[17]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[17]~62_combout\ = (\U2|w_timer\(17) & (!\U2|w_timer[16]~61\)) # (!\U2|w_timer\(17) & ((\U2|w_timer[16]~61\) # (GND)))
-- \U2|w_timer[17]~63\ = CARRY((!\U2|w_timer[16]~61\) # (!\U2|w_timer\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(17),
	datad => VCC,
	cin => \U2|w_timer[16]~61\,
	combout => \U2|w_timer[17]~62_combout\,
	cout => \U2|w_timer[17]~63\);

-- Location: LCCOMB_X37_Y26_N10
\U2|w_timer[18]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[18]~64_combout\ = (\U2|w_timer\(18) & (\U2|w_timer[17]~63\ $ (GND))) # (!\U2|w_timer\(18) & (!\U2|w_timer[17]~63\ & VCC))
-- \U2|w_timer[18]~65\ = CARRY((\U2|w_timer\(18) & !\U2|w_timer[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(18),
	datad => VCC,
	cin => \U2|w_timer[17]~63\,
	combout => \U2|w_timer[18]~64_combout\,
	cout => \U2|w_timer[18]~65\);

-- Location: LCCOMB_X38_Y27_N26
\U2|o_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_done~1_combout\ = (\U2|w_state.st_led_start~q\) # (!\U2|w_state.st_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|w_state.st_led_start~q\,
	datad => \U2|w_state.st_idle~q\,
	combout => \U2|o_done~1_combout\);

-- Location: FF_X37_Y26_N11
\U2|w_timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[18]~64_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(18));

-- Location: LCCOMB_X37_Y26_N12
\U2|w_timer[19]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[19]~66_combout\ = (\U2|w_timer\(19) & (!\U2|w_timer[18]~65\)) # (!\U2|w_timer\(19) & ((\U2|w_timer[18]~65\) # (GND)))
-- \U2|w_timer[19]~67\ = CARRY((!\U2|w_timer[18]~65\) # (!\U2|w_timer\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(19),
	datad => VCC,
	cin => \U2|w_timer[18]~65\,
	combout => \U2|w_timer[19]~66_combout\,
	cout => \U2|w_timer[19]~67\);

-- Location: FF_X37_Y26_N13
\U2|w_timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[19]~66_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(19));

-- Location: LCCOMB_X37_Y26_N14
\U2|w_timer[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[20]~68_combout\ = (\U2|w_timer\(20) & (\U2|w_timer[19]~67\ $ (GND))) # (!\U2|w_timer\(20) & (!\U2|w_timer[19]~67\ & VCC))
-- \U2|w_timer[20]~69\ = CARRY((\U2|w_timer\(20) & !\U2|w_timer[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(20),
	datad => VCC,
	cin => \U2|w_timer[19]~67\,
	combout => \U2|w_timer[20]~68_combout\,
	cout => \U2|w_timer[20]~69\);

-- Location: FF_X37_Y26_N15
\U2|w_timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[20]~68_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(20));

-- Location: LCCOMB_X37_Y26_N16
\U2|w_timer[21]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[21]~70_combout\ = (\U2|w_timer\(21) & (!\U2|w_timer[20]~69\)) # (!\U2|w_timer\(21) & ((\U2|w_timer[20]~69\) # (GND)))
-- \U2|w_timer[21]~71\ = CARRY((!\U2|w_timer[20]~69\) # (!\U2|w_timer\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(21),
	datad => VCC,
	cin => \U2|w_timer[20]~69\,
	combout => \U2|w_timer[21]~70_combout\,
	cout => \U2|w_timer[21]~71\);

-- Location: FF_X37_Y26_N17
\U2|w_timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[21]~70_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(21));

-- Location: LCCOMB_X37_Y26_N18
\U2|w_timer[22]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[22]~72_combout\ = (\U2|w_timer\(22) & (\U2|w_timer[21]~71\ $ (GND))) # (!\U2|w_timer\(22) & (!\U2|w_timer[21]~71\ & VCC))
-- \U2|w_timer[22]~73\ = CARRY((\U2|w_timer\(22) & !\U2|w_timer[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(22),
	datad => VCC,
	cin => \U2|w_timer[21]~71\,
	combout => \U2|w_timer[22]~72_combout\,
	cout => \U2|w_timer[22]~73\);

-- Location: FF_X37_Y26_N19
\U2|w_timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[22]~72_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(22));

-- Location: LCCOMB_X37_Y26_N20
\U2|w_timer[23]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[23]~74_combout\ = (\U2|w_timer\(23) & (!\U2|w_timer[22]~73\)) # (!\U2|w_timer\(23) & ((\U2|w_timer[22]~73\) # (GND)))
-- \U2|w_timer[23]~75\ = CARRY((!\U2|w_timer[22]~73\) # (!\U2|w_timer\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(23),
	datad => VCC,
	cin => \U2|w_timer[22]~73\,
	combout => \U2|w_timer[23]~74_combout\,
	cout => \U2|w_timer[23]~75\);

-- Location: FF_X37_Y26_N21
\U2|w_timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[23]~74_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(23));

-- Location: LCCOMB_X37_Y26_N22
\U2|w_timer[24]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[24]~76_combout\ = (\U2|w_timer\(24) & (\U2|w_timer[23]~75\ $ (GND))) # (!\U2|w_timer\(24) & (!\U2|w_timer[23]~75\ & VCC))
-- \U2|w_timer[24]~77\ = CARRY((\U2|w_timer\(24) & !\U2|w_timer[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(24),
	datad => VCC,
	cin => \U2|w_timer[23]~75\,
	combout => \U2|w_timer[24]~76_combout\,
	cout => \U2|w_timer[24]~77\);

-- Location: FF_X37_Y26_N23
\U2|w_timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[24]~76_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(24));

-- Location: LCCOMB_X37_Y26_N24
\U2|w_timer[25]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[25]~78_combout\ = (\U2|w_timer\(25) & (!\U2|w_timer[24]~77\)) # (!\U2|w_timer\(25) & ((\U2|w_timer[24]~77\) # (GND)))
-- \U2|w_timer[25]~79\ = CARRY((!\U2|w_timer[24]~77\) # (!\U2|w_timer\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(25),
	datad => VCC,
	cin => \U2|w_timer[24]~77\,
	combout => \U2|w_timer[25]~78_combout\,
	cout => \U2|w_timer[25]~79\);

-- Location: FF_X37_Y26_N25
\U2|w_timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[25]~78_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(25));

-- Location: LCCOMB_X37_Y26_N26
\U2|w_timer[26]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[26]~80_combout\ = \U2|w_timer\(26) $ (!\U2|w_timer[25]~79\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(26),
	cin => \U2|w_timer[25]~79\,
	combout => \U2|w_timer[26]~80_combout\);

-- Location: FF_X37_Y26_N27
\U2|w_timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[26]~80_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(26));

-- Location: LCCOMB_X38_Y26_N12
\U2|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~7_combout\ = (\U2|w_timer\(24) & (\U2|w_timer\(26) & \U2|w_timer\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(24),
	datac => \U2|w_timer\(26),
	datad => \U2|w_timer\(22),
	combout => \U2|Equal1~7_combout\);

-- Location: LCCOMB_X37_Y26_N30
\U2|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~6_combout\ = (!\U2|w_timer\(19) & (\U2|w_timer\(14) & (!\U2|w_timer\(17) & \U2|w_timer\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(19),
	datab => \U2|w_timer\(14),
	datac => \U2|w_timer\(17),
	datad => \U2|w_timer\(16),
	combout => \U2|Equal1~6_combout\);

-- Location: LCCOMB_X37_Y27_N0
\U2|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~5_combout\ = (!\U2|w_timer\(10) & (!\U2|w_timer\(11) & (\U2|w_timer\(7) & !\U2|w_timer\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(10),
	datab => \U2|w_timer\(11),
	datac => \U2|w_timer\(7),
	datad => \U2|w_timer\(5),
	combout => \U2|Equal1~5_combout\);

-- Location: LCCOMB_X38_Y26_N0
\U2|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~2_combout\ = (\U2|w_timer\(18) & (\U2|w_timer\(15) & (\U2|w_timer\(13) & \U2|w_timer\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(18),
	datab => \U2|w_timer\(15),
	datac => \U2|w_timer\(13),
	datad => \U2|w_timer\(12),
	combout => \U2|Equal1~2_combout\);

-- Location: LCCOMB_X37_Y26_N28
\U2|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~3_combout\ = (!\U2|w_timer\(25) & (\U2|w_timer\(21) & (\U2|w_timer\(20) & \U2|w_timer\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(25),
	datab => \U2|w_timer\(21),
	datac => \U2|w_timer\(20),
	datad => \U2|w_timer\(23),
	combout => \U2|Equal1~3_combout\);

-- Location: LCCOMB_X37_Y27_N2
\U2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~1_combout\ = (!\U2|w_timer\(8) & (!\U2|w_timer\(6) & (!\U2|w_timer\(4) & !\U2|w_timer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(8),
	datab => \U2|w_timer\(6),
	datac => \U2|w_timer\(4),
	datad => \U2|w_timer\(9),
	combout => \U2|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y27_N4
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (!\U2|w_timer\(2) & (!\U2|w_timer\(1) & (!\U2|w_timer\(0) & !\U2|w_timer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(2),
	datab => \U2|w_timer\(1),
	datac => \U2|w_timer\(0),
	datad => \U2|w_timer\(3),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y26_N18
\U2|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~4_combout\ = (\U2|Equal1~2_combout\ & (\U2|Equal1~3_combout\ & (\U2|Equal1~1_combout\ & \U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~2_combout\,
	datab => \U2|Equal1~3_combout\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|Equal1~4_combout\);

-- Location: LCCOMB_X38_Y26_N14
\U2|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~8_combout\ = (\U2|Equal1~7_combout\ & (\U2|Equal1~6_combout\ & (\U2|Equal1~5_combout\ & \U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~7_combout\,
	datab => \U2|Equal1~6_combout\,
	datac => \U2|Equal1~5_combout\,
	datad => \U2|Equal1~4_combout\,
	combout => \U2|Equal1~8_combout\);

-- Location: FF_X38_Y26_N21
\U2|UU1:v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|UU1:v_count[0]~1_combout\,
	sclr => \U2|w_state.st_timer~q\,
	ena => \U2|UU1:v_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|UU1:v_count[0]~q\);

-- Location: LCCOMB_X41_Y27_N22
\U2|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add4~0_combout\ = \U2|w_t_seg\(2) $ (((\U2|w_t_seg\(0) & \U2|w_t_seg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(0),
	datab => \U2|w_t_seg\(1),
	datac => \U2|w_t_seg\(2),
	combout => \U2|Add4~0_combout\);

-- Location: LCCOMB_X41_Y27_N24
\U2|w_t_seg[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[0]~12_combout\ = (!\U2|o_done~1_combout\ & ((\U2|w_state.st_t_done~q\ & (\U2|Equal4~0_combout\)) # (!\U2|w_state.st_t_done~q\ & ((\U2|Equal1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|Equal4~0_combout\,
	datac => \U2|o_done~1_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|w_t_seg[0]~12_combout\);

-- Location: LCCOMB_X41_Y27_N2
\U2|w_t_seg[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~6_combout\ = (\U2|w_state.st_t_done~q\ & (\U2|Equal4~0_combout\)) # (!\U2|w_state.st_t_done~q\ & ((\U2|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|w_t_seg[3]~6_combout\);

-- Location: LCCOMB_X41_Y27_N6
\U2|w_t_seg[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~13_combout\ = ((\U2|w_state.st_led_start~q\) # ((!\U2|w_t_seg[3]~7_combout\ & !\U2|w_t_seg[3]~6_combout\))) # (!\U2|w_state.st_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_idle~q\,
	datab => \U2|w_state.st_led_start~q\,
	datac => \U2|w_t_seg[3]~7_combout\,
	datad => \U2|w_t_seg[3]~6_combout\,
	combout => \U2|w_t_seg[3]~13_combout\);

-- Location: LCCOMB_X41_Y27_N30
\U2|w_t_seg[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[2]~9_combout\ = (\U2|Add4~0_combout\ & ((\U2|w_t_seg[0]~12_combout\) # ((\U2|w_t_seg\(2) & \U2|w_t_seg[3]~13_combout\)))) # (!\U2|Add4~0_combout\ & (((\U2|w_t_seg\(2) & \U2|w_t_seg[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add4~0_combout\,
	datab => \U2|w_t_seg[0]~12_combout\,
	datac => \U2|w_t_seg\(2),
	datad => \U2|w_t_seg[3]~13_combout\,
	combout => \U2|w_t_seg[2]~9_combout\);

-- Location: FF_X41_Y27_N31
\U2|w_t_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_seg[2]~9_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_seg\(2));

-- Location: LCCOMB_X41_Y27_N0
\U2|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add4~1_combout\ = \U2|w_t_seg\(3) $ (((\U2|w_t_seg\(0) & (\U2|w_t_seg\(1) & \U2|w_t_seg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(0),
	datab => \U2|w_t_seg\(1),
	datac => \U2|w_t_seg\(2),
	datad => \U2|w_t_seg\(3),
	combout => \U2|Add4~1_combout\);

-- Location: LCCOMB_X41_Y27_N18
\U2|w_t_seg[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~11_combout\ = (\U2|Add4~1_combout\ & ((\U2|w_t_seg[0]~12_combout\) # ((\U2|w_t_seg\(3) & \U2|w_t_seg[3]~13_combout\)))) # (!\U2|Add4~1_combout\ & (((\U2|w_t_seg\(3) & \U2|w_t_seg[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add4~1_combout\,
	datab => \U2|w_t_seg[0]~12_combout\,
	datac => \U2|w_t_seg\(3),
	datad => \U2|w_t_seg[3]~13_combout\,
	combout => \U2|w_t_seg[3]~11_combout\);

-- Location: FF_X41_Y27_N19
\U2|w_t_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_seg[3]~11_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_seg\(3));

-- Location: LCCOMB_X41_Y27_N28
\U2|o_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_done~0_combout\ = (\U2|w_t_seg\(0) & (!\U2|w_t_seg\(1) & (\U2|w_t_seg\(2) & !\U2|w_t_seg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(0),
	datab => \U2|w_t_seg\(1),
	datac => \U2|w_t_seg\(2),
	datad => \U2|w_t_seg\(3),
	combout => \U2|o_done~0_combout\);

-- Location: LCCOMB_X41_Y27_N4
\U2|w_t_seg[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~7_combout\ = (\U2|w_state.st_t_done~q\ & (\U2|o_done~0_combout\)) # (!\U2|w_state.st_t_done~q\ & (((\U2|Equal2~1_combout\ & \U2|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|o_done~0_combout\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|w_t_seg[3]~7_combout\);

-- Location: LCCOMB_X41_Y27_N12
\U2|w_t_seg[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[0]~8_combout\ = (\U2|o_done~1_combout\ & (((\U2|w_t_seg\(0))))) # (!\U2|o_done~1_combout\ & ((\U2|w_t_seg\(0) & (!\U2|w_t_seg[3]~7_combout\ & !\U2|w_t_seg[3]~6_combout\)) # (!\U2|w_t_seg\(0) & ((\U2|w_t_seg[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_done~1_combout\,
	datab => \U2|w_t_seg[3]~7_combout\,
	datac => \U2|w_t_seg\(0),
	datad => \U2|w_t_seg[3]~6_combout\,
	combout => \U2|w_t_seg[0]~8_combout\);

-- Location: FF_X41_Y27_N13
\U2|w_t_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_seg[0]~8_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_seg\(0));

-- Location: LCCOMB_X41_Y27_N20
\U2|w_t_seg[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[1]~10_combout\ = (\U2|w_t_seg\(1) & ((\U2|w_t_seg[3]~13_combout\) # ((!\U2|w_t_seg\(0) & \U2|w_t_seg[0]~12_combout\)))) # (!\U2|w_t_seg\(1) & (\U2|w_t_seg\(0) & (\U2|w_t_seg[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(0),
	datab => \U2|w_t_seg[0]~12_combout\,
	datac => \U2|w_t_seg\(1),
	datad => \U2|w_t_seg[3]~13_combout\,
	combout => \U2|w_t_seg[1]~10_combout\);

-- Location: FF_X41_Y27_N21
\U2|w_t_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_seg[1]~10_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_seg\(1));

-- Location: LCCOMB_X38_Y26_N16
\U2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (\U2|UU1:v_count[1]~q\ & (\U2|w_t_seg\(1) & (\U2|UU1:v_count[0]~q\ $ (!\U2|w_t_seg\(0))))) # (!\U2|UU1:v_count[1]~q\ & (!\U2|w_t_seg\(1) & (\U2|UU1:v_count[0]~q\ $ (!\U2|w_t_seg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[1]~q\,
	datab => \U2|UU1:v_count[0]~q\,
	datac => \U2|w_t_seg\(1),
	datad => \U2|w_t_seg\(0),
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X38_Y26_N4
\U2|w_timer[23]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[23]~43_combout\ = (\U2|w_state.st_timer~q\ & ((\U2|Equal1~8_combout\) # ((\U2|Equal2~1_combout\ & \U2|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|w_state.st_timer~q\,
	datac => \U2|Equal1~8_combout\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|w_timer[23]~43_combout\);

-- Location: FF_X37_Y27_N7
\U2|w_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[0]~27_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(0));

-- Location: LCCOMB_X37_Y27_N8
\U2|w_timer[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[1]~29_combout\ = (\U2|w_timer\(1) & (!\U2|w_timer[0]~28\)) # (!\U2|w_timer\(1) & ((\U2|w_timer[0]~28\) # (GND)))
-- \U2|w_timer[1]~30\ = CARRY((!\U2|w_timer[0]~28\) # (!\U2|w_timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(1),
	datad => VCC,
	cin => \U2|w_timer[0]~28\,
	combout => \U2|w_timer[1]~29_combout\,
	cout => \U2|w_timer[1]~30\);

-- Location: FF_X37_Y27_N9
\U2|w_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[1]~29_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(1));

-- Location: LCCOMB_X37_Y27_N10
\U2|w_timer[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[2]~31_combout\ = (\U2|w_timer\(2) & (\U2|w_timer[1]~30\ $ (GND))) # (!\U2|w_timer\(2) & (!\U2|w_timer[1]~30\ & VCC))
-- \U2|w_timer[2]~32\ = CARRY((\U2|w_timer\(2) & !\U2|w_timer[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(2),
	datad => VCC,
	cin => \U2|w_timer[1]~30\,
	combout => \U2|w_timer[2]~31_combout\,
	cout => \U2|w_timer[2]~32\);

-- Location: FF_X37_Y27_N11
\U2|w_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[2]~31_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(2));

-- Location: LCCOMB_X37_Y27_N12
\U2|w_timer[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[3]~33_combout\ = (\U2|w_timer\(3) & (!\U2|w_timer[2]~32\)) # (!\U2|w_timer\(3) & ((\U2|w_timer[2]~32\) # (GND)))
-- \U2|w_timer[3]~34\ = CARRY((!\U2|w_timer[2]~32\) # (!\U2|w_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(3),
	datad => VCC,
	cin => \U2|w_timer[2]~32\,
	combout => \U2|w_timer[3]~33_combout\,
	cout => \U2|w_timer[3]~34\);

-- Location: FF_X37_Y27_N13
\U2|w_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[3]~33_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(3));

-- Location: LCCOMB_X37_Y27_N14
\U2|w_timer[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[4]~35_combout\ = (\U2|w_timer\(4) & (\U2|w_timer[3]~34\ $ (GND))) # (!\U2|w_timer\(4) & (!\U2|w_timer[3]~34\ & VCC))
-- \U2|w_timer[4]~36\ = CARRY((\U2|w_timer\(4) & !\U2|w_timer[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(4),
	datad => VCC,
	cin => \U2|w_timer[3]~34\,
	combout => \U2|w_timer[4]~35_combout\,
	cout => \U2|w_timer[4]~36\);

-- Location: FF_X37_Y27_N15
\U2|w_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[4]~35_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(4));

-- Location: LCCOMB_X37_Y27_N16
\U2|w_timer[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[5]~37_combout\ = (\U2|w_timer\(5) & (!\U2|w_timer[4]~36\)) # (!\U2|w_timer\(5) & ((\U2|w_timer[4]~36\) # (GND)))
-- \U2|w_timer[5]~38\ = CARRY((!\U2|w_timer[4]~36\) # (!\U2|w_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(5),
	datad => VCC,
	cin => \U2|w_timer[4]~36\,
	combout => \U2|w_timer[5]~37_combout\,
	cout => \U2|w_timer[5]~38\);

-- Location: FF_X37_Y27_N17
\U2|w_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[5]~37_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(5));

-- Location: LCCOMB_X37_Y27_N18
\U2|w_timer[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[6]~39_combout\ = (\U2|w_timer\(6) & (\U2|w_timer[5]~38\ $ (GND))) # (!\U2|w_timer\(6) & (!\U2|w_timer[5]~38\ & VCC))
-- \U2|w_timer[6]~40\ = CARRY((\U2|w_timer\(6) & !\U2|w_timer[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(6),
	datad => VCC,
	cin => \U2|w_timer[5]~38\,
	combout => \U2|w_timer[6]~39_combout\,
	cout => \U2|w_timer[6]~40\);

-- Location: FF_X37_Y27_N19
\U2|w_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[6]~39_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(6));

-- Location: LCCOMB_X37_Y27_N20
\U2|w_timer[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[7]~41_combout\ = (\U2|w_timer\(7) & (!\U2|w_timer[6]~40\)) # (!\U2|w_timer\(7) & ((\U2|w_timer[6]~40\) # (GND)))
-- \U2|w_timer[7]~42\ = CARRY((!\U2|w_timer[6]~40\) # (!\U2|w_timer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(7),
	datad => VCC,
	cin => \U2|w_timer[6]~40\,
	combout => \U2|w_timer[7]~41_combout\,
	cout => \U2|w_timer[7]~42\);

-- Location: FF_X37_Y27_N21
\U2|w_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[7]~41_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(7));

-- Location: LCCOMB_X37_Y27_N22
\U2|w_timer[8]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[8]~44_combout\ = (\U2|w_timer\(8) & (\U2|w_timer[7]~42\ $ (GND))) # (!\U2|w_timer\(8) & (!\U2|w_timer[7]~42\ & VCC))
-- \U2|w_timer[8]~45\ = CARRY((\U2|w_timer\(8) & !\U2|w_timer[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(8),
	datad => VCC,
	cin => \U2|w_timer[7]~42\,
	combout => \U2|w_timer[8]~44_combout\,
	cout => \U2|w_timer[8]~45\);

-- Location: FF_X37_Y27_N23
\U2|w_timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[8]~44_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(8));

-- Location: LCCOMB_X37_Y27_N24
\U2|w_timer[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[9]~46_combout\ = (\U2|w_timer\(9) & (!\U2|w_timer[8]~45\)) # (!\U2|w_timer\(9) & ((\U2|w_timer[8]~45\) # (GND)))
-- \U2|w_timer[9]~47\ = CARRY((!\U2|w_timer[8]~45\) # (!\U2|w_timer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(9),
	datad => VCC,
	cin => \U2|w_timer[8]~45\,
	combout => \U2|w_timer[9]~46_combout\,
	cout => \U2|w_timer[9]~47\);

-- Location: FF_X37_Y27_N25
\U2|w_timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[9]~46_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(9));

-- Location: LCCOMB_X37_Y27_N26
\U2|w_timer[10]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[10]~48_combout\ = (\U2|w_timer\(10) & (\U2|w_timer[9]~47\ $ (GND))) # (!\U2|w_timer\(10) & (!\U2|w_timer[9]~47\ & VCC))
-- \U2|w_timer[10]~49\ = CARRY((\U2|w_timer\(10) & !\U2|w_timer[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(10),
	datad => VCC,
	cin => \U2|w_timer[9]~47\,
	combout => \U2|w_timer[10]~48_combout\,
	cout => \U2|w_timer[10]~49\);

-- Location: FF_X37_Y27_N27
\U2|w_timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[10]~48_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(10));

-- Location: LCCOMB_X37_Y27_N28
\U2|w_timer[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[11]~50_combout\ = (\U2|w_timer\(11) & (!\U2|w_timer[10]~49\)) # (!\U2|w_timer\(11) & ((\U2|w_timer[10]~49\) # (GND)))
-- \U2|w_timer[11]~51\ = CARRY((!\U2|w_timer[10]~49\) # (!\U2|w_timer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(11),
	datad => VCC,
	cin => \U2|w_timer[10]~49\,
	combout => \U2|w_timer[11]~50_combout\,
	cout => \U2|w_timer[11]~51\);

-- Location: FF_X37_Y27_N29
\U2|w_timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[11]~50_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(11));

-- Location: LCCOMB_X37_Y27_N30
\U2|w_timer[12]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[12]~52_combout\ = (\U2|w_timer\(12) & (\U2|w_timer[11]~51\ $ (GND))) # (!\U2|w_timer\(12) & (!\U2|w_timer[11]~51\ & VCC))
-- \U2|w_timer[12]~53\ = CARRY((\U2|w_timer\(12) & !\U2|w_timer[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(12),
	datad => VCC,
	cin => \U2|w_timer[11]~51\,
	combout => \U2|w_timer[12]~52_combout\,
	cout => \U2|w_timer[12]~53\);

-- Location: FF_X37_Y27_N31
\U2|w_timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[12]~52_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(12));

-- Location: LCCOMB_X37_Y26_N0
\U2|w_timer[13]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[13]~54_combout\ = (\U2|w_timer\(13) & (!\U2|w_timer[12]~53\)) # (!\U2|w_timer\(13) & ((\U2|w_timer[12]~53\) # (GND)))
-- \U2|w_timer[13]~55\ = CARRY((!\U2|w_timer[12]~53\) # (!\U2|w_timer\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(13),
	datad => VCC,
	cin => \U2|w_timer[12]~53\,
	combout => \U2|w_timer[13]~54_combout\,
	cout => \U2|w_timer[13]~55\);

-- Location: FF_X37_Y26_N1
\U2|w_timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[13]~54_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(13));

-- Location: LCCOMB_X37_Y26_N2
\U2|w_timer[14]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[14]~56_combout\ = (\U2|w_timer\(14) & (\U2|w_timer[13]~55\ $ (GND))) # (!\U2|w_timer\(14) & (!\U2|w_timer[13]~55\ & VCC))
-- \U2|w_timer[14]~57\ = CARRY((\U2|w_timer\(14) & !\U2|w_timer[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(14),
	datad => VCC,
	cin => \U2|w_timer[13]~55\,
	combout => \U2|w_timer[14]~56_combout\,
	cout => \U2|w_timer[14]~57\);

-- Location: FF_X37_Y26_N3
\U2|w_timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[14]~56_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(14));

-- Location: LCCOMB_X37_Y26_N4
\U2|w_timer[15]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[15]~58_combout\ = (\U2|w_timer\(15) & (!\U2|w_timer[14]~57\)) # (!\U2|w_timer\(15) & ((\U2|w_timer[14]~57\) # (GND)))
-- \U2|w_timer[15]~59\ = CARRY((!\U2|w_timer[14]~57\) # (!\U2|w_timer\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(15),
	datad => VCC,
	cin => \U2|w_timer[14]~57\,
	combout => \U2|w_timer[15]~58_combout\,
	cout => \U2|w_timer[15]~59\);

-- Location: FF_X37_Y26_N5
\U2|w_timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[15]~58_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(15));

-- Location: LCCOMB_X37_Y26_N6
\U2|w_timer[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[16]~60_combout\ = (\U2|w_timer\(16) & (\U2|w_timer[15]~59\ $ (GND))) # (!\U2|w_timer\(16) & (!\U2|w_timer[15]~59\ & VCC))
-- \U2|w_timer[16]~61\ = CARRY((\U2|w_timer\(16) & !\U2|w_timer[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(16),
	datad => VCC,
	cin => \U2|w_timer[15]~59\,
	combout => \U2|w_timer[16]~60_combout\,
	cout => \U2|w_timer[16]~61\);

-- Location: FF_X37_Y26_N7
\U2|w_timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[16]~60_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(16));

-- Location: FF_X37_Y26_N9
\U2|w_timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[17]~62_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[23]~43_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(17));

-- Location: LCCOMB_X38_Y26_N8
\U2|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~1_combout\ = ((\U2|w_timer\(16)) # ((\U2|w_timer\(14)) # (!\U2|w_timer\(19)))) # (!\U2|w_timer\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(17),
	datab => \U2|w_timer\(16),
	datac => \U2|w_timer\(14),
	datad => \U2|w_timer\(19),
	combout => \U2|Equal3~1_combout\);

-- Location: LCCOMB_X38_Y26_N6
\U2|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~2_combout\ = (\U2|w_timer\(22)) # ((\U2|w_timer\(26)) # (\U2|w_timer\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(22),
	datac => \U2|w_timer\(26),
	datad => \U2|w_timer\(24),
	combout => \U2|Equal3~2_combout\);

-- Location: LCCOMB_X38_Y27_N8
\U2|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = ((\U2|w_timer\(7)) # ((!\U2|w_timer\(11)) # (!\U2|w_timer\(5)))) # (!\U2|w_timer\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(10),
	datab => \U2|w_timer\(7),
	datac => \U2|w_timer\(5),
	datad => \U2|w_timer\(11),
	combout => \U2|Equal3~0_combout\);

-- Location: LCCOMB_X39_Y26_N28
\U2|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~3_combout\ = (\U2|Equal3~1_combout\) # ((\U2|Equal3~2_combout\) # ((\U2|Equal3~0_combout\) # (!\U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~1_combout\,
	datab => \U2|Equal3~2_combout\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|Equal1~4_combout\,
	combout => \U2|Equal3~3_combout\);

-- Location: LCCOMB_X39_Y26_N22
\U2|w_t_ms[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[0]~0_combout\ = (\U2|w_state.st_t_done~q\ & (\i_rst~input_o\ & ((\U2|Equal4~0_combout\) # (!\U2|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \i_rst~input_o\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal3~3_combout\,
	combout => \U2|w_t_ms[0]~0_combout\);

-- Location: LCCOMB_X41_Y26_N22
\U2|w_t_ms[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[0]~2_combout\ = (\U2|w_t_ms\(0) & ((!\U2|w_t_ms[0]~0_combout\))) # (!\U2|w_t_ms\(0) & (!\U2|Equal4~0_combout\ & \U2|w_t_ms[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal4~0_combout\,
	datac => \U2|w_t_ms\(0),
	datad => \U2|w_t_ms[0]~0_combout\,
	combout => \U2|w_t_ms[0]~2_combout\);

-- Location: FF_X41_Y26_N23
\U2|w_t_ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_ms[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_ms\(0));

-- Location: LCCOMB_X39_Y26_N10
\U2|w_t_ms[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[1]~4_combout\ = \U2|w_t_ms\(1) $ (((\U2|w_t_ms[0]~0_combout\ & \U2|w_t_ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_ms[0]~0_combout\,
	datac => \U2|w_t_ms\(1),
	datad => \U2|w_t_ms\(0),
	combout => \U2|w_t_ms[1]~4_combout\);

-- Location: FF_X39_Y26_N11
\U2|w_t_ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_ms[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_ms\(1));

-- Location: LCCOMB_X41_Y26_N4
\U2|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add6~0_combout\ = (\U2|w_t_ms\(0) & \U2|w_t_ms\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_ms\(0),
	datac => \U2|w_t_ms\(1),
	combout => \U2|Add6~0_combout\);

-- Location: LCCOMB_X41_Y26_N12
\U2|w_t_ms[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[2]~1_combout\ = (\U2|w_t_ms[0]~0_combout\ & (!\U2|Equal4~0_combout\ & (\U2|Add6~0_combout\ $ (\U2|w_t_ms\(2))))) # (!\U2|w_t_ms[0]~0_combout\ & (((\U2|w_t_ms\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal4~0_combout\,
	datab => \U2|Add6~0_combout\,
	datac => \U2|w_t_ms\(2),
	datad => \U2|w_t_ms[0]~0_combout\,
	combout => \U2|w_t_ms[2]~1_combout\);

-- Location: FF_X41_Y26_N13
\U2|w_t_ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_ms[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_ms\(2));

-- Location: LCCOMB_X41_Y26_N20
\U2|w_t_ms[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[3]~3_combout\ = \U2|w_t_ms\(3) $ (((\U2|w_t_ms\(2) & (\U2|Add6~0_combout\ & \U2|w_t_ms[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_ms\(2),
	datab => \U2|Add6~0_combout\,
	datac => \U2|w_t_ms\(3),
	datad => \U2|w_t_ms[0]~0_combout\,
	combout => \U2|w_t_ms[3]~3_combout\);

-- Location: FF_X41_Y26_N21
\U2|w_t_ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_t_ms[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_t_ms\(3));

-- Location: LCCOMB_X41_Y26_N10
\U2|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal4~0_combout\ = (!\U2|w_t_ms\(0) & (!\U2|w_t_ms\(3) & (!\U2|w_t_ms\(1) & \U2|w_t_ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_ms\(0),
	datab => \U2|w_t_ms\(3),
	datac => \U2|w_t_ms\(1),
	datad => \U2|w_t_ms\(2),
	combout => \U2|Equal4~0_combout\);

-- Location: LCCOMB_X39_Y26_N4
\U2|w_state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~12_combout\ = (\U2|w_state.st_idle~0_combout\ & (((\U2|Equal4~0_combout\) # (!\U2|o_done~0_combout\)) # (!\U2|w_state.st_t_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_idle~0_combout\,
	datab => \U2|w_state.st_t_done~q\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|o_done~0_combout\,
	combout => \U2|w_state~12_combout\);

-- Location: LCCOMB_X39_Y26_N24
\U2|w_state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~15_combout\ = (\U2|w_state~12_combout\ & ((\U2|Selector39~1_combout\) # ((\U2|w_state.st_t_done~q\ & !\U2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector39~1_combout\,
	datab => \U2|w_state~12_combout\,
	datac => \U2|w_state.st_t_done~q\,
	datad => \U2|Selector3~1_combout\,
	combout => \U2|w_state~15_combout\);

-- Location: FF_X39_Y26_N25
\U2|w_state.st_t_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_state~15_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_state.st_t_done~q\);

-- Location: LCCOMB_X38_Y26_N2
\U2|UU1:v_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[3]~1_combout\ = (\U2|w_state.st_timer~q\ & (((\U2|Equal1~8_combout\) # (!\U2|Equal2~0_combout\)) # (!\U2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|w_state.st_timer~q\,
	datac => \U2|Equal1~8_combout\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|UU1:v_count[3]~1_combout\);

-- Location: LCCOMB_X38_Y26_N28
\U2|UU1:v_count[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[3]~2_combout\ = (\i_rst~input_o\ & (!\U2|w_state.st_t_done~q\ & (\U2|w_state.st_idle~q\ & !\U2|UU1:v_count[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => \U2|w_state.st_t_done~q\,
	datac => \U2|w_state.st_idle~q\,
	datad => \U2|UU1:v_count[3]~1_combout\,
	combout => \U2|UU1:v_count[3]~2_combout\);

-- Location: FF_X38_Y26_N23
\U2|UU1:v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|UU1:v_count[1]~1_combout\,
	sclr => \U2|w_state.st_timer~q\,
	ena => \U2|UU1:v_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|UU1:v_count[1]~q\);

-- Location: FF_X38_Y26_N25
\U2|UU1:v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|UU1:v_count[2]~1_combout\,
	sclr => \U2|w_state.st_timer~q\,
	ena => \U2|UU1:v_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|UU1:v_count[2]~q\);

-- Location: LCCOMB_X44_Y26_N6
\U1|w_state.st_idle~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~1_combout\ = (\U1|w_state.st_check_size~q\ & (!\U1|w_state.st_check_type~q\ & !\U1|w_state.st_check_repo~q\)) # (!\U1|w_state.st_check_size~q\ & (\U1|w_state.st_check_type~q\ $ (\U1|w_state.st_check_repo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datac => \U1|w_state.st_check_type~q\,
	datad => \U1|w_state.st_check_repo~q\,
	combout => \U1|w_state.st_idle~1_combout\);

-- Location: LCCOMB_X44_Y26_N28
\U1|w_state.st_idle~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~2_combout\ = (!\U1|w_state.st_check_valv~q\ & (\U1|w_state.st_idle~q\ & (!\U1|w_state.st_check_temp~q\ & !\U1|w_state.st_check_sugar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_valv~q\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|w_state.st_check_temp~q\,
	datad => \U1|w_state.st_check_sugar~q\,
	combout => \U1|w_state.st_idle~2_combout\);

-- Location: LCCOMB_X44_Y26_N22
\U1|w_state.st_idle~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~3_combout\ = (!\U1|w_state.st_check_size~q\ & (!\U1|w_state.st_check_type~q\ & !\U1|w_state.st_check_repo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datac => \U1|w_state.st_check_type~q\,
	datad => \U1|w_state.st_check_repo~q\,
	combout => \U1|w_state.st_idle~3_combout\);

-- Location: LCCOMB_X44_Y26_N24
\U1|w_state.st_idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~0_combout\ = (\U1|w_state.st_check_valv~q\ & (\U1|w_state.st_idle~q\ & (!\U1|w_state.st_check_temp~q\ & !\U1|w_state.st_check_sugar~q\))) # (!\U1|w_state.st_check_valv~q\ & ((\U1|w_state.st_idle~q\ & (\U1|w_state.st_check_temp~q\ $ 
-- (\U1|w_state.st_check_sugar~q\))) # (!\U1|w_state.st_idle~q\ & (!\U1|w_state.st_check_temp~q\ & !\U1|w_state.st_check_sugar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_valv~q\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|w_state.st_check_temp~q\,
	datad => \U1|w_state.st_check_sugar~q\,
	combout => \U1|w_state.st_idle~0_combout\);

-- Location: LCCOMB_X44_Y26_N4
\U1|w_state.st_idle~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~4_combout\ = (\U1|w_state.st_idle~1_combout\ & ((\U1|w_state.st_idle~2_combout\) # ((\U1|w_state.st_idle~3_combout\ & \U1|w_state.st_idle~0_combout\)))) # (!\U1|w_state.st_idle~1_combout\ & (((\U1|w_state.st_idle~3_combout\ & 
-- \U1|w_state.st_idle~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_idle~1_combout\,
	datab => \U1|w_state.st_idle~2_combout\,
	datac => \U1|w_state.st_idle~3_combout\,
	datad => \U1|w_state.st_idle~0_combout\,
	combout => \U1|w_state.st_idle~4_combout\);

-- Location: LCCOMB_X42_Y25_N0
\U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = \U1|UU1:v_res_2[0]~q\ $ (VCC)
-- \U1|Add1~1\ = CARRY(\U1|UU1:v_res_2[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[0]~q\,
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X43_Y27_N30
\U1|UU1:v_res_2[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_2[31]~0_combout\ = (\U1|UU1:v_type[1]~q\ & (\i_prepare~input_o\ & \U1|w_state.st_check_valv~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[1]~q\,
	datac => \i_prepare~input_o\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|UU1:v_res_2[31]~0_combout\);

-- Location: FF_X42_Y25_N1
\U1|UU1:v_res_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[0]~q\);

-- Location: LCCOMB_X42_Y25_N2
\U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|UU1:v_res_2[1]~q\ & (!\U1|Add1~1\)) # (!\U1|UU1:v_res_2[1]~q\ & (\U1|Add1~1\ & VCC))
-- \U1|Add1~3\ = CARRY((\U1|UU1:v_res_2[1]~q\ & !\U1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[1]~q\,
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: LCCOMB_X43_Y25_N12
\U1|UU1:v_res_2[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_2[1]~0_combout\ = !\U1|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~2_combout\,
	combout => \U1|UU1:v_res_2[1]~0_combout\);

-- Location: FF_X43_Y25_N13
\U1|UU1:v_res_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_2[1]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[1]~q\);

-- Location: LCCOMB_X42_Y25_N4
\U1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = (\U1|UU1:v_res_2[2]~q\ & ((GND) # (!\U1|Add1~3\))) # (!\U1|UU1:v_res_2[2]~q\ & (\U1|Add1~3\ $ (GND)))
-- \U1|Add1~5\ = CARRY((\U1|UU1:v_res_2[2]~q\) # (!\U1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[2]~q\,
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: FF_X42_Y25_N5
\U1|UU1:v_res_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~4_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[2]~q\);

-- Location: LCCOMB_X42_Y25_N6
\U1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\U1|UU1:v_res_2[3]~q\ & (!\U1|Add1~5\)) # (!\U1|UU1:v_res_2[3]~q\ & (\U1|Add1~5\ & VCC))
-- \U1|Add1~7\ = CARRY((\U1|UU1:v_res_2[3]~q\ & !\U1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[3]~q\,
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: LCCOMB_X43_Y25_N6
\U1|UU1:v_res_2[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_2[3]~0_combout\ = !\U1|Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~6_combout\,
	combout => \U1|UU1:v_res_2[3]~0_combout\);

-- Location: FF_X43_Y25_N7
\U1|UU1:v_res_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_2[3]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[3]~q\);

-- Location: LCCOMB_X42_Y25_N8
\U1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~8_combout\ = (\U1|UU1:v_res_2[4]~q\ & ((GND) # (!\U1|Add1~7\))) # (!\U1|UU1:v_res_2[4]~q\ & (\U1|Add1~7\ $ (GND)))
-- \U1|Add1~9\ = CARRY((\U1|UU1:v_res_2[4]~q\) # (!\U1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[4]~q\,
	datad => VCC,
	cin => \U1|Add1~7\,
	combout => \U1|Add1~8_combout\,
	cout => \U1|Add1~9\);

-- Location: FF_X42_Y25_N9
\U1|UU1:v_res_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~8_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[4]~q\);

-- Location: LCCOMB_X42_Y25_N10
\U1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~10_combout\ = (\U1|UU1:v_res_2[5]~q\ & (\U1|Add1~9\ & VCC)) # (!\U1|UU1:v_res_2[5]~q\ & (!\U1|Add1~9\))
-- \U1|Add1~11\ = CARRY((!\U1|UU1:v_res_2[5]~q\ & !\U1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[5]~q\,
	datad => VCC,
	cin => \U1|Add1~9\,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~11\);

-- Location: FF_X42_Y25_N11
\U1|UU1:v_res_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~10_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[5]~q\);

-- Location: LCCOMB_X42_Y25_N12
\U1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~12_combout\ = (\U1|UU1:v_res_2[6]~q\ & ((GND) # (!\U1|Add1~11\))) # (!\U1|UU1:v_res_2[6]~q\ & (\U1|Add1~11\ $ (GND)))
-- \U1|Add1~13\ = CARRY((\U1|UU1:v_res_2[6]~q\) # (!\U1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[6]~q\,
	datad => VCC,
	cin => \U1|Add1~11\,
	combout => \U1|Add1~12_combout\,
	cout => \U1|Add1~13\);

-- Location: FF_X42_Y25_N13
\U1|UU1:v_res_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~12_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[6]~q\);

-- Location: LCCOMB_X42_Y25_N14
\U1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = (\U1|UU1:v_res_2[7]~q\ & (\U1|Add1~13\ & VCC)) # (!\U1|UU1:v_res_2[7]~q\ & (!\U1|Add1~13\))
-- \U1|Add1~15\ = CARRY((!\U1|UU1:v_res_2[7]~q\ & !\U1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[7]~q\,
	datad => VCC,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\,
	cout => \U1|Add1~15\);

-- Location: FF_X42_Y25_N15
\U1|UU1:v_res_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~14_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[7]~q\);

-- Location: LCCOMB_X42_Y25_N16
\U1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~16_combout\ = (\U1|UU1:v_res_2[8]~q\ & ((GND) # (!\U1|Add1~15\))) # (!\U1|UU1:v_res_2[8]~q\ & (\U1|Add1~15\ $ (GND)))
-- \U1|Add1~17\ = CARRY((\U1|UU1:v_res_2[8]~q\) # (!\U1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[8]~q\,
	datad => VCC,
	cin => \U1|Add1~15\,
	combout => \U1|Add1~16_combout\,
	cout => \U1|Add1~17\);

-- Location: FF_X42_Y25_N17
\U1|UU1:v_res_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~16_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[8]~q\);

-- Location: LCCOMB_X42_Y25_N18
\U1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~18_combout\ = (\U1|UU1:v_res_2[9]~q\ & (\U1|Add1~17\ & VCC)) # (!\U1|UU1:v_res_2[9]~q\ & (!\U1|Add1~17\))
-- \U1|Add1~19\ = CARRY((!\U1|UU1:v_res_2[9]~q\ & !\U1|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[9]~q\,
	datad => VCC,
	cin => \U1|Add1~17\,
	combout => \U1|Add1~18_combout\,
	cout => \U1|Add1~19\);

-- Location: FF_X42_Y25_N19
\U1|UU1:v_res_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~18_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[9]~q\);

-- Location: LCCOMB_X42_Y25_N20
\U1|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~20_combout\ = (\U1|UU1:v_res_2[10]~q\ & ((GND) # (!\U1|Add1~19\))) # (!\U1|UU1:v_res_2[10]~q\ & (\U1|Add1~19\ $ (GND)))
-- \U1|Add1~21\ = CARRY((\U1|UU1:v_res_2[10]~q\) # (!\U1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[10]~q\,
	datad => VCC,
	cin => \U1|Add1~19\,
	combout => \U1|Add1~20_combout\,
	cout => \U1|Add1~21\);

-- Location: FF_X42_Y25_N21
\U1|UU1:v_res_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~20_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[10]~q\);

-- Location: LCCOMB_X42_Y25_N22
\U1|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~22_combout\ = (\U1|UU1:v_res_2[11]~q\ & (\U1|Add1~21\ & VCC)) # (!\U1|UU1:v_res_2[11]~q\ & (!\U1|Add1~21\))
-- \U1|Add1~23\ = CARRY((!\U1|UU1:v_res_2[11]~q\ & !\U1|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[11]~q\,
	datad => VCC,
	cin => \U1|Add1~21\,
	combout => \U1|Add1~22_combout\,
	cout => \U1|Add1~23\);

-- Location: FF_X42_Y25_N23
\U1|UU1:v_res_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~22_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[11]~q\);

-- Location: LCCOMB_X42_Y25_N24
\U1|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~24_combout\ = (\U1|UU1:v_res_2[12]~q\ & ((GND) # (!\U1|Add1~23\))) # (!\U1|UU1:v_res_2[12]~q\ & (\U1|Add1~23\ $ (GND)))
-- \U1|Add1~25\ = CARRY((\U1|UU1:v_res_2[12]~q\) # (!\U1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[12]~q\,
	datad => VCC,
	cin => \U1|Add1~23\,
	combout => \U1|Add1~24_combout\,
	cout => \U1|Add1~25\);

-- Location: FF_X42_Y25_N25
\U1|UU1:v_res_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~24_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[12]~q\);

-- Location: LCCOMB_X42_Y25_N26
\U1|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~26_combout\ = (\U1|UU1:v_res_2[13]~q\ & (\U1|Add1~25\ & VCC)) # (!\U1|UU1:v_res_2[13]~q\ & (!\U1|Add1~25\))
-- \U1|Add1~27\ = CARRY((!\U1|UU1:v_res_2[13]~q\ & !\U1|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[13]~q\,
	datad => VCC,
	cin => \U1|Add1~25\,
	combout => \U1|Add1~26_combout\,
	cout => \U1|Add1~27\);

-- Location: FF_X42_Y25_N27
\U1|UU1:v_res_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~26_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[13]~q\);

-- Location: LCCOMB_X42_Y25_N28
\U1|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~28_combout\ = (\U1|UU1:v_res_2[14]~q\ & ((GND) # (!\U1|Add1~27\))) # (!\U1|UU1:v_res_2[14]~q\ & (\U1|Add1~27\ $ (GND)))
-- \U1|Add1~29\ = CARRY((\U1|UU1:v_res_2[14]~q\) # (!\U1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[14]~q\,
	datad => VCC,
	cin => \U1|Add1~27\,
	combout => \U1|Add1~28_combout\,
	cout => \U1|Add1~29\);

-- Location: FF_X42_Y25_N29
\U1|UU1:v_res_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~28_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[14]~q\);

-- Location: LCCOMB_X42_Y25_N30
\U1|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~30_combout\ = (\U1|UU1:v_res_2[15]~q\ & (\U1|Add1~29\ & VCC)) # (!\U1|UU1:v_res_2[15]~q\ & (!\U1|Add1~29\))
-- \U1|Add1~31\ = CARRY((!\U1|UU1:v_res_2[15]~q\ & !\U1|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[15]~q\,
	datad => VCC,
	cin => \U1|Add1~29\,
	combout => \U1|Add1~30_combout\,
	cout => \U1|Add1~31\);

-- Location: FF_X42_Y25_N31
\U1|UU1:v_res_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~30_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[15]~q\);

-- Location: LCCOMB_X42_Y24_N0
\U1|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~32_combout\ = (\U1|UU1:v_res_2[16]~q\ & ((GND) # (!\U1|Add1~31\))) # (!\U1|UU1:v_res_2[16]~q\ & (\U1|Add1~31\ $ (GND)))
-- \U1|Add1~33\ = CARRY((\U1|UU1:v_res_2[16]~q\) # (!\U1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[16]~q\,
	datad => VCC,
	cin => \U1|Add1~31\,
	combout => \U1|Add1~32_combout\,
	cout => \U1|Add1~33\);

-- Location: FF_X42_Y24_N1
\U1|UU1:v_res_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~32_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[16]~q\);

-- Location: LCCOMB_X42_Y24_N2
\U1|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~34_combout\ = (\U1|UU1:v_res_2[17]~q\ & (\U1|Add1~33\ & VCC)) # (!\U1|UU1:v_res_2[17]~q\ & (!\U1|Add1~33\))
-- \U1|Add1~35\ = CARRY((!\U1|UU1:v_res_2[17]~q\ & !\U1|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[17]~q\,
	datad => VCC,
	cin => \U1|Add1~33\,
	combout => \U1|Add1~34_combout\,
	cout => \U1|Add1~35\);

-- Location: FF_X42_Y24_N3
\U1|UU1:v_res_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~34_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[17]~q\);

-- Location: LCCOMB_X42_Y24_N4
\U1|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~36_combout\ = (\U1|UU1:v_res_2[18]~q\ & ((GND) # (!\U1|Add1~35\))) # (!\U1|UU1:v_res_2[18]~q\ & (\U1|Add1~35\ $ (GND)))
-- \U1|Add1~37\ = CARRY((\U1|UU1:v_res_2[18]~q\) # (!\U1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[18]~q\,
	datad => VCC,
	cin => \U1|Add1~35\,
	combout => \U1|Add1~36_combout\,
	cout => \U1|Add1~37\);

-- Location: FF_X42_Y24_N5
\U1|UU1:v_res_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~36_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[18]~q\);

-- Location: LCCOMB_X42_Y24_N6
\U1|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~38_combout\ = (\U1|UU1:v_res_2[19]~q\ & (\U1|Add1~37\ & VCC)) # (!\U1|UU1:v_res_2[19]~q\ & (!\U1|Add1~37\))
-- \U1|Add1~39\ = CARRY((!\U1|UU1:v_res_2[19]~q\ & !\U1|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[19]~q\,
	datad => VCC,
	cin => \U1|Add1~37\,
	combout => \U1|Add1~38_combout\,
	cout => \U1|Add1~39\);

-- Location: FF_X42_Y24_N7
\U1|UU1:v_res_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~38_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[19]~q\);

-- Location: LCCOMB_X42_Y24_N8
\U1|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~40_combout\ = (\U1|UU1:v_res_2[20]~q\ & ((GND) # (!\U1|Add1~39\))) # (!\U1|UU1:v_res_2[20]~q\ & (\U1|Add1~39\ $ (GND)))
-- \U1|Add1~41\ = CARRY((\U1|UU1:v_res_2[20]~q\) # (!\U1|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[20]~q\,
	datad => VCC,
	cin => \U1|Add1~39\,
	combout => \U1|Add1~40_combout\,
	cout => \U1|Add1~41\);

-- Location: FF_X42_Y24_N9
\U1|UU1:v_res_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~40_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[20]~q\);

-- Location: LCCOMB_X42_Y24_N10
\U1|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~42_combout\ = (\U1|UU1:v_res_2[21]~q\ & (\U1|Add1~41\ & VCC)) # (!\U1|UU1:v_res_2[21]~q\ & (!\U1|Add1~41\))
-- \U1|Add1~43\ = CARRY((!\U1|UU1:v_res_2[21]~q\ & !\U1|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[21]~q\,
	datad => VCC,
	cin => \U1|Add1~41\,
	combout => \U1|Add1~42_combout\,
	cout => \U1|Add1~43\);

-- Location: FF_X42_Y24_N11
\U1|UU1:v_res_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~42_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[21]~q\);

-- Location: LCCOMB_X42_Y24_N12
\U1|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~44_combout\ = (\U1|UU1:v_res_2[22]~q\ & ((GND) # (!\U1|Add1~43\))) # (!\U1|UU1:v_res_2[22]~q\ & (\U1|Add1~43\ $ (GND)))
-- \U1|Add1~45\ = CARRY((\U1|UU1:v_res_2[22]~q\) # (!\U1|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[22]~q\,
	datad => VCC,
	cin => \U1|Add1~43\,
	combout => \U1|Add1~44_combout\,
	cout => \U1|Add1~45\);

-- Location: FF_X42_Y24_N13
\U1|UU1:v_res_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~44_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[22]~q\);

-- Location: LCCOMB_X42_Y24_N14
\U1|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~46_combout\ = (\U1|UU1:v_res_2[23]~q\ & (\U1|Add1~45\ & VCC)) # (!\U1|UU1:v_res_2[23]~q\ & (!\U1|Add1~45\))
-- \U1|Add1~47\ = CARRY((!\U1|UU1:v_res_2[23]~q\ & !\U1|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[23]~q\,
	datad => VCC,
	cin => \U1|Add1~45\,
	combout => \U1|Add1~46_combout\,
	cout => \U1|Add1~47\);

-- Location: FF_X42_Y24_N15
\U1|UU1:v_res_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~46_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[23]~q\);

-- Location: LCCOMB_X42_Y24_N16
\U1|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~48_combout\ = (\U1|UU1:v_res_2[24]~q\ & ((GND) # (!\U1|Add1~47\))) # (!\U1|UU1:v_res_2[24]~q\ & (\U1|Add1~47\ $ (GND)))
-- \U1|Add1~49\ = CARRY((\U1|UU1:v_res_2[24]~q\) # (!\U1|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[24]~q\,
	datad => VCC,
	cin => \U1|Add1~47\,
	combout => \U1|Add1~48_combout\,
	cout => \U1|Add1~49\);

-- Location: FF_X42_Y24_N17
\U1|UU1:v_res_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~48_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[24]~q\);

-- Location: LCCOMB_X42_Y24_N18
\U1|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~50_combout\ = (\U1|UU1:v_res_2[25]~q\ & (\U1|Add1~49\ & VCC)) # (!\U1|UU1:v_res_2[25]~q\ & (!\U1|Add1~49\))
-- \U1|Add1~51\ = CARRY((!\U1|UU1:v_res_2[25]~q\ & !\U1|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[25]~q\,
	datad => VCC,
	cin => \U1|Add1~49\,
	combout => \U1|Add1~50_combout\,
	cout => \U1|Add1~51\);

-- Location: FF_X42_Y24_N19
\U1|UU1:v_res_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~50_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[25]~q\);

-- Location: LCCOMB_X42_Y24_N20
\U1|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~52_combout\ = (\U1|UU1:v_res_2[26]~q\ & ((GND) # (!\U1|Add1~51\))) # (!\U1|UU1:v_res_2[26]~q\ & (\U1|Add1~51\ $ (GND)))
-- \U1|Add1~53\ = CARRY((\U1|UU1:v_res_2[26]~q\) # (!\U1|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[26]~q\,
	datad => VCC,
	cin => \U1|Add1~51\,
	combout => \U1|Add1~52_combout\,
	cout => \U1|Add1~53\);

-- Location: FF_X42_Y24_N21
\U1|UU1:v_res_2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~52_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[26]~q\);

-- Location: LCCOMB_X42_Y24_N22
\U1|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~54_combout\ = (\U1|UU1:v_res_2[27]~q\ & (\U1|Add1~53\ & VCC)) # (!\U1|UU1:v_res_2[27]~q\ & (!\U1|Add1~53\))
-- \U1|Add1~55\ = CARRY((!\U1|UU1:v_res_2[27]~q\ & !\U1|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[27]~q\,
	datad => VCC,
	cin => \U1|Add1~53\,
	combout => \U1|Add1~54_combout\,
	cout => \U1|Add1~55\);

-- Location: FF_X42_Y24_N23
\U1|UU1:v_res_2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~54_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[27]~q\);

-- Location: LCCOMB_X43_Y24_N22
\U1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~1_combout\ = (!\U1|UU1:v_res_2[24]~q\ & (!\U1|UU1:v_res_2[26]~q\ & (!\U1|UU1:v_res_2[25]~q\ & !\U1|UU1:v_res_2[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[24]~q\,
	datab => \U1|UU1:v_res_2[26]~q\,
	datac => \U1|UU1:v_res_2[25]~q\,
	datad => \U1|UU1:v_res_2[27]~q\,
	combout => \U1|Equal3~1_combout\);

-- Location: LCCOMB_X43_Y24_N18
\U1|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~3_combout\ = (!\U1|UU1:v_res_2[17]~q\ & (!\U1|UU1:v_res_2[19]~q\ & (!\U1|UU1:v_res_2[16]~q\ & !\U1|UU1:v_res_2[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[17]~q\,
	datab => \U1|UU1:v_res_2[19]~q\,
	datac => \U1|UU1:v_res_2[16]~q\,
	datad => \U1|UU1:v_res_2[18]~q\,
	combout => \U1|Equal3~3_combout\);

-- Location: LCCOMB_X42_Y24_N24
\U1|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~56_combout\ = (\U1|UU1:v_res_2[28]~q\ & ((GND) # (!\U1|Add1~55\))) # (!\U1|UU1:v_res_2[28]~q\ & (\U1|Add1~55\ $ (GND)))
-- \U1|Add1~57\ = CARRY((\U1|UU1:v_res_2[28]~q\) # (!\U1|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[28]~q\,
	datad => VCC,
	cin => \U1|Add1~55\,
	combout => \U1|Add1~56_combout\,
	cout => \U1|Add1~57\);

-- Location: FF_X42_Y24_N25
\U1|UU1:v_res_2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~56_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[28]~q\);

-- Location: LCCOMB_X42_Y24_N26
\U1|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~58_combout\ = (\U1|UU1:v_res_2[29]~q\ & (\U1|Add1~57\ & VCC)) # (!\U1|UU1:v_res_2[29]~q\ & (!\U1|Add1~57\))
-- \U1|Add1~59\ = CARRY((!\U1|UU1:v_res_2[29]~q\ & !\U1|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[29]~q\,
	datad => VCC,
	cin => \U1|Add1~57\,
	combout => \U1|Add1~58_combout\,
	cout => \U1|Add1~59\);

-- Location: FF_X42_Y24_N27
\U1|UU1:v_res_2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~58_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[29]~q\);

-- Location: LCCOMB_X42_Y24_N28
\U1|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~60_combout\ = (\U1|UU1:v_res_2[30]~q\ & ((GND) # (!\U1|Add1~59\))) # (!\U1|UU1:v_res_2[30]~q\ & (\U1|Add1~59\ $ (GND)))
-- \U1|Add1~61\ = CARRY((\U1|UU1:v_res_2[30]~q\) # (!\U1|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_2[30]~q\,
	datad => VCC,
	cin => \U1|Add1~59\,
	combout => \U1|Add1~60_combout\,
	cout => \U1|Add1~61\);

-- Location: FF_X42_Y24_N29
\U1|UU1:v_res_2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~60_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[30]~q\);

-- Location: LCCOMB_X42_Y24_N30
\U1|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~62_combout\ = \U1|UU1:v_res_2[31]~q\ $ (!\U1|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[31]~q\,
	cin => \U1|Add1~61\,
	combout => \U1|Add1~62_combout\);

-- Location: FF_X42_Y24_N31
\U1|UU1:v_res_2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add1~62_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_2[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_2[31]~q\);

-- Location: LCCOMB_X43_Y24_N8
\U1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~0_combout\ = (!\U1|UU1:v_res_2[29]~q\ & (!\U1|UU1:v_res_2[31]~q\ & (!\U1|UU1:v_res_2[30]~q\ & !\U1|UU1:v_res_2[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[29]~q\,
	datab => \U1|UU1:v_res_2[31]~q\,
	datac => \U1|UU1:v_res_2[30]~q\,
	datad => \U1|UU1:v_res_2[28]~q\,
	combout => \U1|Equal3~0_combout\);

-- Location: LCCOMB_X43_Y24_N0
\U1|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~2_combout\ = (!\U1|UU1:v_res_2[23]~q\ & (!\U1|UU1:v_res_2[21]~q\ & (!\U1|UU1:v_res_2[20]~q\ & !\U1|UU1:v_res_2[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[23]~q\,
	datab => \U1|UU1:v_res_2[21]~q\,
	datac => \U1|UU1:v_res_2[20]~q\,
	datad => \U1|UU1:v_res_2[22]~q\,
	combout => \U1|Equal3~2_combout\);

-- Location: LCCOMB_X43_Y24_N16
\U1|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~4_combout\ = (\U1|Equal3~1_combout\ & (\U1|Equal3~3_combout\ & (\U1|Equal3~0_combout\ & \U1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal3~1_combout\,
	datab => \U1|Equal3~3_combout\,
	datac => \U1|Equal3~0_combout\,
	datad => \U1|Equal3~2_combout\,
	combout => \U1|Equal3~4_combout\);

-- Location: LCCOMB_X43_Y25_N22
\U1|Equal3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~6_combout\ = (!\U1|UU1:v_res_2[8]~q\ & (!\U1|UU1:v_res_2[11]~q\ & (!\U1|UU1:v_res_2[9]~q\ & !\U1|UU1:v_res_2[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[8]~q\,
	datab => \U1|UU1:v_res_2[11]~q\,
	datac => \U1|UU1:v_res_2[9]~q\,
	datad => \U1|UU1:v_res_2[10]~q\,
	combout => \U1|Equal3~6_combout\);

-- Location: LCCOMB_X43_Y25_N28
\U1|Equal3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~7_combout\ = (!\U1|UU1:v_res_2[7]~q\ & (!\U1|UU1:v_res_2[6]~q\ & (!\U1|UU1:v_res_2[4]~q\ & !\U1|UU1:v_res_2[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[7]~q\,
	datab => \U1|UU1:v_res_2[6]~q\,
	datac => \U1|UU1:v_res_2[4]~q\,
	datad => \U1|UU1:v_res_2[5]~q\,
	combout => \U1|Equal3~7_combout\);

-- Location: LCCOMB_X43_Y25_N4
\U1|Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~5_combout\ = (!\U1|UU1:v_res_2[13]~q\ & (!\U1|UU1:v_res_2[15]~q\ & (!\U1|UU1:v_res_2[14]~q\ & !\U1|UU1:v_res_2[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[13]~q\,
	datab => \U1|UU1:v_res_2[15]~q\,
	datac => \U1|UU1:v_res_2[14]~q\,
	datad => \U1|UU1:v_res_2[12]~q\,
	combout => \U1|Equal3~5_combout\);

-- Location: LCCOMB_X43_Y25_N18
\U1|Equal3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~8_combout\ = (\U1|UU1:v_res_2[1]~q\ & (!\U1|UU1:v_res_2[2]~q\ & (!\U1|UU1:v_res_2[0]~q\ & \U1|UU1:v_res_2[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_2[1]~q\,
	datab => \U1|UU1:v_res_2[2]~q\,
	datac => \U1|UU1:v_res_2[0]~q\,
	datad => \U1|UU1:v_res_2[3]~q\,
	combout => \U1|Equal3~8_combout\);

-- Location: LCCOMB_X43_Y25_N8
\U1|Equal3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~9_combout\ = (\U1|Equal3~6_combout\ & (\U1|Equal3~7_combout\ & (\U1|Equal3~5_combout\ & \U1|Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal3~6_combout\,
	datab => \U1|Equal3~7_combout\,
	datac => \U1|Equal3~5_combout\,
	datad => \U1|Equal3~8_combout\,
	combout => \U1|Equal3~9_combout\);

-- Location: LCCOMB_X44_Y25_N0
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|UU1:v_res_1[0]~q\ $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|UU1:v_res_1[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[0]~q\,
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X43_Y27_N4
\U1|UU1:v_res_1[31]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_1[31]~1_combout\ = (\i_prepare~input_o\ & (\U1|w_state.st_check_valv~q\ & ((\U1|UU1:v_type[0]~q\) # (\U1|UU1:v_type[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_prepare~input_o\,
	datab => \U1|UU1:v_type[0]~q\,
	datac => \U1|UU1:v_type[1]~q\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|UU1:v_res_1[31]~1_combout\);

-- Location: FF_X44_Y25_N1
\U1|UU1:v_res_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[0]~q\);

-- Location: LCCOMB_X44_Y25_N2
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|UU1:v_res_1[1]~q\ & (!\U1|Add0~1\)) # (!\U1|UU1:v_res_1[1]~q\ & (\U1|Add0~1\ & VCC))
-- \U1|Add0~3\ = CARRY((\U1|UU1:v_res_1[1]~q\ & !\U1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[1]~q\,
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X45_Y25_N0
\U1|UU1:v_res_1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_1[1]~0_combout\ = !\U1|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add0~2_combout\,
	combout => \U1|UU1:v_res_1[1]~0_combout\);

-- Location: FF_X44_Y25_N3
\U1|UU1:v_res_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|UU1:v_res_1[1]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[1]~q\);

-- Location: LCCOMB_X44_Y25_N4
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|UU1:v_res_1[2]~q\ & ((GND) # (!\U1|Add0~3\))) # (!\U1|UU1:v_res_1[2]~q\ & (\U1|Add0~3\ $ (GND)))
-- \U1|Add0~5\ = CARRY((\U1|UU1:v_res_1[2]~q\) # (!\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[2]~q\,
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X44_Y25_N5
\U1|UU1:v_res_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[2]~q\);

-- Location: LCCOMB_X44_Y25_N6
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|UU1:v_res_1[3]~q\ & (!\U1|Add0~5\)) # (!\U1|UU1:v_res_1[3]~q\ & (\U1|Add0~5\ & VCC))
-- \U1|Add0~7\ = CARRY((\U1|UU1:v_res_1[3]~q\ & !\U1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[3]~q\,
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X45_Y25_N6
\U1|UU1:v_res_1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_1[3]~0_combout\ = !\U1|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add0~6_combout\,
	combout => \U1|UU1:v_res_1[3]~0_combout\);

-- Location: FF_X45_Y25_N7
\U1|UU1:v_res_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_1[3]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[3]~q\);

-- Location: LCCOMB_X44_Y25_N8
\U1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|UU1:v_res_1[4]~q\ & ((GND) # (!\U1|Add0~7\))) # (!\U1|UU1:v_res_1[4]~q\ & (\U1|Add0~7\ $ (GND)))
-- \U1|Add0~9\ = CARRY((\U1|UU1:v_res_1[4]~q\) # (!\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[4]~q\,
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X44_Y25_N9
\U1|UU1:v_res_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[4]~q\);

-- Location: LCCOMB_X44_Y25_N10
\U1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|UU1:v_res_1[5]~q\ & (\U1|Add0~9\ & VCC)) # (!\U1|UU1:v_res_1[5]~q\ & (!\U1|Add0~9\))
-- \U1|Add0~11\ = CARRY((!\U1|UU1:v_res_1[5]~q\ & !\U1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[5]~q\,
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X44_Y25_N11
\U1|UU1:v_res_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[5]~q\);

-- Location: LCCOMB_X44_Y25_N12
\U1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|UU1:v_res_1[6]~q\ & ((GND) # (!\U1|Add0~11\))) # (!\U1|UU1:v_res_1[6]~q\ & (\U1|Add0~11\ $ (GND)))
-- \U1|Add0~13\ = CARRY((\U1|UU1:v_res_1[6]~q\) # (!\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[6]~q\,
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X44_Y25_N13
\U1|UU1:v_res_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[6]~q\);

-- Location: LCCOMB_X44_Y25_N14
\U1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|UU1:v_res_1[7]~q\ & (\U1|Add0~13\ & VCC)) # (!\U1|UU1:v_res_1[7]~q\ & (!\U1|Add0~13\))
-- \U1|Add0~15\ = CARRY((!\U1|UU1:v_res_1[7]~q\ & !\U1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[7]~q\,
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X44_Y25_N15
\U1|UU1:v_res_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[7]~q\);

-- Location: LCCOMB_X44_Y25_N16
\U1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|UU1:v_res_1[8]~q\ & ((GND) # (!\U1|Add0~15\))) # (!\U1|UU1:v_res_1[8]~q\ & (\U1|Add0~15\ $ (GND)))
-- \U1|Add0~17\ = CARRY((\U1|UU1:v_res_1[8]~q\) # (!\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[8]~q\,
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X44_Y25_N17
\U1|UU1:v_res_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[8]~q\);

-- Location: LCCOMB_X44_Y25_N18
\U1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|UU1:v_res_1[9]~q\ & (\U1|Add0~17\ & VCC)) # (!\U1|UU1:v_res_1[9]~q\ & (!\U1|Add0~17\))
-- \U1|Add0~19\ = CARRY((!\U1|UU1:v_res_1[9]~q\ & !\U1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[9]~q\,
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X44_Y25_N19
\U1|UU1:v_res_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[9]~q\);

-- Location: LCCOMB_X44_Y25_N20
\U1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|UU1:v_res_1[10]~q\ & ((GND) # (!\U1|Add0~19\))) # (!\U1|UU1:v_res_1[10]~q\ & (\U1|Add0~19\ $ (GND)))
-- \U1|Add0~21\ = CARRY((\U1|UU1:v_res_1[10]~q\) # (!\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[10]~q\,
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X44_Y25_N21
\U1|UU1:v_res_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[10]~q\);

-- Location: LCCOMB_X44_Y25_N22
\U1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|UU1:v_res_1[11]~q\ & (\U1|Add0~21\ & VCC)) # (!\U1|UU1:v_res_1[11]~q\ & (!\U1|Add0~21\))
-- \U1|Add0~23\ = CARRY((!\U1|UU1:v_res_1[11]~q\ & !\U1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[11]~q\,
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X44_Y25_N23
\U1|UU1:v_res_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[11]~q\);

-- Location: LCCOMB_X44_Y25_N24
\U1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|UU1:v_res_1[12]~q\ & ((GND) # (!\U1|Add0~23\))) # (!\U1|UU1:v_res_1[12]~q\ & (\U1|Add0~23\ $ (GND)))
-- \U1|Add0~25\ = CARRY((\U1|UU1:v_res_1[12]~q\) # (!\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[12]~q\,
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: FF_X44_Y25_N25
\U1|UU1:v_res_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~24_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[12]~q\);

-- Location: LCCOMB_X44_Y25_N26
\U1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|UU1:v_res_1[13]~q\ & (\U1|Add0~25\ & VCC)) # (!\U1|UU1:v_res_1[13]~q\ & (!\U1|Add0~25\))
-- \U1|Add0~27\ = CARRY((!\U1|UU1:v_res_1[13]~q\ & !\U1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[13]~q\,
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: FF_X44_Y25_N27
\U1|UU1:v_res_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~26_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[13]~q\);

-- Location: LCCOMB_X44_Y25_N28
\U1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|UU1:v_res_1[14]~q\ & ((GND) # (!\U1|Add0~27\))) # (!\U1|UU1:v_res_1[14]~q\ & (\U1|Add0~27\ $ (GND)))
-- \U1|Add0~29\ = CARRY((\U1|UU1:v_res_1[14]~q\) # (!\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[14]~q\,
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: FF_X44_Y25_N29
\U1|UU1:v_res_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~28_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[14]~q\);

-- Location: LCCOMB_X44_Y25_N30
\U1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|UU1:v_res_1[15]~q\ & (\U1|Add0~29\ & VCC)) # (!\U1|UU1:v_res_1[15]~q\ & (!\U1|Add0~29\))
-- \U1|Add0~31\ = CARRY((!\U1|UU1:v_res_1[15]~q\ & !\U1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[15]~q\,
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: FF_X44_Y25_N31
\U1|UU1:v_res_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~30_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[15]~q\);

-- Location: LCCOMB_X44_Y24_N0
\U1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|UU1:v_res_1[16]~q\ & ((GND) # (!\U1|Add0~31\))) # (!\U1|UU1:v_res_1[16]~q\ & (\U1|Add0~31\ $ (GND)))
-- \U1|Add0~33\ = CARRY((\U1|UU1:v_res_1[16]~q\) # (!\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[16]~q\,
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: FF_X44_Y24_N1
\U1|UU1:v_res_1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~32_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[16]~q\);

-- Location: LCCOMB_X44_Y24_N2
\U1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|UU1:v_res_1[17]~q\ & (\U1|Add0~33\ & VCC)) # (!\U1|UU1:v_res_1[17]~q\ & (!\U1|Add0~33\))
-- \U1|Add0~35\ = CARRY((!\U1|UU1:v_res_1[17]~q\ & !\U1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[17]~q\,
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: FF_X44_Y24_N3
\U1|UU1:v_res_1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~34_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[17]~q\);

-- Location: LCCOMB_X44_Y24_N4
\U1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|UU1:v_res_1[18]~q\ & ((GND) # (!\U1|Add0~35\))) # (!\U1|UU1:v_res_1[18]~q\ & (\U1|Add0~35\ $ (GND)))
-- \U1|Add0~37\ = CARRY((\U1|UU1:v_res_1[18]~q\) # (!\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[18]~q\,
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: FF_X44_Y24_N5
\U1|UU1:v_res_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~36_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[18]~q\);

-- Location: LCCOMB_X44_Y24_N6
\U1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|UU1:v_res_1[19]~q\ & (\U1|Add0~37\ & VCC)) # (!\U1|UU1:v_res_1[19]~q\ & (!\U1|Add0~37\))
-- \U1|Add0~39\ = CARRY((!\U1|UU1:v_res_1[19]~q\ & !\U1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[19]~q\,
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: FF_X44_Y24_N7
\U1|UU1:v_res_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~38_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[19]~q\);

-- Location: LCCOMB_X44_Y24_N8
\U1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = (\U1|UU1:v_res_1[20]~q\ & ((GND) # (!\U1|Add0~39\))) # (!\U1|UU1:v_res_1[20]~q\ & (\U1|Add0~39\ $ (GND)))
-- \U1|Add0~41\ = CARRY((\U1|UU1:v_res_1[20]~q\) # (!\U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[20]~q\,
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: FF_X44_Y24_N9
\U1|UU1:v_res_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~40_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[20]~q\);

-- Location: LCCOMB_X44_Y24_N10
\U1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|UU1:v_res_1[21]~q\ & (\U1|Add0~41\ & VCC)) # (!\U1|UU1:v_res_1[21]~q\ & (!\U1|Add0~41\))
-- \U1|Add0~43\ = CARRY((!\U1|UU1:v_res_1[21]~q\ & !\U1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[21]~q\,
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: FF_X44_Y24_N11
\U1|UU1:v_res_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~42_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[21]~q\);

-- Location: LCCOMB_X44_Y24_N12
\U1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|UU1:v_res_1[22]~q\ & ((GND) # (!\U1|Add0~43\))) # (!\U1|UU1:v_res_1[22]~q\ & (\U1|Add0~43\ $ (GND)))
-- \U1|Add0~45\ = CARRY((\U1|UU1:v_res_1[22]~q\) # (!\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[22]~q\,
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: FF_X44_Y24_N13
\U1|UU1:v_res_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~44_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[22]~q\);

-- Location: LCCOMB_X44_Y24_N14
\U1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|UU1:v_res_1[23]~q\ & (\U1|Add0~45\ & VCC)) # (!\U1|UU1:v_res_1[23]~q\ & (!\U1|Add0~45\))
-- \U1|Add0~47\ = CARRY((!\U1|UU1:v_res_1[23]~q\ & !\U1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[23]~q\,
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: FF_X44_Y24_N15
\U1|UU1:v_res_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~46_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[23]~q\);

-- Location: LCCOMB_X44_Y24_N16
\U1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = (\U1|UU1:v_res_1[24]~q\ & ((GND) # (!\U1|Add0~47\))) # (!\U1|UU1:v_res_1[24]~q\ & (\U1|Add0~47\ $ (GND)))
-- \U1|Add0~49\ = CARRY((\U1|UU1:v_res_1[24]~q\) # (!\U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[24]~q\,
	datad => VCC,
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\,
	cout => \U1|Add0~49\);

-- Location: FF_X44_Y24_N17
\U1|UU1:v_res_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~48_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[24]~q\);

-- Location: LCCOMB_X44_Y24_N18
\U1|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~50_combout\ = (\U1|UU1:v_res_1[25]~q\ & (\U1|Add0~49\ & VCC)) # (!\U1|UU1:v_res_1[25]~q\ & (!\U1|Add0~49\))
-- \U1|Add0~51\ = CARRY((!\U1|UU1:v_res_1[25]~q\ & !\U1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[25]~q\,
	datad => VCC,
	cin => \U1|Add0~49\,
	combout => \U1|Add0~50_combout\,
	cout => \U1|Add0~51\);

-- Location: FF_X44_Y24_N19
\U1|UU1:v_res_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~50_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[25]~q\);

-- Location: LCCOMB_X44_Y24_N20
\U1|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~52_combout\ = (\U1|UU1:v_res_1[26]~q\ & ((GND) # (!\U1|Add0~51\))) # (!\U1|UU1:v_res_1[26]~q\ & (\U1|Add0~51\ $ (GND)))
-- \U1|Add0~53\ = CARRY((\U1|UU1:v_res_1[26]~q\) # (!\U1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[26]~q\,
	datad => VCC,
	cin => \U1|Add0~51\,
	combout => \U1|Add0~52_combout\,
	cout => \U1|Add0~53\);

-- Location: FF_X44_Y24_N21
\U1|UU1:v_res_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~52_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[26]~q\);

-- Location: LCCOMB_X44_Y24_N22
\U1|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~54_combout\ = (\U1|UU1:v_res_1[27]~q\ & (\U1|Add0~53\ & VCC)) # (!\U1|UU1:v_res_1[27]~q\ & (!\U1|Add0~53\))
-- \U1|Add0~55\ = CARRY((!\U1|UU1:v_res_1[27]~q\ & !\U1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[27]~q\,
	datad => VCC,
	cin => \U1|Add0~53\,
	combout => \U1|Add0~54_combout\,
	cout => \U1|Add0~55\);

-- Location: FF_X44_Y24_N23
\U1|UU1:v_res_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~54_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[27]~q\);

-- Location: LCCOMB_X45_Y24_N22
\U1|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~1_combout\ = (!\U1|UU1:v_res_1[24]~q\ & (!\U1|UU1:v_res_1[26]~q\ & (!\U1|UU1:v_res_1[27]~q\ & !\U1|UU1:v_res_1[25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[24]~q\,
	datab => \U1|UU1:v_res_1[26]~q\,
	datac => \U1|UU1:v_res_1[27]~q\,
	datad => \U1|UU1:v_res_1[25]~q\,
	combout => \U1|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y24_N18
\U1|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~3_combout\ = (!\U1|UU1:v_res_1[17]~q\ & (!\U1|UU1:v_res_1[19]~q\ & (!\U1|UU1:v_res_1[16]~q\ & !\U1|UU1:v_res_1[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[17]~q\,
	datab => \U1|UU1:v_res_1[19]~q\,
	datac => \U1|UU1:v_res_1[16]~q\,
	datad => \U1|UU1:v_res_1[18]~q\,
	combout => \U1|Equal2~3_combout\);

-- Location: LCCOMB_X44_Y24_N24
\U1|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~56_combout\ = (\U1|UU1:v_res_1[28]~q\ & ((GND) # (!\U1|Add0~55\))) # (!\U1|UU1:v_res_1[28]~q\ & (\U1|Add0~55\ $ (GND)))
-- \U1|Add0~57\ = CARRY((\U1|UU1:v_res_1[28]~q\) # (!\U1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[28]~q\,
	datad => VCC,
	cin => \U1|Add0~55\,
	combout => \U1|Add0~56_combout\,
	cout => \U1|Add0~57\);

-- Location: FF_X44_Y24_N25
\U1|UU1:v_res_1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~56_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[28]~q\);

-- Location: LCCOMB_X44_Y24_N26
\U1|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~58_combout\ = (\U1|UU1:v_res_1[29]~q\ & (\U1|Add0~57\ & VCC)) # (!\U1|UU1:v_res_1[29]~q\ & (!\U1|Add0~57\))
-- \U1|Add0~59\ = CARRY((!\U1|UU1:v_res_1[29]~q\ & !\U1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[29]~q\,
	datad => VCC,
	cin => \U1|Add0~57\,
	combout => \U1|Add0~58_combout\,
	cout => \U1|Add0~59\);

-- Location: FF_X44_Y24_N27
\U1|UU1:v_res_1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~58_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[29]~q\);

-- Location: LCCOMB_X44_Y24_N28
\U1|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~60_combout\ = (\U1|UU1:v_res_1[30]~q\ & ((GND) # (!\U1|Add0~59\))) # (!\U1|UU1:v_res_1[30]~q\ & (\U1|Add0~59\ $ (GND)))
-- \U1|Add0~61\ = CARRY((\U1|UU1:v_res_1[30]~q\) # (!\U1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_1[30]~q\,
	datad => VCC,
	cin => \U1|Add0~59\,
	combout => \U1|Add0~60_combout\,
	cout => \U1|Add0~61\);

-- Location: FF_X44_Y24_N29
\U1|UU1:v_res_1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~60_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[30]~q\);

-- Location: LCCOMB_X44_Y24_N30
\U1|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~62_combout\ = \U1|UU1:v_res_1[31]~q\ $ (!\U1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[31]~q\,
	cin => \U1|Add0~61\,
	combout => \U1|Add0~62_combout\);

-- Location: FF_X44_Y24_N31
\U1|UU1:v_res_1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~62_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_1[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_1[31]~q\);

-- Location: LCCOMB_X45_Y24_N8
\U1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~0_combout\ = (!\U1|UU1:v_res_1[29]~q\ & (!\U1|UU1:v_res_1[31]~q\ & (!\U1|UU1:v_res_1[28]~q\ & !\U1|UU1:v_res_1[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[29]~q\,
	datab => \U1|UU1:v_res_1[31]~q\,
	datac => \U1|UU1:v_res_1[28]~q\,
	datad => \U1|UU1:v_res_1[30]~q\,
	combout => \U1|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y24_N0
\U1|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~2_combout\ = (!\U1|UU1:v_res_1[23]~q\ & (!\U1|UU1:v_res_1[20]~q\ & (!\U1|UU1:v_res_1[22]~q\ & !\U1|UU1:v_res_1[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[23]~q\,
	datab => \U1|UU1:v_res_1[20]~q\,
	datac => \U1|UU1:v_res_1[22]~q\,
	datad => \U1|UU1:v_res_1[21]~q\,
	combout => \U1|Equal2~2_combout\);

-- Location: LCCOMB_X45_Y24_N20
\U1|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~4_combout\ = (\U1|Equal2~1_combout\ & (\U1|Equal2~3_combout\ & (\U1|Equal2~0_combout\ & \U1|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal2~1_combout\,
	datab => \U1|Equal2~3_combout\,
	datac => \U1|Equal2~0_combout\,
	datad => \U1|Equal2~2_combout\,
	combout => \U1|Equal2~4_combout\);

-- Location: LCCOMB_X45_Y25_N12
\U1|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~5_combout\ = (!\U1|UU1:v_res_1[13]~q\ & (!\U1|UU1:v_res_1[15]~q\ & (!\U1|UU1:v_res_1[12]~q\ & !\U1|UU1:v_res_1[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[13]~q\,
	datab => \U1|UU1:v_res_1[15]~q\,
	datac => \U1|UU1:v_res_1[12]~q\,
	datad => \U1|UU1:v_res_1[14]~q\,
	combout => \U1|Equal2~5_combout\);

-- Location: LCCOMB_X45_Y25_N16
\U1|Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~7_combout\ = (!\U1|UU1:v_res_1[7]~q\ & (!\U1|UU1:v_res_1[5]~q\ & (!\U1|UU1:v_res_1[6]~q\ & !\U1|UU1:v_res_1[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[7]~q\,
	datab => \U1|UU1:v_res_1[5]~q\,
	datac => \U1|UU1:v_res_1[6]~q\,
	datad => \U1|UU1:v_res_1[4]~q\,
	combout => \U1|Equal2~7_combout\);

-- Location: LCCOMB_X45_Y25_N14
\U1|Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~6_combout\ = (!\U1|UU1:v_res_1[8]~q\ & (!\U1|UU1:v_res_1[11]~q\ & (!\U1|UU1:v_res_1[10]~q\ & !\U1|UU1:v_res_1[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[8]~q\,
	datab => \U1|UU1:v_res_1[11]~q\,
	datac => \U1|UU1:v_res_1[10]~q\,
	datad => \U1|UU1:v_res_1[9]~q\,
	combout => \U1|Equal2~6_combout\);

-- Location: LCCOMB_X45_Y25_N24
\U1|Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~8_combout\ = (\U1|UU1:v_res_1[3]~q\ & (!\U1|UU1:v_res_1[2]~q\ & (!\U1|UU1:v_res_1[0]~q\ & \U1|UU1:v_res_1[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[3]~q\,
	datab => \U1|UU1:v_res_1[2]~q\,
	datac => \U1|UU1:v_res_1[0]~q\,
	datad => \U1|UU1:v_res_1[1]~q\,
	combout => \U1|Equal2~8_combout\);

-- Location: LCCOMB_X45_Y25_N2
\U1|Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal2~9_combout\ = (\U1|Equal2~5_combout\ & (\U1|Equal2~7_combout\ & (\U1|Equal2~6_combout\ & \U1|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal2~5_combout\,
	datab => \U1|Equal2~7_combout\,
	datac => \U1|Equal2~6_combout\,
	datad => \U1|Equal2~8_combout\,
	combout => \U1|Equal2~9_combout\);

-- Location: LCCOMB_X44_Y27_N22
\U1|Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~0_combout\ = (\U1|Equal3~4_combout\ & (!\U1|Equal3~9_combout\ & ((!\U1|Equal2~9_combout\) # (!\U1|Equal2~4_combout\)))) # (!\U1|Equal3~4_combout\ & (((!\U1|Equal2~9_combout\) # (!\U1|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal3~4_combout\,
	datab => \U1|Equal3~9_combout\,
	datac => \U1|Equal2~4_combout\,
	datad => \U1|Equal2~9_combout\,
	combout => \U1|Selector99~0_combout\);

-- Location: LCCOMB_X50_Y27_N20
\U1|UU1:v_res_4[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_4[0]~0_combout\ = !\U1|UU1:v_res_4[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UU1:v_res_4[0]~q\,
	combout => \U1|UU1:v_res_4[0]~0_combout\);

-- Location: LCCOMB_X48_Y27_N18
\U1|UU1:v_res_4[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_4[31]~0_combout\ = (\i_prepare~input_o\ & (\U1|w_state.st_check_valv~q\ & \U1|UU1:v_sugar[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_prepare~input_o\,
	datac => \U1|w_state.st_check_valv~q\,
	datad => \U1|UU1:v_sugar[0]~q\,
	combout => \U1|UU1:v_res_4[31]~0_combout\);

-- Location: FF_X50_Y27_N21
\U1|UU1:v_res_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_4[0]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[0]~q\);

-- Location: LCCOMB_X49_Y27_N0
\U1|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~1_cout\ = CARRY(\U1|UU1:v_res_4[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[0]~q\,
	datad => VCC,
	cout => \U1|Add3~1_cout\);

-- Location: LCCOMB_X49_Y27_N2
\U1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~2_combout\ = (\U1|UU1:v_res_4[1]~q\ & (!\U1|Add3~1_cout\)) # (!\U1|UU1:v_res_4[1]~q\ & (\U1|Add3~1_cout\ & VCC))
-- \U1|Add3~3\ = CARRY((\U1|UU1:v_res_4[1]~q\ & !\U1|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[1]~q\,
	datad => VCC,
	cin => \U1|Add3~1_cout\,
	combout => \U1|Add3~2_combout\,
	cout => \U1|Add3~3\);

-- Location: LCCOMB_X50_Y27_N26
\U1|UU1:v_res_4[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_4[1]~0_combout\ = !\U1|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add3~2_combout\,
	combout => \U1|UU1:v_res_4[1]~0_combout\);

-- Location: FF_X50_Y27_N27
\U1|UU1:v_res_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_4[1]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[1]~q\);

-- Location: LCCOMB_X49_Y27_N4
\U1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~4_combout\ = (\U1|UU1:v_res_4[2]~q\ & ((GND) # (!\U1|Add3~3\))) # (!\U1|UU1:v_res_4[2]~q\ & (\U1|Add3~3\ $ (GND)))
-- \U1|Add3~5\ = CARRY((\U1|UU1:v_res_4[2]~q\) # (!\U1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[2]~q\,
	datad => VCC,
	cin => \U1|Add3~3\,
	combout => \U1|Add3~4_combout\,
	cout => \U1|Add3~5\);

-- Location: FF_X49_Y27_N5
\U1|UU1:v_res_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~4_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[2]~q\);

-- Location: LCCOMB_X49_Y27_N6
\U1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~6_combout\ = (\U1|UU1:v_res_4[3]~q\ & (!\U1|Add3~5\)) # (!\U1|UU1:v_res_4[3]~q\ & (\U1|Add3~5\ & VCC))
-- \U1|Add3~7\ = CARRY((\U1|UU1:v_res_4[3]~q\ & !\U1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[3]~q\,
	datad => VCC,
	cin => \U1|Add3~5\,
	combout => \U1|Add3~6_combout\,
	cout => \U1|Add3~7\);

-- Location: LCCOMB_X50_Y27_N24
\U1|UU1:v_res_4[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_4[3]~0_combout\ = !\U1|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add3~6_combout\,
	combout => \U1|UU1:v_res_4[3]~0_combout\);

-- Location: FF_X50_Y27_N25
\U1|UU1:v_res_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_4[3]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[3]~q\);

-- Location: LCCOMB_X49_Y27_N8
\U1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~8_combout\ = (\U1|UU1:v_res_4[4]~q\ & ((GND) # (!\U1|Add3~7\))) # (!\U1|UU1:v_res_4[4]~q\ & (\U1|Add3~7\ $ (GND)))
-- \U1|Add3~9\ = CARRY((\U1|UU1:v_res_4[4]~q\) # (!\U1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[4]~q\,
	datad => VCC,
	cin => \U1|Add3~7\,
	combout => \U1|Add3~8_combout\,
	cout => \U1|Add3~9\);

-- Location: FF_X49_Y27_N9
\U1|UU1:v_res_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~8_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[4]~q\);

-- Location: LCCOMB_X49_Y27_N10
\U1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~10_combout\ = (\U1|UU1:v_res_4[5]~q\ & (\U1|Add3~9\ & VCC)) # (!\U1|UU1:v_res_4[5]~q\ & (!\U1|Add3~9\))
-- \U1|Add3~11\ = CARRY((!\U1|UU1:v_res_4[5]~q\ & !\U1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[5]~q\,
	datad => VCC,
	cin => \U1|Add3~9\,
	combout => \U1|Add3~10_combout\,
	cout => \U1|Add3~11\);

-- Location: FF_X49_Y27_N11
\U1|UU1:v_res_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~10_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[5]~q\);

-- Location: LCCOMB_X49_Y27_N12
\U1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~12_combout\ = (\U1|UU1:v_res_4[6]~q\ & ((GND) # (!\U1|Add3~11\))) # (!\U1|UU1:v_res_4[6]~q\ & (\U1|Add3~11\ $ (GND)))
-- \U1|Add3~13\ = CARRY((\U1|UU1:v_res_4[6]~q\) # (!\U1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[6]~q\,
	datad => VCC,
	cin => \U1|Add3~11\,
	combout => \U1|Add3~12_combout\,
	cout => \U1|Add3~13\);

-- Location: FF_X49_Y27_N13
\U1|UU1:v_res_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~12_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[6]~q\);

-- Location: LCCOMB_X49_Y27_N14
\U1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~14_combout\ = (\U1|UU1:v_res_4[7]~q\ & (\U1|Add3~13\ & VCC)) # (!\U1|UU1:v_res_4[7]~q\ & (!\U1|Add3~13\))
-- \U1|Add3~15\ = CARRY((!\U1|UU1:v_res_4[7]~q\ & !\U1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[7]~q\,
	datad => VCC,
	cin => \U1|Add3~13\,
	combout => \U1|Add3~14_combout\,
	cout => \U1|Add3~15\);

-- Location: FF_X49_Y27_N15
\U1|UU1:v_res_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~14_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[7]~q\);

-- Location: LCCOMB_X49_Y27_N16
\U1|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~16_combout\ = (\U1|UU1:v_res_4[8]~q\ & ((GND) # (!\U1|Add3~15\))) # (!\U1|UU1:v_res_4[8]~q\ & (\U1|Add3~15\ $ (GND)))
-- \U1|Add3~17\ = CARRY((\U1|UU1:v_res_4[8]~q\) # (!\U1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[8]~q\,
	datad => VCC,
	cin => \U1|Add3~15\,
	combout => \U1|Add3~16_combout\,
	cout => \U1|Add3~17\);

-- Location: FF_X49_Y27_N17
\U1|UU1:v_res_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~16_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[8]~q\);

-- Location: LCCOMB_X49_Y27_N18
\U1|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~18_combout\ = (\U1|UU1:v_res_4[9]~q\ & (\U1|Add3~17\ & VCC)) # (!\U1|UU1:v_res_4[9]~q\ & (!\U1|Add3~17\))
-- \U1|Add3~19\ = CARRY((!\U1|UU1:v_res_4[9]~q\ & !\U1|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[9]~q\,
	datad => VCC,
	cin => \U1|Add3~17\,
	combout => \U1|Add3~18_combout\,
	cout => \U1|Add3~19\);

-- Location: FF_X49_Y27_N19
\U1|UU1:v_res_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~18_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[9]~q\);

-- Location: LCCOMB_X49_Y27_N20
\U1|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~20_combout\ = (\U1|UU1:v_res_4[10]~q\ & ((GND) # (!\U1|Add3~19\))) # (!\U1|UU1:v_res_4[10]~q\ & (\U1|Add3~19\ $ (GND)))
-- \U1|Add3~21\ = CARRY((\U1|UU1:v_res_4[10]~q\) # (!\U1|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[10]~q\,
	datad => VCC,
	cin => \U1|Add3~19\,
	combout => \U1|Add3~20_combout\,
	cout => \U1|Add3~21\);

-- Location: FF_X49_Y27_N21
\U1|UU1:v_res_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~20_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[10]~q\);

-- Location: LCCOMB_X49_Y27_N22
\U1|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~22_combout\ = (\U1|UU1:v_res_4[11]~q\ & (\U1|Add3~21\ & VCC)) # (!\U1|UU1:v_res_4[11]~q\ & (!\U1|Add3~21\))
-- \U1|Add3~23\ = CARRY((!\U1|UU1:v_res_4[11]~q\ & !\U1|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[11]~q\,
	datad => VCC,
	cin => \U1|Add3~21\,
	combout => \U1|Add3~22_combout\,
	cout => \U1|Add3~23\);

-- Location: FF_X49_Y27_N23
\U1|UU1:v_res_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~22_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[11]~q\);

-- Location: LCCOMB_X49_Y27_N24
\U1|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~24_combout\ = (\U1|UU1:v_res_4[12]~q\ & ((GND) # (!\U1|Add3~23\))) # (!\U1|UU1:v_res_4[12]~q\ & (\U1|Add3~23\ $ (GND)))
-- \U1|Add3~25\ = CARRY((\U1|UU1:v_res_4[12]~q\) # (!\U1|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[12]~q\,
	datad => VCC,
	cin => \U1|Add3~23\,
	combout => \U1|Add3~24_combout\,
	cout => \U1|Add3~25\);

-- Location: FF_X49_Y27_N25
\U1|UU1:v_res_4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~24_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[12]~q\);

-- Location: LCCOMB_X49_Y27_N26
\U1|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~26_combout\ = (\U1|UU1:v_res_4[13]~q\ & (\U1|Add3~25\ & VCC)) # (!\U1|UU1:v_res_4[13]~q\ & (!\U1|Add3~25\))
-- \U1|Add3~27\ = CARRY((!\U1|UU1:v_res_4[13]~q\ & !\U1|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[13]~q\,
	datad => VCC,
	cin => \U1|Add3~25\,
	combout => \U1|Add3~26_combout\,
	cout => \U1|Add3~27\);

-- Location: FF_X49_Y27_N27
\U1|UU1:v_res_4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~26_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[13]~q\);

-- Location: LCCOMB_X49_Y27_N28
\U1|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~28_combout\ = (\U1|UU1:v_res_4[14]~q\ & ((GND) # (!\U1|Add3~27\))) # (!\U1|UU1:v_res_4[14]~q\ & (\U1|Add3~27\ $ (GND)))
-- \U1|Add3~29\ = CARRY((\U1|UU1:v_res_4[14]~q\) # (!\U1|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[14]~q\,
	datad => VCC,
	cin => \U1|Add3~27\,
	combout => \U1|Add3~28_combout\,
	cout => \U1|Add3~29\);

-- Location: FF_X49_Y27_N29
\U1|UU1:v_res_4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~28_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[14]~q\);

-- Location: LCCOMB_X49_Y27_N30
\U1|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~30_combout\ = (\U1|UU1:v_res_4[15]~q\ & (\U1|Add3~29\ & VCC)) # (!\U1|UU1:v_res_4[15]~q\ & (!\U1|Add3~29\))
-- \U1|Add3~31\ = CARRY((!\U1|UU1:v_res_4[15]~q\ & !\U1|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[15]~q\,
	datad => VCC,
	cin => \U1|Add3~29\,
	combout => \U1|Add3~30_combout\,
	cout => \U1|Add3~31\);

-- Location: FF_X49_Y27_N31
\U1|UU1:v_res_4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~30_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[15]~q\);

-- Location: LCCOMB_X48_Y27_N28
\U1|Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~5_combout\ = (!\U1|UU1:v_res_4[15]~q\ & (!\U1|UU1:v_res_4[14]~q\ & (!\U1|UU1:v_res_4[13]~q\ & !\U1|UU1:v_res_4[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[15]~q\,
	datab => \U1|UU1:v_res_4[14]~q\,
	datac => \U1|UU1:v_res_4[13]~q\,
	datad => \U1|UU1:v_res_4[12]~q\,
	combout => \U1|Equal5~5_combout\);

-- Location: LCCOMB_X48_Y27_N10
\U1|Equal5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~6_combout\ = (!\U1|UU1:v_res_4[10]~q\ & (!\U1|UU1:v_res_4[9]~q\ & (!\U1|UU1:v_res_4[11]~q\ & !\U1|UU1:v_res_4[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[10]~q\,
	datab => \U1|UU1:v_res_4[9]~q\,
	datac => \U1|UU1:v_res_4[11]~q\,
	datad => \U1|UU1:v_res_4[8]~q\,
	combout => \U1|Equal5~6_combout\);

-- Location: LCCOMB_X48_Y27_N4
\U1|Equal5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~7_combout\ = (!\U1|UU1:v_res_4[7]~q\ & (!\U1|UU1:v_res_4[6]~q\ & (!\U1|UU1:v_res_4[5]~q\ & !\U1|UU1:v_res_4[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[7]~q\,
	datab => \U1|UU1:v_res_4[6]~q\,
	datac => \U1|UU1:v_res_4[5]~q\,
	datad => \U1|UU1:v_res_4[4]~q\,
	combout => \U1|Equal5~7_combout\);

-- Location: LCCOMB_X50_Y27_N22
\U1|Equal5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~8_combout\ = (\U1|UU1:v_res_4[1]~q\ & (\U1|UU1:v_res_4[3]~q\ & (!\U1|UU1:v_res_4[2]~q\ & !\U1|UU1:v_res_4[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[1]~q\,
	datab => \U1|UU1:v_res_4[3]~q\,
	datac => \U1|UU1:v_res_4[2]~q\,
	datad => \U1|UU1:v_res_4[0]~q\,
	combout => \U1|Equal5~8_combout\);

-- Location: LCCOMB_X44_Y27_N26
\U1|Equal5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~9_combout\ = (\U1|Equal5~5_combout\ & (\U1|Equal5~6_combout\ & (\U1|Equal5~7_combout\ & \U1|Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal5~5_combout\,
	datab => \U1|Equal5~6_combout\,
	datac => \U1|Equal5~7_combout\,
	datad => \U1|Equal5~8_combout\,
	combout => \U1|Equal5~9_combout\);

-- Location: LCCOMB_X41_Y27_N26
\U1|UU1:v_res_3[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_3[0]~0_combout\ = !\U1|UU1:v_res_3[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UU1:v_res_3[0]~q\,
	combout => \U1|UU1:v_res_3[0]~0_combout\);

-- Location: LCCOMB_X41_Y27_N14
\U1|UU1:v_res_3[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_3[31]~0_combout\ = (\i_prepare~input_o\ & (\U1|UU1:v_type[1]~q\ & (\U1|UU1:v_type[0]~q\ & \U1|w_state.st_check_valv~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_prepare~input_o\,
	datab => \U1|UU1:v_type[1]~q\,
	datac => \U1|UU1:v_type[0]~q\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|UU1:v_res_3[31]~0_combout\);

-- Location: FF_X41_Y27_N27
\U1|UU1:v_res_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_3[0]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[0]~q\);

-- Location: LCCOMB_X42_Y27_N0
\U1|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~1_cout\ = CARRY(\U1|UU1:v_res_3[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[0]~q\,
	datad => VCC,
	cout => \U1|Add2~1_cout\);

-- Location: LCCOMB_X42_Y27_N2
\U1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~2_combout\ = (\U1|UU1:v_res_3[1]~q\ & (!\U1|Add2~1_cout\)) # (!\U1|UU1:v_res_3[1]~q\ & (\U1|Add2~1_cout\ & VCC))
-- \U1|Add2~3\ = CARRY((\U1|UU1:v_res_3[1]~q\ & !\U1|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[1]~q\,
	datad => VCC,
	cin => \U1|Add2~1_cout\,
	combout => \U1|Add2~2_combout\,
	cout => \U1|Add2~3\);

-- Location: LCCOMB_X41_Y27_N16
\U1|UU1:v_res_3[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_3[1]~0_combout\ = !\U1|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~2_combout\,
	combout => \U1|UU1:v_res_3[1]~0_combout\);

-- Location: FF_X41_Y27_N17
\U1|UU1:v_res_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_3[1]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[1]~q\);

-- Location: LCCOMB_X42_Y27_N4
\U1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~4_combout\ = (\U1|UU1:v_res_3[2]~q\ & ((GND) # (!\U1|Add2~3\))) # (!\U1|UU1:v_res_3[2]~q\ & (\U1|Add2~3\ $ (GND)))
-- \U1|Add2~5\ = CARRY((\U1|UU1:v_res_3[2]~q\) # (!\U1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[2]~q\,
	datad => VCC,
	cin => \U1|Add2~3\,
	combout => \U1|Add2~4_combout\,
	cout => \U1|Add2~5\);

-- Location: FF_X42_Y27_N5
\U1|UU1:v_res_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~4_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[2]~q\);

-- Location: LCCOMB_X42_Y27_N6
\U1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~6_combout\ = (\U1|UU1:v_res_3[3]~q\ & (!\U1|Add2~5\)) # (!\U1|UU1:v_res_3[3]~q\ & (\U1|Add2~5\ & VCC))
-- \U1|Add2~7\ = CARRY((\U1|UU1:v_res_3[3]~q\ & !\U1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[3]~q\,
	datad => VCC,
	cin => \U1|Add2~5\,
	combout => \U1|Add2~6_combout\,
	cout => \U1|Add2~7\);

-- Location: LCCOMB_X41_Y27_N10
\U1|UU1:v_res_3[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_3[3]~0_combout\ = !\U1|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add2~6_combout\,
	combout => \U1|UU1:v_res_3[3]~0_combout\);

-- Location: FF_X41_Y27_N11
\U1|UU1:v_res_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_3[3]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[3]~q\);

-- Location: LCCOMB_X42_Y27_N8
\U1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~8_combout\ = (\U1|UU1:v_res_3[4]~q\ & ((GND) # (!\U1|Add2~7\))) # (!\U1|UU1:v_res_3[4]~q\ & (\U1|Add2~7\ $ (GND)))
-- \U1|Add2~9\ = CARRY((\U1|UU1:v_res_3[4]~q\) # (!\U1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[4]~q\,
	datad => VCC,
	cin => \U1|Add2~7\,
	combout => \U1|Add2~8_combout\,
	cout => \U1|Add2~9\);

-- Location: FF_X42_Y27_N9
\U1|UU1:v_res_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~8_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[4]~q\);

-- Location: LCCOMB_X42_Y27_N10
\U1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~10_combout\ = (\U1|UU1:v_res_3[5]~q\ & (\U1|Add2~9\ & VCC)) # (!\U1|UU1:v_res_3[5]~q\ & (!\U1|Add2~9\))
-- \U1|Add2~11\ = CARRY((!\U1|UU1:v_res_3[5]~q\ & !\U1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[5]~q\,
	datad => VCC,
	cin => \U1|Add2~9\,
	combout => \U1|Add2~10_combout\,
	cout => \U1|Add2~11\);

-- Location: FF_X42_Y27_N11
\U1|UU1:v_res_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~10_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[5]~q\);

-- Location: LCCOMB_X42_Y27_N12
\U1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~12_combout\ = (\U1|UU1:v_res_3[6]~q\ & ((GND) # (!\U1|Add2~11\))) # (!\U1|UU1:v_res_3[6]~q\ & (\U1|Add2~11\ $ (GND)))
-- \U1|Add2~13\ = CARRY((\U1|UU1:v_res_3[6]~q\) # (!\U1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[6]~q\,
	datad => VCC,
	cin => \U1|Add2~11\,
	combout => \U1|Add2~12_combout\,
	cout => \U1|Add2~13\);

-- Location: FF_X42_Y27_N13
\U1|UU1:v_res_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~12_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[6]~q\);

-- Location: LCCOMB_X42_Y27_N14
\U1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~14_combout\ = (\U1|UU1:v_res_3[7]~q\ & (\U1|Add2~13\ & VCC)) # (!\U1|UU1:v_res_3[7]~q\ & (!\U1|Add2~13\))
-- \U1|Add2~15\ = CARRY((!\U1|UU1:v_res_3[7]~q\ & !\U1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[7]~q\,
	datad => VCC,
	cin => \U1|Add2~13\,
	combout => \U1|Add2~14_combout\,
	cout => \U1|Add2~15\);

-- Location: FF_X42_Y27_N15
\U1|UU1:v_res_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~14_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[7]~q\);

-- Location: LCCOMB_X42_Y27_N16
\U1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~16_combout\ = (\U1|UU1:v_res_3[8]~q\ & ((GND) # (!\U1|Add2~15\))) # (!\U1|UU1:v_res_3[8]~q\ & (\U1|Add2~15\ $ (GND)))
-- \U1|Add2~17\ = CARRY((\U1|UU1:v_res_3[8]~q\) # (!\U1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[8]~q\,
	datad => VCC,
	cin => \U1|Add2~15\,
	combout => \U1|Add2~16_combout\,
	cout => \U1|Add2~17\);

-- Location: FF_X42_Y27_N17
\U1|UU1:v_res_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~16_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[8]~q\);

-- Location: LCCOMB_X42_Y27_N18
\U1|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~18_combout\ = (\U1|UU1:v_res_3[9]~q\ & (\U1|Add2~17\ & VCC)) # (!\U1|UU1:v_res_3[9]~q\ & (!\U1|Add2~17\))
-- \U1|Add2~19\ = CARRY((!\U1|UU1:v_res_3[9]~q\ & !\U1|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[9]~q\,
	datad => VCC,
	cin => \U1|Add2~17\,
	combout => \U1|Add2~18_combout\,
	cout => \U1|Add2~19\);

-- Location: FF_X42_Y27_N19
\U1|UU1:v_res_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~18_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[9]~q\);

-- Location: LCCOMB_X42_Y27_N20
\U1|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~20_combout\ = (\U1|UU1:v_res_3[10]~q\ & ((GND) # (!\U1|Add2~19\))) # (!\U1|UU1:v_res_3[10]~q\ & (\U1|Add2~19\ $ (GND)))
-- \U1|Add2~21\ = CARRY((\U1|UU1:v_res_3[10]~q\) # (!\U1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[10]~q\,
	datad => VCC,
	cin => \U1|Add2~19\,
	combout => \U1|Add2~20_combout\,
	cout => \U1|Add2~21\);

-- Location: FF_X42_Y27_N21
\U1|UU1:v_res_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~20_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[10]~q\);

-- Location: LCCOMB_X42_Y27_N22
\U1|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~22_combout\ = (\U1|UU1:v_res_3[11]~q\ & (\U1|Add2~21\ & VCC)) # (!\U1|UU1:v_res_3[11]~q\ & (!\U1|Add2~21\))
-- \U1|Add2~23\ = CARRY((!\U1|UU1:v_res_3[11]~q\ & !\U1|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[11]~q\,
	datad => VCC,
	cin => \U1|Add2~21\,
	combout => \U1|Add2~22_combout\,
	cout => \U1|Add2~23\);

-- Location: FF_X42_Y27_N23
\U1|UU1:v_res_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~22_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[11]~q\);

-- Location: LCCOMB_X42_Y27_N24
\U1|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~24_combout\ = (\U1|UU1:v_res_3[12]~q\ & ((GND) # (!\U1|Add2~23\))) # (!\U1|UU1:v_res_3[12]~q\ & (\U1|Add2~23\ $ (GND)))
-- \U1|Add2~25\ = CARRY((\U1|UU1:v_res_3[12]~q\) # (!\U1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[12]~q\,
	datad => VCC,
	cin => \U1|Add2~23\,
	combout => \U1|Add2~24_combout\,
	cout => \U1|Add2~25\);

-- Location: FF_X42_Y27_N25
\U1|UU1:v_res_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~24_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[12]~q\);

-- Location: LCCOMB_X42_Y27_N26
\U1|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~26_combout\ = (\U1|UU1:v_res_3[13]~q\ & (\U1|Add2~25\ & VCC)) # (!\U1|UU1:v_res_3[13]~q\ & (!\U1|Add2~25\))
-- \U1|Add2~27\ = CARRY((!\U1|UU1:v_res_3[13]~q\ & !\U1|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[13]~q\,
	datad => VCC,
	cin => \U1|Add2~25\,
	combout => \U1|Add2~26_combout\,
	cout => \U1|Add2~27\);

-- Location: FF_X42_Y27_N27
\U1|UU1:v_res_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~26_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[13]~q\);

-- Location: LCCOMB_X42_Y27_N28
\U1|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~28_combout\ = (\U1|UU1:v_res_3[14]~q\ & ((GND) # (!\U1|Add2~27\))) # (!\U1|UU1:v_res_3[14]~q\ & (\U1|Add2~27\ $ (GND)))
-- \U1|Add2~29\ = CARRY((\U1|UU1:v_res_3[14]~q\) # (!\U1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[14]~q\,
	datad => VCC,
	cin => \U1|Add2~27\,
	combout => \U1|Add2~28_combout\,
	cout => \U1|Add2~29\);

-- Location: FF_X42_Y27_N29
\U1|UU1:v_res_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~28_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[14]~q\);

-- Location: LCCOMB_X42_Y27_N30
\U1|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~30_combout\ = (\U1|UU1:v_res_3[15]~q\ & (\U1|Add2~29\ & VCC)) # (!\U1|UU1:v_res_3[15]~q\ & (!\U1|Add2~29\))
-- \U1|Add2~31\ = CARRY((!\U1|UU1:v_res_3[15]~q\ & !\U1|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[15]~q\,
	datad => VCC,
	cin => \U1|Add2~29\,
	combout => \U1|Add2~30_combout\,
	cout => \U1|Add2~31\);

-- Location: FF_X42_Y27_N31
\U1|UU1:v_res_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~30_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[15]~q\);

-- Location: LCCOMB_X43_Y27_N16
\U1|Equal4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~5_combout\ = (!\U1|UU1:v_res_3[13]~q\ & (!\U1|UU1:v_res_3[15]~q\ & (!\U1|UU1:v_res_3[12]~q\ & !\U1|UU1:v_res_3[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[13]~q\,
	datab => \U1|UU1:v_res_3[15]~q\,
	datac => \U1|UU1:v_res_3[12]~q\,
	datad => \U1|UU1:v_res_3[14]~q\,
	combout => \U1|Equal4~5_combout\);

-- Location: LCCOMB_X43_Y27_N6
\U1|Equal4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~6_combout\ = (!\U1|UU1:v_res_3[8]~q\ & (!\U1|UU1:v_res_3[9]~q\ & (!\U1|UU1:v_res_3[10]~q\ & !\U1|UU1:v_res_3[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[8]~q\,
	datab => \U1|UU1:v_res_3[9]~q\,
	datac => \U1|UU1:v_res_3[10]~q\,
	datad => \U1|UU1:v_res_3[11]~q\,
	combout => \U1|Equal4~6_combout\);

-- Location: LCCOMB_X43_Y27_N0
\U1|Equal4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~7_combout\ = (!\U1|UU1:v_res_3[7]~q\ & (!\U1|UU1:v_res_3[6]~q\ & (!\U1|UU1:v_res_3[5]~q\ & !\U1|UU1:v_res_3[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[7]~q\,
	datab => \U1|UU1:v_res_3[6]~q\,
	datac => \U1|UU1:v_res_3[5]~q\,
	datad => \U1|UU1:v_res_3[4]~q\,
	combout => \U1|Equal4~7_combout\);

-- Location: LCCOMB_X41_Y27_N8
\U1|Equal4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~8_combout\ = (\U1|UU1:v_res_3[3]~q\ & (\U1|UU1:v_res_3[1]~q\ & (!\U1|UU1:v_res_3[0]~q\ & !\U1|UU1:v_res_3[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[3]~q\,
	datab => \U1|UU1:v_res_3[1]~q\,
	datac => \U1|UU1:v_res_3[0]~q\,
	datad => \U1|UU1:v_res_3[2]~q\,
	combout => \U1|Equal4~8_combout\);

-- Location: LCCOMB_X44_Y27_N14
\U1|Equal4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~9_combout\ = (\U1|Equal4~5_combout\ & (\U1|Equal4~6_combout\ & (\U1|Equal4~7_combout\ & \U1|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal4~5_combout\,
	datab => \U1|Equal4~6_combout\,
	datac => \U1|Equal4~7_combout\,
	datad => \U1|Equal4~8_combout\,
	combout => \U1|Equal4~9_combout\);

-- Location: LCCOMB_X42_Y26_N0
\U1|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~32_combout\ = (\U1|UU1:v_res_3[16]~q\ & ((GND) # (!\U1|Add2~31\))) # (!\U1|UU1:v_res_3[16]~q\ & (\U1|Add2~31\ $ (GND)))
-- \U1|Add2~33\ = CARRY((\U1|UU1:v_res_3[16]~q\) # (!\U1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[16]~q\,
	datad => VCC,
	cin => \U1|Add2~31\,
	combout => \U1|Add2~32_combout\,
	cout => \U1|Add2~33\);

-- Location: FF_X42_Y26_N1
\U1|UU1:v_res_3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~32_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[16]~q\);

-- Location: LCCOMB_X42_Y26_N2
\U1|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~34_combout\ = (\U1|UU1:v_res_3[17]~q\ & (\U1|Add2~33\ & VCC)) # (!\U1|UU1:v_res_3[17]~q\ & (!\U1|Add2~33\))
-- \U1|Add2~35\ = CARRY((!\U1|UU1:v_res_3[17]~q\ & !\U1|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[17]~q\,
	datad => VCC,
	cin => \U1|Add2~33\,
	combout => \U1|Add2~34_combout\,
	cout => \U1|Add2~35\);

-- Location: FF_X42_Y26_N3
\U1|UU1:v_res_3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~34_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[17]~q\);

-- Location: LCCOMB_X42_Y26_N4
\U1|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~36_combout\ = (\U1|UU1:v_res_3[18]~q\ & ((GND) # (!\U1|Add2~35\))) # (!\U1|UU1:v_res_3[18]~q\ & (\U1|Add2~35\ $ (GND)))
-- \U1|Add2~37\ = CARRY((\U1|UU1:v_res_3[18]~q\) # (!\U1|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[18]~q\,
	datad => VCC,
	cin => \U1|Add2~35\,
	combout => \U1|Add2~36_combout\,
	cout => \U1|Add2~37\);

-- Location: FF_X42_Y26_N5
\U1|UU1:v_res_3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~36_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[18]~q\);

-- Location: LCCOMB_X42_Y26_N6
\U1|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~38_combout\ = (\U1|UU1:v_res_3[19]~q\ & (\U1|Add2~37\ & VCC)) # (!\U1|UU1:v_res_3[19]~q\ & (!\U1|Add2~37\))
-- \U1|Add2~39\ = CARRY((!\U1|UU1:v_res_3[19]~q\ & !\U1|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[19]~q\,
	datad => VCC,
	cin => \U1|Add2~37\,
	combout => \U1|Add2~38_combout\,
	cout => \U1|Add2~39\);

-- Location: FF_X42_Y26_N7
\U1|UU1:v_res_3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~38_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[19]~q\);

-- Location: LCCOMB_X42_Y26_N8
\U1|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~40_combout\ = (\U1|UU1:v_res_3[20]~q\ & ((GND) # (!\U1|Add2~39\))) # (!\U1|UU1:v_res_3[20]~q\ & (\U1|Add2~39\ $ (GND)))
-- \U1|Add2~41\ = CARRY((\U1|UU1:v_res_3[20]~q\) # (!\U1|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[20]~q\,
	datad => VCC,
	cin => \U1|Add2~39\,
	combout => \U1|Add2~40_combout\,
	cout => \U1|Add2~41\);

-- Location: FF_X42_Y26_N9
\U1|UU1:v_res_3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~40_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[20]~q\);

-- Location: LCCOMB_X42_Y26_N10
\U1|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~42_combout\ = (\U1|UU1:v_res_3[21]~q\ & (\U1|Add2~41\ & VCC)) # (!\U1|UU1:v_res_3[21]~q\ & (!\U1|Add2~41\))
-- \U1|Add2~43\ = CARRY((!\U1|UU1:v_res_3[21]~q\ & !\U1|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[21]~q\,
	datad => VCC,
	cin => \U1|Add2~41\,
	combout => \U1|Add2~42_combout\,
	cout => \U1|Add2~43\);

-- Location: FF_X42_Y26_N11
\U1|UU1:v_res_3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~42_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[21]~q\);

-- Location: LCCOMB_X42_Y26_N12
\U1|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~44_combout\ = (\U1|UU1:v_res_3[22]~q\ & ((GND) # (!\U1|Add2~43\))) # (!\U1|UU1:v_res_3[22]~q\ & (\U1|Add2~43\ $ (GND)))
-- \U1|Add2~45\ = CARRY((\U1|UU1:v_res_3[22]~q\) # (!\U1|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[22]~q\,
	datad => VCC,
	cin => \U1|Add2~43\,
	combout => \U1|Add2~44_combout\,
	cout => \U1|Add2~45\);

-- Location: FF_X42_Y26_N13
\U1|UU1:v_res_3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~44_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[22]~q\);

-- Location: LCCOMB_X42_Y26_N14
\U1|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~46_combout\ = (\U1|UU1:v_res_3[23]~q\ & (\U1|Add2~45\ & VCC)) # (!\U1|UU1:v_res_3[23]~q\ & (!\U1|Add2~45\))
-- \U1|Add2~47\ = CARRY((!\U1|UU1:v_res_3[23]~q\ & !\U1|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[23]~q\,
	datad => VCC,
	cin => \U1|Add2~45\,
	combout => \U1|Add2~46_combout\,
	cout => \U1|Add2~47\);

-- Location: FF_X42_Y26_N15
\U1|UU1:v_res_3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~46_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[23]~q\);

-- Location: LCCOMB_X43_Y26_N0
\U1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~2_combout\ = (!\U1|UU1:v_res_3[23]~q\ & (!\U1|UU1:v_res_3[21]~q\ & (!\U1|UU1:v_res_3[22]~q\ & !\U1|UU1:v_res_3[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[23]~q\,
	datab => \U1|UU1:v_res_3[21]~q\,
	datac => \U1|UU1:v_res_3[22]~q\,
	datad => \U1|UU1:v_res_3[20]~q\,
	combout => \U1|Equal4~2_combout\);

-- Location: LCCOMB_X42_Y26_N16
\U1|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~48_combout\ = (\U1|UU1:v_res_3[24]~q\ & ((GND) # (!\U1|Add2~47\))) # (!\U1|UU1:v_res_3[24]~q\ & (\U1|Add2~47\ $ (GND)))
-- \U1|Add2~49\ = CARRY((\U1|UU1:v_res_3[24]~q\) # (!\U1|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[24]~q\,
	datad => VCC,
	cin => \U1|Add2~47\,
	combout => \U1|Add2~48_combout\,
	cout => \U1|Add2~49\);

-- Location: FF_X42_Y26_N17
\U1|UU1:v_res_3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~48_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[24]~q\);

-- Location: LCCOMB_X42_Y26_N18
\U1|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~50_combout\ = (\U1|UU1:v_res_3[25]~q\ & (\U1|Add2~49\ & VCC)) # (!\U1|UU1:v_res_3[25]~q\ & (!\U1|Add2~49\))
-- \U1|Add2~51\ = CARRY((!\U1|UU1:v_res_3[25]~q\ & !\U1|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[25]~q\,
	datad => VCC,
	cin => \U1|Add2~49\,
	combout => \U1|Add2~50_combout\,
	cout => \U1|Add2~51\);

-- Location: FF_X42_Y26_N19
\U1|UU1:v_res_3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~50_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[25]~q\);

-- Location: LCCOMB_X42_Y26_N20
\U1|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~52_combout\ = (\U1|UU1:v_res_3[26]~q\ & ((GND) # (!\U1|Add2~51\))) # (!\U1|UU1:v_res_3[26]~q\ & (\U1|Add2~51\ $ (GND)))
-- \U1|Add2~53\ = CARRY((\U1|UU1:v_res_3[26]~q\) # (!\U1|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[26]~q\,
	datad => VCC,
	cin => \U1|Add2~51\,
	combout => \U1|Add2~52_combout\,
	cout => \U1|Add2~53\);

-- Location: FF_X42_Y26_N21
\U1|UU1:v_res_3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~52_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[26]~q\);

-- Location: LCCOMB_X42_Y26_N22
\U1|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~54_combout\ = (\U1|UU1:v_res_3[27]~q\ & (\U1|Add2~53\ & VCC)) # (!\U1|UU1:v_res_3[27]~q\ & (!\U1|Add2~53\))
-- \U1|Add2~55\ = CARRY((!\U1|UU1:v_res_3[27]~q\ & !\U1|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[27]~q\,
	datad => VCC,
	cin => \U1|Add2~53\,
	combout => \U1|Add2~54_combout\,
	cout => \U1|Add2~55\);

-- Location: FF_X42_Y26_N23
\U1|UU1:v_res_3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~54_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[27]~q\);

-- Location: LCCOMB_X42_Y26_N24
\U1|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~56_combout\ = (\U1|UU1:v_res_3[28]~q\ & ((GND) # (!\U1|Add2~55\))) # (!\U1|UU1:v_res_3[28]~q\ & (\U1|Add2~55\ $ (GND)))
-- \U1|Add2~57\ = CARRY((\U1|UU1:v_res_3[28]~q\) # (!\U1|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[28]~q\,
	datad => VCC,
	cin => \U1|Add2~55\,
	combout => \U1|Add2~56_combout\,
	cout => \U1|Add2~57\);

-- Location: FF_X42_Y26_N25
\U1|UU1:v_res_3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~56_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[28]~q\);

-- Location: LCCOMB_X42_Y26_N26
\U1|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~58_combout\ = (\U1|UU1:v_res_3[29]~q\ & (\U1|Add2~57\ & VCC)) # (!\U1|UU1:v_res_3[29]~q\ & (!\U1|Add2~57\))
-- \U1|Add2~59\ = CARRY((!\U1|UU1:v_res_3[29]~q\ & !\U1|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[29]~q\,
	datad => VCC,
	cin => \U1|Add2~57\,
	combout => \U1|Add2~58_combout\,
	cout => \U1|Add2~59\);

-- Location: FF_X42_Y26_N27
\U1|UU1:v_res_3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~58_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[29]~q\);

-- Location: LCCOMB_X42_Y26_N28
\U1|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~60_combout\ = (\U1|UU1:v_res_3[30]~q\ & ((GND) # (!\U1|Add2~59\))) # (!\U1|UU1:v_res_3[30]~q\ & (\U1|Add2~59\ $ (GND)))
-- \U1|Add2~61\ = CARRY((\U1|UU1:v_res_3[30]~q\) # (!\U1|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_3[30]~q\,
	datad => VCC,
	cin => \U1|Add2~59\,
	combout => \U1|Add2~60_combout\,
	cout => \U1|Add2~61\);

-- Location: FF_X42_Y26_N29
\U1|UU1:v_res_3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~60_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[30]~q\);

-- Location: LCCOMB_X42_Y26_N30
\U1|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~62_combout\ = \U1|UU1:v_res_3[31]~q\ $ (!\U1|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[31]~q\,
	cin => \U1|Add2~61\,
	combout => \U1|Add2~62_combout\);

-- Location: FF_X42_Y26_N31
\U1|UU1:v_res_3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add2~62_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_3[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_3[31]~q\);

-- Location: LCCOMB_X43_Y26_N24
\U1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~0_combout\ = (!\U1|UU1:v_res_3[29]~q\ & (!\U1|UU1:v_res_3[31]~q\ & (!\U1|UU1:v_res_3[30]~q\ & !\U1|UU1:v_res_3[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[29]~q\,
	datab => \U1|UU1:v_res_3[31]~q\,
	datac => \U1|UU1:v_res_3[30]~q\,
	datad => \U1|UU1:v_res_3[28]~q\,
	combout => \U1|Equal4~0_combout\);

-- Location: LCCOMB_X43_Y26_N6
\U1|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~1_combout\ = (!\U1|UU1:v_res_3[24]~q\ & (!\U1|UU1:v_res_3[26]~q\ & (!\U1|UU1:v_res_3[25]~q\ & !\U1|UU1:v_res_3[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[24]~q\,
	datab => \U1|UU1:v_res_3[26]~q\,
	datac => \U1|UU1:v_res_3[25]~q\,
	datad => \U1|UU1:v_res_3[27]~q\,
	combout => \U1|Equal4~1_combout\);

-- Location: LCCOMB_X43_Y26_N2
\U1|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~3_combout\ = (!\U1|UU1:v_res_3[17]~q\ & (!\U1|UU1:v_res_3[19]~q\ & (!\U1|UU1:v_res_3[16]~q\ & !\U1|UU1:v_res_3[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_3[17]~q\,
	datab => \U1|UU1:v_res_3[19]~q\,
	datac => \U1|UU1:v_res_3[16]~q\,
	datad => \U1|UU1:v_res_3[18]~q\,
	combout => \U1|Equal4~3_combout\);

-- Location: LCCOMB_X44_Y27_N4
\U1|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal4~4_combout\ = (\U1|Equal4~2_combout\ & (\U1|Equal4~0_combout\ & (\U1|Equal4~1_combout\ & \U1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal4~2_combout\,
	datab => \U1|Equal4~0_combout\,
	datac => \U1|Equal4~1_combout\,
	datad => \U1|Equal4~3_combout\,
	combout => \U1|Equal4~4_combout\);

-- Location: LCCOMB_X49_Y26_N0
\U1|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~32_combout\ = (\U1|UU1:v_res_4[16]~q\ & ((GND) # (!\U1|Add3~31\))) # (!\U1|UU1:v_res_4[16]~q\ & (\U1|Add3~31\ $ (GND)))
-- \U1|Add3~33\ = CARRY((\U1|UU1:v_res_4[16]~q\) # (!\U1|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[16]~q\,
	datad => VCC,
	cin => \U1|Add3~31\,
	combout => \U1|Add3~32_combout\,
	cout => \U1|Add3~33\);

-- Location: LCCOMB_X48_Y26_N8
\U1|UU1:v_res_4[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_4[16]~feeder_combout\ = \U1|Add3~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add3~32_combout\,
	combout => \U1|UU1:v_res_4[16]~feeder_combout\);

-- Location: FF_X48_Y26_N9
\U1|UU1:v_res_4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_4[16]~feeder_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[16]~q\);

-- Location: LCCOMB_X49_Y26_N2
\U1|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~34_combout\ = (\U1|UU1:v_res_4[17]~q\ & (\U1|Add3~33\ & VCC)) # (!\U1|UU1:v_res_4[17]~q\ & (!\U1|Add3~33\))
-- \U1|Add3~35\ = CARRY((!\U1|UU1:v_res_4[17]~q\ & !\U1|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[17]~q\,
	datad => VCC,
	cin => \U1|Add3~33\,
	combout => \U1|Add3~34_combout\,
	cout => \U1|Add3~35\);

-- Location: FF_X49_Y26_N3
\U1|UU1:v_res_4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~34_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[17]~q\);

-- Location: LCCOMB_X49_Y26_N4
\U1|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~36_combout\ = (\U1|UU1:v_res_4[18]~q\ & ((GND) # (!\U1|Add3~35\))) # (!\U1|UU1:v_res_4[18]~q\ & (\U1|Add3~35\ $ (GND)))
-- \U1|Add3~37\ = CARRY((\U1|UU1:v_res_4[18]~q\) # (!\U1|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[18]~q\,
	datad => VCC,
	cin => \U1|Add3~35\,
	combout => \U1|Add3~36_combout\,
	cout => \U1|Add3~37\);

-- Location: LCCOMB_X48_Y26_N18
\U1|UU1:v_res_4[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_4[18]~feeder_combout\ = \U1|Add3~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add3~36_combout\,
	combout => \U1|UU1:v_res_4[18]~feeder_combout\);

-- Location: FF_X48_Y26_N19
\U1|UU1:v_res_4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_res_4[18]~feeder_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[18]~q\);

-- Location: LCCOMB_X49_Y26_N6
\U1|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~38_combout\ = (\U1|UU1:v_res_4[19]~q\ & (\U1|Add3~37\ & VCC)) # (!\U1|UU1:v_res_4[19]~q\ & (!\U1|Add3~37\))
-- \U1|Add3~39\ = CARRY((!\U1|UU1:v_res_4[19]~q\ & !\U1|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[19]~q\,
	datad => VCC,
	cin => \U1|Add3~37\,
	combout => \U1|Add3~38_combout\,
	cout => \U1|Add3~39\);

-- Location: FF_X49_Y26_N7
\U1|UU1:v_res_4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~38_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[19]~q\);

-- Location: LCCOMB_X48_Y26_N30
\U1|Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~3_combout\ = (!\U1|UU1:v_res_4[19]~q\ & (!\U1|UU1:v_res_4[18]~q\ & (!\U1|UU1:v_res_4[16]~q\ & !\U1|UU1:v_res_4[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[19]~q\,
	datab => \U1|UU1:v_res_4[18]~q\,
	datac => \U1|UU1:v_res_4[16]~q\,
	datad => \U1|UU1:v_res_4[17]~q\,
	combout => \U1|Equal5~3_combout\);

-- Location: LCCOMB_X49_Y26_N8
\U1|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~40_combout\ = (\U1|UU1:v_res_4[20]~q\ & ((GND) # (!\U1|Add3~39\))) # (!\U1|UU1:v_res_4[20]~q\ & (\U1|Add3~39\ $ (GND)))
-- \U1|Add3~41\ = CARRY((\U1|UU1:v_res_4[20]~q\) # (!\U1|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[20]~q\,
	datad => VCC,
	cin => \U1|Add3~39\,
	combout => \U1|Add3~40_combout\,
	cout => \U1|Add3~41\);

-- Location: FF_X49_Y26_N9
\U1|UU1:v_res_4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~40_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[20]~q\);

-- Location: LCCOMB_X49_Y26_N10
\U1|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~42_combout\ = (\U1|UU1:v_res_4[21]~q\ & (\U1|Add3~41\ & VCC)) # (!\U1|UU1:v_res_4[21]~q\ & (!\U1|Add3~41\))
-- \U1|Add3~43\ = CARRY((!\U1|UU1:v_res_4[21]~q\ & !\U1|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[21]~q\,
	datad => VCC,
	cin => \U1|Add3~41\,
	combout => \U1|Add3~42_combout\,
	cout => \U1|Add3~43\);

-- Location: FF_X49_Y26_N11
\U1|UU1:v_res_4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~42_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[21]~q\);

-- Location: LCCOMB_X49_Y26_N12
\U1|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~44_combout\ = (\U1|UU1:v_res_4[22]~q\ & ((GND) # (!\U1|Add3~43\))) # (!\U1|UU1:v_res_4[22]~q\ & (\U1|Add3~43\ $ (GND)))
-- \U1|Add3~45\ = CARRY((\U1|UU1:v_res_4[22]~q\) # (!\U1|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[22]~q\,
	datad => VCC,
	cin => \U1|Add3~43\,
	combout => \U1|Add3~44_combout\,
	cout => \U1|Add3~45\);

-- Location: FF_X49_Y26_N13
\U1|UU1:v_res_4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~44_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[22]~q\);

-- Location: LCCOMB_X49_Y26_N14
\U1|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~46_combout\ = (\U1|UU1:v_res_4[23]~q\ & (\U1|Add3~45\ & VCC)) # (!\U1|UU1:v_res_4[23]~q\ & (!\U1|Add3~45\))
-- \U1|Add3~47\ = CARRY((!\U1|UU1:v_res_4[23]~q\ & !\U1|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[23]~q\,
	datad => VCC,
	cin => \U1|Add3~45\,
	combout => \U1|Add3~46_combout\,
	cout => \U1|Add3~47\);

-- Location: FF_X49_Y26_N15
\U1|UU1:v_res_4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~46_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[23]~q\);

-- Location: LCCOMB_X49_Y26_N16
\U1|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~48_combout\ = (\U1|UU1:v_res_4[24]~q\ & ((GND) # (!\U1|Add3~47\))) # (!\U1|UU1:v_res_4[24]~q\ & (\U1|Add3~47\ $ (GND)))
-- \U1|Add3~49\ = CARRY((\U1|UU1:v_res_4[24]~q\) # (!\U1|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[24]~q\,
	datad => VCC,
	cin => \U1|Add3~47\,
	combout => \U1|Add3~48_combout\,
	cout => \U1|Add3~49\);

-- Location: FF_X49_Y26_N17
\U1|UU1:v_res_4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~48_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[24]~q\);

-- Location: LCCOMB_X49_Y26_N18
\U1|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~50_combout\ = (\U1|UU1:v_res_4[25]~q\ & (\U1|Add3~49\ & VCC)) # (!\U1|UU1:v_res_4[25]~q\ & (!\U1|Add3~49\))
-- \U1|Add3~51\ = CARRY((!\U1|UU1:v_res_4[25]~q\ & !\U1|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[25]~q\,
	datad => VCC,
	cin => \U1|Add3~49\,
	combout => \U1|Add3~50_combout\,
	cout => \U1|Add3~51\);

-- Location: FF_X49_Y26_N19
\U1|UU1:v_res_4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~50_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[25]~q\);

-- Location: LCCOMB_X49_Y26_N20
\U1|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~52_combout\ = (\U1|UU1:v_res_4[26]~q\ & ((GND) # (!\U1|Add3~51\))) # (!\U1|UU1:v_res_4[26]~q\ & (\U1|Add3~51\ $ (GND)))
-- \U1|Add3~53\ = CARRY((\U1|UU1:v_res_4[26]~q\) # (!\U1|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[26]~q\,
	datad => VCC,
	cin => \U1|Add3~51\,
	combout => \U1|Add3~52_combout\,
	cout => \U1|Add3~53\);

-- Location: FF_X49_Y26_N21
\U1|UU1:v_res_4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~52_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[26]~q\);

-- Location: LCCOMB_X49_Y26_N22
\U1|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~54_combout\ = (\U1|UU1:v_res_4[27]~q\ & (\U1|Add3~53\ & VCC)) # (!\U1|UU1:v_res_4[27]~q\ & (!\U1|Add3~53\))
-- \U1|Add3~55\ = CARRY((!\U1|UU1:v_res_4[27]~q\ & !\U1|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[27]~q\,
	datad => VCC,
	cin => \U1|Add3~53\,
	combout => \U1|Add3~54_combout\,
	cout => \U1|Add3~55\);

-- Location: FF_X49_Y26_N23
\U1|UU1:v_res_4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~54_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[27]~q\);

-- Location: LCCOMB_X49_Y26_N24
\U1|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~56_combout\ = (\U1|UU1:v_res_4[28]~q\ & ((GND) # (!\U1|Add3~55\))) # (!\U1|UU1:v_res_4[28]~q\ & (\U1|Add3~55\ $ (GND)))
-- \U1|Add3~57\ = CARRY((\U1|UU1:v_res_4[28]~q\) # (!\U1|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[28]~q\,
	datad => VCC,
	cin => \U1|Add3~55\,
	combout => \U1|Add3~56_combout\,
	cout => \U1|Add3~57\);

-- Location: FF_X49_Y26_N25
\U1|UU1:v_res_4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~56_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[28]~q\);

-- Location: LCCOMB_X49_Y26_N26
\U1|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~58_combout\ = (\U1|UU1:v_res_4[29]~q\ & (\U1|Add3~57\ & VCC)) # (!\U1|UU1:v_res_4[29]~q\ & (!\U1|Add3~57\))
-- \U1|Add3~59\ = CARRY((!\U1|UU1:v_res_4[29]~q\ & !\U1|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[29]~q\,
	datad => VCC,
	cin => \U1|Add3~57\,
	combout => \U1|Add3~58_combout\,
	cout => \U1|Add3~59\);

-- Location: FF_X49_Y26_N27
\U1|UU1:v_res_4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~58_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[29]~q\);

-- Location: LCCOMB_X49_Y26_N28
\U1|Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~60_combout\ = (\U1|UU1:v_res_4[30]~q\ & ((GND) # (!\U1|Add3~59\))) # (!\U1|UU1:v_res_4[30]~q\ & (\U1|Add3~59\ $ (GND)))
-- \U1|Add3~61\ = CARRY((\U1|UU1:v_res_4[30]~q\) # (!\U1|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_res_4[30]~q\,
	datad => VCC,
	cin => \U1|Add3~59\,
	combout => \U1|Add3~60_combout\,
	cout => \U1|Add3~61\);

-- Location: FF_X49_Y26_N29
\U1|UU1:v_res_4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~60_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[30]~q\);

-- Location: LCCOMB_X49_Y26_N30
\U1|Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~62_combout\ = \U1|UU1:v_res_4[31]~q\ $ (!\U1|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[31]~q\,
	cin => \U1|Add3~61\,
	combout => \U1|Add3~62_combout\);

-- Location: FF_X49_Y26_N31
\U1|UU1:v_res_4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add3~62_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|UU1:v_res_4[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_res_4[31]~q\);

-- Location: LCCOMB_X48_Y26_N16
\U1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~0_combout\ = (!\U1|UU1:v_res_4[31]~q\ & (!\U1|UU1:v_res_4[30]~q\ & (!\U1|UU1:v_res_4[29]~q\ & !\U1|UU1:v_res_4[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[31]~q\,
	datab => \U1|UU1:v_res_4[30]~q\,
	datac => \U1|UU1:v_res_4[29]~q\,
	datad => \U1|UU1:v_res_4[28]~q\,
	combout => \U1|Equal5~0_combout\);

-- Location: LCCOMB_X48_Y26_N0
\U1|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~2_combout\ = (!\U1|UU1:v_res_4[22]~q\ & (!\U1|UU1:v_res_4[21]~q\ & (!\U1|UU1:v_res_4[20]~q\ & !\U1|UU1:v_res_4[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[22]~q\,
	datab => \U1|UU1:v_res_4[21]~q\,
	datac => \U1|UU1:v_res_4[20]~q\,
	datad => \U1|UU1:v_res_4[23]~q\,
	combout => \U1|Equal5~2_combout\);

-- Location: LCCOMB_X48_Y26_N14
\U1|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~1_combout\ = (!\U1|UU1:v_res_4[26]~q\ & (!\U1|UU1:v_res_4[27]~q\ & (!\U1|UU1:v_res_4[25]~q\ & !\U1|UU1:v_res_4[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_4[26]~q\,
	datab => \U1|UU1:v_res_4[27]~q\,
	datac => \U1|UU1:v_res_4[25]~q\,
	datad => \U1|UU1:v_res_4[24]~q\,
	combout => \U1|Equal5~1_combout\);

-- Location: LCCOMB_X44_Y27_N28
\U1|Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~4_combout\ = (\U1|Equal5~3_combout\ & (\U1|Equal5~0_combout\ & (\U1|Equal5~2_combout\ & \U1|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal5~3_combout\,
	datab => \U1|Equal5~0_combout\,
	datac => \U1|Equal5~2_combout\,
	datad => \U1|Equal5~1_combout\,
	combout => \U1|Equal5~4_combout\);

-- Location: LCCOMB_X44_Y27_N0
\U1|Selector99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~1_combout\ = (\U1|Equal5~9_combout\ & (!\U1|Equal5~4_combout\ & ((!\U1|Equal4~4_combout\) # (!\U1|Equal4~9_combout\)))) # (!\U1|Equal5~9_combout\ & (((!\U1|Equal4~4_combout\)) # (!\U1|Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal5~9_combout\,
	datab => \U1|Equal4~9_combout\,
	datac => \U1|Equal4~4_combout\,
	datad => \U1|Equal5~4_combout\,
	combout => \U1|Selector99~1_combout\);

-- Location: LCCOMB_X44_Y27_N18
\U1|Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector98~0_combout\ = (\U1|UU1:v_type[0]~0_combout\ & (((!\U1|Selector99~1_combout\) # (!\U1|Selector99~0_combout\)) # (!\U1|w_state.st_check_repo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_repo~q\,
	datab => \U1|UU1:v_type[0]~0_combout\,
	datac => \U1|Selector99~0_combout\,
	datad => \U1|Selector99~1_combout\,
	combout => \U1|Selector98~0_combout\);

-- Location: LCCOMB_X44_Y27_N20
\U1|w_state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~19_combout\ = (!\U1|Selector99~5_combout\ & (\U1|w_state.st_idle~4_combout\ & \U1|Selector98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector99~5_combout\,
	datac => \U1|w_state.st_idle~4_combout\,
	datad => \U1|Selector98~0_combout\,
	combout => \U1|w_state~19_combout\);

-- Location: LCCOMB_X44_Y27_N10
\U1|w_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~22_combout\ = (\U1|Selector98~0_combout\ & (\U1|w_state~20_combout\ & ((\i_temp~input_o\) # (!\U1|w_state.st_check_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|Selector98~0_combout\,
	datac => \i_temp~input_o\,
	datad => \U1|w_state~20_combout\,
	combout => \U1|w_state~22_combout\);

-- Location: LCCOMB_X44_Y27_N8
\U1|w_state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~24_combout\ = (\U1|w_state~23_combout\ & (\U1|w_state~19_combout\ & (\U1|w_state.st_check_repo~q\))) # (!\U1|w_state~23_combout\ & ((\U1|w_state~22_combout\) # ((\U1|w_state~19_combout\ & \U1|w_state.st_check_repo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state~23_combout\,
	datab => \U1|w_state~19_combout\,
	datac => \U1|w_state.st_check_repo~q\,
	datad => \U1|w_state~22_combout\,
	combout => \U1|w_state~24_combout\);

-- Location: FF_X44_Y27_N9
\U1|w_state.st_check_repo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~24_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_repo~q\);

-- Location: LCCOMB_X43_Y27_N18
\U1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector0~0_combout\ = (\U1|o_read~q\ & ((\U1|w_state.st_check_type~q\) # ((\U1|w_state.st_check_sugar~q\) # (\U1|w_state.st_check_size~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_read~q\,
	datab => \U1|w_state.st_check_type~q\,
	datac => \U1|w_state.st_check_sugar~q\,
	datad => \U1|w_state.st_check_size~q\,
	combout => \U1|Selector0~0_combout\);

-- Location: LCCOMB_X43_Y27_N8
\U1|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector0~1_combout\ = (\U1|w_state.st_check_valv~q\) # ((\U1|Selector0~0_combout\) # ((\U1|w_state.st_check_temp~q\ & \i_temp~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \i_temp~input_o\,
	datad => \U1|Selector0~0_combout\,
	combout => \U1|Selector0~1_combout\);

-- Location: LCCOMB_X39_Y27_N26
\U1|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector0~2_combout\ = (\U1|Selector0~1_combout\) # ((\U1|w_state.st_check_repo~q\ & ((!\U1|Selector99~0_combout\) # (!\U1|Selector99~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_repo~q\,
	datab => \U1|Selector0~1_combout\,
	datac => \U1|Selector99~1_combout\,
	datad => \U1|Selector99~0_combout\,
	combout => \U1|Selector0~2_combout\);

-- Location: FF_X39_Y27_N27
\U1|o_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector0~2_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_read~q\);

-- Location: LCCOMB_X39_Y27_N20
\U2|UU1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1~0_combout\ = (\U2|UU1:v_count[1]~q\) # ((\U2|UU1:v_count[2]~q\) # ((\U2|UU1:v_count[0]~q\) # (!\U1|o_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[1]~q\,
	datab => \U2|UU1:v_count[2]~q\,
	datac => \U1|o_read~q\,
	datad => \U2|UU1:v_count[0]~q\,
	combout => \U2|UU1~0_combout\);

-- Location: LCCOMB_X39_Y26_N16
\U2|w_state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~16_combout\ = (\U2|w_state.st_timer~q\ & (\U2|w_state~12_combout\ & !\U2|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_timer~q\,
	datac => \U2|w_state~12_combout\,
	datad => \U2|Selector3~1_combout\,
	combout => \U2|w_state~16_combout\);

-- Location: LCCOMB_X39_Y26_N12
\U2|w_state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~17_combout\ = (\U2|w_state~16_combout\) # ((\U2|w_state~13_combout\ & ((\U2|UU1:v_count[3]~q\) # (\U2|UU1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[3]~q\,
	datab => \U2|UU1~0_combout\,
	datac => \U2|w_state~13_combout\,
	datad => \U2|w_state~16_combout\,
	combout => \U2|w_state~17_combout\);

-- Location: FF_X39_Y26_N13
\U2|w_state.st_timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_state~17_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_state.st_timer~q\);

-- Location: FF_X38_Y26_N27
\U2|UU1:v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|UU1:v_count[3]~3_combout\,
	sclr => \U2|w_state.st_timer~q\,
	ena => \U2|UU1:v_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|UU1:v_count[3]~q\);

-- Location: LCCOMB_X38_Y26_N10
\U2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~1_combout\ = (\U2|UU1:v_count[3]~q\ & (\U2|w_t_seg\(3) & (\U2|UU1:v_count[2]~q\ $ (!\U2|w_t_seg\(2))))) # (!\U2|UU1:v_count[3]~q\ & (!\U2|w_t_seg\(3) & (\U2|UU1:v_count[2]~q\ $ (!\U2|w_t_seg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[3]~q\,
	datab => \U2|UU1:v_count[2]~q\,
	datac => \U2|w_t_seg\(2),
	datad => \U2|w_t_seg\(3),
	combout => \U2|Equal2~1_combout\);

-- Location: LCCOMB_X39_Y26_N18
\U2|Selector39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector39~1_combout\ = (\U2|Equal2~1_combout\ & (\U2|w_state.st_timer~q\ & (\U2|Equal2~0_combout\ & !\U2|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|w_state.st_timer~q\,
	datac => \U2|Equal2~0_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|Selector39~1_combout\);

-- Location: LCCOMB_X39_Y26_N6
\U2|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector39~0_combout\ = (\U2|w_state.st_t_done~q\ & (!\U2|Equal3~3_combout\ & ((\U2|Equal4~0_combout\) # (!\U2|o_done~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_done~0_combout\,
	datab => \U2|w_state.st_t_done~q\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal3~3_combout\,
	combout => \U2|Selector39~0_combout\);

-- Location: LCCOMB_X39_Y26_N20
\U2|Selector39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector39~2_combout\ = (\U2|Selector39~0_combout\) # ((!\U2|w_state.st_t_done~q\ & ((\U2|Selector39~1_combout\) # (\U2|o_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector39~1_combout\,
	datab => \U2|w_state.st_t_done~q\,
	datac => \U2|o_done~q\,
	datad => \U2|Selector39~0_combout\,
	combout => \U2|Selector39~2_combout\);

-- Location: FF_X39_Y26_N21
\U2|o_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|Selector39~2_combout\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_done~q\);

-- Location: LCCOMB_X44_Y26_N14
\U1|w_state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~26_combout\ = (!\U1|w_state.st_idle~q\ & ((\U1|UU1:v_repo[0]~q\ & ((\i_temp~input_o\))) # (!\U1|UU1:v_repo[0]~q\ & (!\U2|o_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_done~q\,
	datab => \i_temp~input_o\,
	datac => \U1|UU1:v_repo[0]~q\,
	datad => \U1|w_state.st_idle~q\,
	combout => \U1|w_state~26_combout\);

-- Location: LCCOMB_X44_Y26_N2
\U1|w_state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~27_combout\ = (!\U1|Selector99~7_combout\ & (!\U1|w_state.st_check_valv~q\ & (!\U1|w_state~26_combout\ & \U1|w_state.st_idle~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector99~7_combout\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \U1|w_state~26_combout\,
	datad => \U1|w_state.st_idle~4_combout\,
	combout => \U1|w_state~27_combout\);

-- Location: FF_X44_Y26_N3
\U1|w_state.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~27_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_idle~q\);

-- Location: LCCOMB_X44_Y26_N20
\U1|Selector99~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~2_combout\ = (!\U1|w_state.st_idle~q\ & (!\U1|UU1:v_repo[0]~q\ & \U2|o_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|UU1:v_repo[0]~q\,
	datad => \U2|o_done~q\,
	combout => \U1|Selector99~2_combout\);

-- Location: LCCOMB_X44_Y26_N18
\U1|Selector99~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~3_combout\ = (!\i_temp~input_o\ & ((\U1|w_state.st_check_temp~q\) # ((\U1|UU1:v_repo[0]~q\ & !\U1|w_state.st_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \i_temp~input_o\,
	datac => \U1|UU1:v_repo[0]~q\,
	datad => \U1|w_state.st_idle~q\,
	combout => \U1|Selector99~3_combout\);

-- Location: LCCOMB_X44_Y26_N26
\U1|Selector99~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~5_combout\ = (\U1|Selector99~2_combout\) # ((\U1|Selector99~3_combout\) # (!\U1|Selector99~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Selector99~2_combout\,
	datac => \U1|Selector99~3_combout\,
	datad => \U1|Selector99~4_combout\,
	combout => \U1|Selector99~5_combout\);

-- Location: LCCOMB_X44_Y27_N6
\U1|w_state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~20_combout\ = (\U1|Selector99~4_combout\ & (\U1|w_state.st_idle~4_combout\ & ((\U1|Selector99~5_combout\) # (!\U1|Selector98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector99~4_combout\,
	datab => \U1|Selector99~5_combout\,
	datac => \U1|w_state.st_idle~4_combout\,
	datad => \U1|Selector98~0_combout\,
	combout => \U1|w_state~20_combout\);

-- Location: LCCOMB_X44_Y27_N24
\U1|Selector99~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector99~6_combout\ = ((!\U1|Selector99~1_combout\) # (!\U1|Selector99~0_combout\)) # (!\U1|w_state.st_check_repo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_state.st_check_repo~q\,
	datac => \U1|Selector99~0_combout\,
	datad => \U1|Selector99~1_combout\,
	combout => \U1|Selector99~6_combout\);

-- Location: LCCOMB_X44_Y27_N30
\U1|w_state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~21_combout\ = (\U1|w_state~20_combout\ & (((\U1|w_state.st_check_temp~q\ & \U1|w_state~19_combout\)) # (!\U1|Selector99~6_combout\))) # (!\U1|w_state~20_combout\ & (((\U1|w_state.st_check_temp~q\ & \U1|w_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state~20_combout\,
	datab => \U1|Selector99~6_combout\,
	datac => \U1|w_state.st_check_temp~q\,
	datad => \U1|w_state~19_combout\,
	combout => \U1|w_state~21_combout\);

-- Location: FF_X44_Y27_N31
\U1|w_state.st_check_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~21_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_temp~q\);

-- Location: LCCOMB_X44_Y26_N8
\U1|Selector135~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector135~0_combout\ = (\U1|w_state.st_check_temp~q\ & (((\U1|UU1:v_repo[0]~q\)) # (!\i_temp~input_o\))) # (!\U1|w_state.st_check_temp~q\ & (((\U1|UU1:v_repo[0]~q\ & !\U1|w_state.st_check_valv~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \i_temp~input_o\,
	datac => \U1|UU1:v_repo[0]~q\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|Selector135~0_combout\);

-- Location: FF_X44_Y26_N9
\U1|UU1:v_repo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector135~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_repo[0]~q\);

-- Location: LCCOMB_X43_Y27_N2
\U1|w_state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~23_combout\ = (\U1|UU1:v_repo[0]~q\ & !\i_temp~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UU1:v_repo[0]~q\,
	datad => \i_temp~input_o\,
	combout => \U1|w_state~23_combout\);

-- Location: LCCOMB_X44_Y27_N2
\U1|w_state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~25_combout\ = (\U1|w_state~23_combout\ & ((\U1|w_state~22_combout\) # ((\U1|w_state~19_combout\ & \U1|w_state.st_check_type~q\)))) # (!\U1|w_state~23_combout\ & (\U1|w_state~19_combout\ & (\U1|w_state.st_check_type~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state~23_combout\,
	datab => \U1|w_state~19_combout\,
	datac => \U1|w_state.st_check_type~q\,
	datad => \U1|w_state~22_combout\,
	combout => \U1|w_state~25_combout\);

-- Location: FF_X44_Y27_N3
\U1|w_state.st_check_type\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~25_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_type~q\);

-- Location: LCCOMB_X43_Y27_N22
\U1|UU1:v_type[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_type[0]~0_combout\ = ((!\i_type_3~input_o\ & (!\i_type_1~input_o\ & !\i_type_2~input_o\))) # (!\U1|w_state.st_check_type~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_type_3~input_o\,
	datab => \i_type_1~input_o\,
	datac => \i_type_2~input_o\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|UU1:v_type[0]~0_combout\);

-- Location: LCCOMB_X44_Y27_N16
\U1|w_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~29_combout\ = (!\U1|UU1:v_type[0]~0_combout\ & \U1|w_state~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|UU1:v_type[0]~0_combout\,
	datad => \U1|w_state~20_combout\,
	combout => \U1|w_state~29_combout\);

-- Location: FF_X44_Y27_N17
\U1|w_state.st_check_sugar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~29_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_sugar~q\);

-- Location: LCCOMB_X44_Y26_N10
\U1|w_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~28_combout\ = (\U1|w_state.st_check_sugar~q\ & \U1|w_state.st_idle~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_sugar~q\,
	datad => \U1|w_state.st_idle~4_combout\,
	combout => \U1|w_state~28_combout\);

-- Location: FF_X44_Y26_N11
\U1|w_state.st_check_size\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~28_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_size~q\);

-- Location: LCCOMB_X44_Y26_N30
\U1|w_state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~18_combout\ = (\U1|w_state.st_check_size~q\ & \U1|w_state.st_idle~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datad => \U1|w_state.st_idle~4_combout\,
	combout => \U1|w_state~18_combout\);

-- Location: FF_X44_Y26_N31
\U1|w_state.st_check_valv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~18_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_valv~q\);

-- Location: LCCOMB_X39_Y27_N12
\U1|UU1:v_res_1[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_res_1[31]~0_combout\ = (\i_prepare~input_o\ & \U1|w_state.st_check_valv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_prepare~input_o\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|UU1:v_res_1[31]~0_combout\);

-- Location: LCCOMB_X39_Y27_N24
\U1|o_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[0]~0_combout\ = (\U1|UU1:v_res_1[31]~0_combout\ & ((\U1|UU1:v_type[1]~q\ & (\U1|o_data\(0))) # (!\U1|UU1:v_type[1]~q\ & ((\U1|UU1:v_type[0]~q\))))) # (!\U1|UU1:v_res_1[31]~0_combout\ & (((\U1|o_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_res_1[31]~0_combout\,
	datab => \U1|UU1:v_type[1]~q\,
	datac => \U1|o_data\(0),
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|o_data[0]~0_combout\);

-- Location: FF_X39_Y27_N25
\U1|o_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[0]~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(0));

-- Location: LCCOMB_X38_Y27_N20
\U2|o_type_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_type_1~0_combout\ = (\U2|w_state.st_led_start~q\ & \i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_state.st_led_start~q\,
	datad => \i_rst~input_o\,
	combout => \U2|o_type_1~0_combout\);

-- Location: FF_X38_Y27_N21
\U2|o_type_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|o_data\(0),
	sload => VCC,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_type_1~q\);

-- Location: FF_X38_Y27_N3
\U2|o_type_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|o_data\(1),
	sload => VCC,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_type_2~q\);

-- Location: LCCOMB_X38_Y27_N24
\U2|o_type_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_type_3~feeder_combout\ = \U1|o_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|o_data\(2),
	combout => \U2|o_type_3~feeder_combout\);

-- Location: FF_X38_Y27_N25
\U2|o_type_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_type_3~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_type_3~q\);

-- Location: FF_X38_Y27_N31
\U2|o_size\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|o_data\(3),
	sload => VCC,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_size~q\);

-- Location: LCCOMB_X38_Y27_N28
\U2|o_sugar~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_sugar~feeder_combout\ = \U1|o_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|o_data\(4),
	combout => \U2|o_sugar~feeder_combout\);

-- Location: FF_X38_Y27_N29
\U2|o_sugar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_sugar~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_sugar~q\);

-- Location: LCCOMB_X44_Y26_N0
\U1|o_data[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[6]~3_combout\ = (\U1|o_data\(6)) # ((\U1|w_state.st_check_temp~q\ & \i_temp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \i_temp~input_o\,
	datac => \U1|o_data\(6),
	combout => \U1|o_data[6]~3_combout\);

-- Location: FF_X44_Y26_N1
\U1|o_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[6]~3_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(6));

-- Location: LCCOMB_X38_Y27_N14
\U2|o_temp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_temp~feeder_combout\ = \U1|o_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|o_data\(6),
	combout => \U2|o_temp~feeder_combout\);

-- Location: FF_X38_Y27_N15
\U2|o_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_temp~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_temp~q\);

-- Location: LCCOMB_X44_Y27_N12
\U1|o_data[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[5]~4_combout\ = (\U1|o_data\(5)) # ((\U1|w_state.st_check_repo~q\ & ((!\U1|Selector99~1_combout\) # (!\U1|Selector99~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector99~0_combout\,
	datab => \U1|w_state.st_check_repo~q\,
	datac => \U1|o_data\(5),
	datad => \U1|Selector99~1_combout\,
	combout => \U1|o_data[5]~4_combout\);

-- Location: FF_X44_Y27_N13
\U1|o_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[5]~4_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(5));

-- Location: LCCOMB_X38_Y27_N0
\U2|o_repo~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_repo~feeder_combout\ = \U1|o_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|o_data\(5),
	combout => \U2|o_repo~feeder_combout\);

-- Location: FF_X38_Y27_N1
\U2|o_repo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_repo~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_repo~q\);

-- Location: LCCOMB_X38_Y27_N10
\U2|o_prepare~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_prepare~feeder_combout\ = \U1|o_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|o_data\(7),
	combout => \U2|o_prepare~feeder_combout\);

-- Location: FF_X38_Y27_N11
\U2|o_prepare\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_prepare~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_prepare~q\);

-- Location: LCCOMB_X41_Y24_N6
\U3|w_state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|w_state~7_combout\ = (!\U3|w_state.st_disp_done~q\ & \U2|o_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|w_state.st_disp_done~q\,
	datad => \U2|o_done~q\,
	combout => \U3|w_state~7_combout\);

-- Location: FF_X41_Y24_N7
\U3|w_state.st_disp_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U3|w_state~7_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|w_state.st_disp_done~q\);

-- Location: LCCOMB_X41_Y24_N24
\U3|o_disp_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|o_disp_4~0_combout\ = (\U3|w_state.st_disp_done~q\) # ((\U3|o_disp_4\(0) & \U2|o_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|w_state.st_disp_done~q\,
	datac => \U3|o_disp_4\(0),
	datad => \U2|o_done~q\,
	combout => \U3|o_disp_4~0_combout\);

-- Location: FF_X41_Y24_N25
\U3|o_disp_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U3|o_disp_4~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|o_disp_4\(0));

ww_o_type_1 <= \o_type_1~output_o\;

ww_o_type_2 <= \o_type_2~output_o\;

ww_o_type_3 <= \o_type_3~output_o\;

ww_o_size <= \o_size~output_o\;

ww_o_sugar <= \o_sugar~output_o\;

ww_o_temp <= \o_temp~output_o\;

ww_o_repo <= \o_repo~output_o\;

ww_o_prepare <= \o_prepare~output_o\;

ww_o_done <= \o_done~output_o\;

ww_o_disp_1(0) <= \o_disp_1[0]~output_o\;

ww_o_disp_1(1) <= \o_disp_1[1]~output_o\;

ww_o_disp_1(2) <= \o_disp_1[2]~output_o\;

ww_o_disp_1(3) <= \o_disp_1[3]~output_o\;

ww_o_disp_1(4) <= \o_disp_1[4]~output_o\;

ww_o_disp_1(5) <= \o_disp_1[5]~output_o\;

ww_o_disp_1(6) <= \o_disp_1[6]~output_o\;

ww_o_disp_1(7) <= \o_disp_1[7]~output_o\;

ww_o_disp_2(0) <= \o_disp_2[0]~output_o\;

ww_o_disp_2(1) <= \o_disp_2[1]~output_o\;

ww_o_disp_2(2) <= \o_disp_2[2]~output_o\;

ww_o_disp_2(3) <= \o_disp_2[3]~output_o\;

ww_o_disp_2(4) <= \o_disp_2[4]~output_o\;

ww_o_disp_2(5) <= \o_disp_2[5]~output_o\;

ww_o_disp_2(6) <= \o_disp_2[6]~output_o\;

ww_o_disp_2(7) <= \o_disp_2[7]~output_o\;

ww_o_disp_3(0) <= \o_disp_3[0]~output_o\;

ww_o_disp_3(1) <= \o_disp_3[1]~output_o\;

ww_o_disp_3(2) <= \o_disp_3[2]~output_o\;

ww_o_disp_3(3) <= \o_disp_3[3]~output_o\;

ww_o_disp_3(4) <= \o_disp_3[4]~output_o\;

ww_o_disp_3(5) <= \o_disp_3[5]~output_o\;

ww_o_disp_3(6) <= \o_disp_3[6]~output_o\;

ww_o_disp_3(7) <= \o_disp_3[7]~output_o\;

ww_o_disp_4(0) <= \o_disp_4[0]~output_o\;

ww_o_disp_4(1) <= \o_disp_4[1]~output_o\;

ww_o_disp_4(2) <= \o_disp_4[2]~output_o\;

ww_o_disp_4(3) <= \o_disp_4[3]~output_o\;

ww_o_disp_4(4) <= \o_disp_4[4]~output_o\;

ww_o_disp_4(5) <= \o_disp_4[5]~output_o\;

ww_o_disp_4(6) <= \o_disp_4[6]~output_o\;

ww_o_disp_4(7) <= \o_disp_4[7]~output_o\;
END structure;


