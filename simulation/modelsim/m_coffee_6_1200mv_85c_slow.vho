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

-- DATE "07/08/2019 13:47:21"

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
	o_type_1 : OUT std_logic;
	o_type_2 : OUT std_logic;
	o_type_3 : OUT std_logic;
	o_size : OUT std_logic;
	o_sugar : OUT std_logic;
	o_temp : OUT std_logic;
	o_repo : OUT std_logic;
	o_prepare : OUT std_logic;
	o_done : OUT std_logic;
	o_disp_1 : OUT std_logic_vector(7 DOWNTO 0);
	o_disp_2 : OUT std_logic_vector(7 DOWNTO 0);
	o_disp_3 : OUT std_logic_vector(7 DOWNTO 0);
	o_disp_4 : OUT std_logic_vector(7 DOWNTO 0)
	);
END m_coffee;

-- Design Ports Information
-- o_type_1	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_type_2	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_type_3	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_size	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sugar	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_temp	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_repo	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_prepare	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_done	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_1[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_2[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_3[7]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[6]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_disp_4[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_prepare	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_temp	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_type_1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_type_2	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_type_3	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_size	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sugar	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \i_type_1~input_o\ : std_logic;
SIGNAL \i_type_2~input_o\ : std_logic;
SIGNAL \i_type_3~input_o\ : std_logic;
SIGNAL \U1|UU1:v_type[0]~0_combout\ : std_logic;
SIGNAL \i_temp~input_o\ : std_logic;
SIGNAL \U1|w_state~18_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \i_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|w_state.st_check_valv~q\ : std_logic;
SIGNAL \U1|w_state~29_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_sugar~q\ : std_logic;
SIGNAL \U1|w_state.st_idle~5_combout\ : std_logic;
SIGNAL \U1|Selector97~3_combout\ : std_logic;
SIGNAL \U1|Selector100~0_combout\ : std_logic;
SIGNAL \U1|w_res_1[0]~3_combout\ : std_logic;
SIGNAL \i_prepare~input_o\ : std_logic;
SIGNAL \U1|Selector31~0_combout\ : std_logic;
SIGNAL \U1|w_res_1[3]~0_combout\ : std_logic;
SIGNAL \U1|o_data[1]~1_combout\ : std_logic;
SIGNAL \U1|o_data[2]~2_combout\ : std_logic;
SIGNAL \U2|v_count~4_combout\ : std_logic;
SIGNAL \i_size~input_o\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~1_combout\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~2_combout\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~q\ : std_logic;
SIGNAL \U1|o_data[3]~feeder_combout\ : std_logic;
SIGNAL \U2|v_count~3_combout\ : std_logic;
SIGNAL \U2|v_count~0_combout\ : std_logic;
SIGNAL \i_sugar~input_o\ : std_logic;
SIGNAL \U1|UU1:v_sugar[0]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_sugar[0]~1_combout\ : std_logic;
SIGNAL \U1|UU1:v_sugar[0]~q\ : std_logic;
SIGNAL \U1|o_data[4]~feeder_combout\ : std_logic;
SIGNAL \U2|v_count~1_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[0]~2\ : std_logic;
SIGNAL \U2|UU1:v_count[1]~2\ : std_logic;
SIGNAL \U2|UU1:v_count[2]~1_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[0]~1_combout\ : std_logic;
SIGNAL \U2|w_timer[0]~29_combout\ : std_logic;
SIGNAL \U2|w_timer[14]~58\ : std_logic;
SIGNAL \U2|w_timer[15]~59_combout\ : std_logic;
SIGNAL \U2|v_count~2_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[2]~2\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~3_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~q\ : std_logic;
SIGNAL \U1|o_data[7]~5_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|w_state~13_combout\ : std_logic;
SIGNAL \U2|w_state~14_combout\ : std_logic;
SIGNAL \U2|w_state.st_led_start~q\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|w_state~18_combout\ : std_logic;
SIGNAL \U2|w_state.st_idle~q\ : std_logic;
SIGNAL \U2|o_done~1_combout\ : std_logic;
SIGNAL \U2|w_timer[15]~60\ : std_logic;
SIGNAL \U2|w_timer[16]~61_combout\ : std_logic;
SIGNAL \U2|w_timer[16]~62\ : std_logic;
SIGNAL \U2|w_timer[17]~63_combout\ : std_logic;
SIGNAL \U2|w_timer[17]~64\ : std_logic;
SIGNAL \U2|w_timer[18]~65_combout\ : std_logic;
SIGNAL \U2|w_timer[18]~66\ : std_logic;
SIGNAL \U2|w_timer[19]~67_combout\ : std_logic;
SIGNAL \U2|w_timer[19]~68\ : std_logic;
SIGNAL \U2|w_timer[20]~69_combout\ : std_logic;
SIGNAL \U2|w_timer[20]~70\ : std_logic;
SIGNAL \U2|w_timer[21]~71_combout\ : std_logic;
SIGNAL \U2|w_timer[21]~72\ : std_logic;
SIGNAL \U2|w_timer[22]~73_combout\ : std_logic;
SIGNAL \U2|w_timer[22]~74\ : std_logic;
SIGNAL \U2|w_timer[23]~75_combout\ : std_logic;
SIGNAL \U2|w_timer[23]~76\ : std_logic;
SIGNAL \U2|w_timer[24]~77_combout\ : std_logic;
SIGNAL \U2|w_timer[24]~78\ : std_logic;
SIGNAL \U2|w_timer[25]~79_combout\ : std_logic;
SIGNAL \U2|w_timer[25]~80\ : std_logic;
SIGNAL \U2|w_timer[26]~81_combout\ : std_logic;
SIGNAL \U2|Equal1~7_combout\ : std_logic;
SIGNAL \U2|Equal1~6_combout\ : std_logic;
SIGNAL \U2|Equal1~5_combout\ : std_logic;
SIGNAL \U2|Equal1~3_combout\ : std_logic;
SIGNAL \U2|Equal1~2_combout\ : std_logic;
SIGNAL \U2|Equal1~1_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|Equal1~4_combout\ : std_logic;
SIGNAL \U2|Equal1~8_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~6_combout\ : std_logic;
SIGNAL \U2|Add4~0_combout\ : std_logic;
SIGNAL \U2|w_t_seg[0]~12_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~13_combout\ : std_logic;
SIGNAL \U2|w_t_seg[2]~9_combout\ : std_logic;
SIGNAL \U2|Add4~1_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~11_combout\ : std_logic;
SIGNAL \U2|o_done~0_combout\ : std_logic;
SIGNAL \U2|w_t_seg[3]~7_combout\ : std_logic;
SIGNAL \U2|w_t_seg[0]~8_combout\ : std_logic;
SIGNAL \U2|w_t_seg[1]~10_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[1]~1_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[1]~q\ : std_logic;
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|w_timer[15]~83_combout\ : std_logic;
SIGNAL \U2|w_timer[0]~30\ : std_logic;
SIGNAL \U2|w_timer[1]~31_combout\ : std_logic;
SIGNAL \U2|w_timer[1]~32\ : std_logic;
SIGNAL \U2|w_timer[2]~33_combout\ : std_logic;
SIGNAL \U2|w_timer[2]~34\ : std_logic;
SIGNAL \U2|w_timer[3]~35_combout\ : std_logic;
SIGNAL \U2|w_timer[3]~36\ : std_logic;
SIGNAL \U2|w_timer[4]~37_combout\ : std_logic;
SIGNAL \U2|w_timer[4]~38\ : std_logic;
SIGNAL \U2|w_timer[5]~39_combout\ : std_logic;
SIGNAL \U2|w_timer[5]~40\ : std_logic;
SIGNAL \U2|w_timer[6]~41_combout\ : std_logic;
SIGNAL \U2|w_timer[6]~42\ : std_logic;
SIGNAL \U2|w_timer[7]~43_combout\ : std_logic;
SIGNAL \U2|w_timer[7]~44\ : std_logic;
SIGNAL \U2|w_timer[8]~45_combout\ : std_logic;
SIGNAL \U2|w_timer[8]~46\ : std_logic;
SIGNAL \U2|w_timer[9]~47_combout\ : std_logic;
SIGNAL \U2|w_timer[9]~48\ : std_logic;
SIGNAL \U2|w_timer[10]~49_combout\ : std_logic;
SIGNAL \U2|w_timer[10]~50\ : std_logic;
SIGNAL \U2|w_timer[11]~51_combout\ : std_logic;
SIGNAL \U2|w_timer[11]~52\ : std_logic;
SIGNAL \U2|w_timer[12]~53_combout\ : std_logic;
SIGNAL \U2|w_timer[12]~54\ : std_logic;
SIGNAL \U2|w_timer[13]~55_combout\ : std_logic;
SIGNAL \U2|w_timer[13]~56\ : std_logic;
SIGNAL \U2|w_timer[14]~57_combout\ : std_logic;
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
SIGNAL \U2|w_state.st_idle~0_combout\ : std_logic;
SIGNAL \U2|w_state~12_combout\ : std_logic;
SIGNAL \U2|w_state~15_combout\ : std_logic;
SIGNAL \U2|w_state.st_t_done~q\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~1_combout\ : std_logic;
SIGNAL \U2|Equal2~2_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[3]~2_combout\ : std_logic;
SIGNAL \U2|UU1:v_count[0]~q\ : std_logic;
SIGNAL \U1|Selector103~0_combout\ : std_logic;
SIGNAL \U1|Selector100~1_combout\ : std_logic;
SIGNAL \U1|Selector103~1_combout\ : std_logic;
SIGNAL \U1|o_read~q\ : std_logic;
SIGNAL \U2|UU1~0_combout\ : std_logic;
SIGNAL \U2|w_state~16_combout\ : std_logic;
SIGNAL \U2|w_state~17_combout\ : std_logic;
SIGNAL \U2|w_state.st_timer~q\ : std_logic;
SIGNAL \U2|UU1:v_count[2]~q\ : std_logic;
SIGNAL \U2|Equal2~1_combout\ : std_logic;
SIGNAL \U2|Selector39~1_combout\ : std_logic;
SIGNAL \U2|Selector39~0_combout\ : std_logic;
SIGNAL \U2|Selector39~2_combout\ : std_logic;
SIGNAL \U2|o_done~q\ : std_logic;
SIGNAL \U1|w_state~26_combout\ : std_logic;
SIGNAL \U1|w_state~25_combout\ : std_logic;
SIGNAL \U1|w_state~27_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~q\ : std_logic;
SIGNAL \U1|UU1:v_size[0]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_type[1]~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_type[0]~q\ : std_logic;
SIGNAL \U1|w_res_1[3]~1_combout\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Selector97~2_combout\ : std_logic;
SIGNAL \U1|Selector100~3_combout\ : std_logic;
SIGNAL \U1|Selector100~4_combout\ : std_logic;
SIGNAL \U1|w_state~20_combout\ : std_logic;
SIGNAL \U1|w_state~22_combout\ : std_logic;
SIGNAL \U1|w_state~23_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_repo~q\ : std_logic;
SIGNAL \U1|w_state.st_idle~1_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~3_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~0_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~2_combout\ : std_logic;
SIGNAL \U1|w_state.st_idle~4_combout\ : std_logic;
SIGNAL \U1|w_state~28_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_size~q\ : std_logic;
SIGNAL \U1|w_state~19_combout\ : std_logic;
SIGNAL \U1|w_state~21_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_temp~q\ : std_logic;
SIGNAL \U1|Selector104~0_combout\ : std_logic;
SIGNAL \U1|w_res_stats~q\ : std_logic;
SIGNAL \U1|Selector100~2_combout\ : std_logic;
SIGNAL \U1|w_state~24_combout\ : std_logic;
SIGNAL \U1|w_state.st_check_type~q\ : std_logic;
SIGNAL \U1|Selector30~0_combout\ : std_logic;
SIGNAL \U1|UU1:v_type[1]~q\ : std_logic;
SIGNAL \U1|o_data[0]~0_combout\ : std_logic;
SIGNAL \U2|o_type_1~feeder_combout\ : std_logic;
SIGNAL \U2|o_type_1~0_combout\ : std_logic;
SIGNAL \U2|o_type_1~q\ : std_logic;
SIGNAL \U2|o_type_2~feeder_combout\ : std_logic;
SIGNAL \U2|o_type_2~q\ : std_logic;
SIGNAL \U2|o_type_3~feeder_combout\ : std_logic;
SIGNAL \U2|o_type_3~q\ : std_logic;
SIGNAL \U2|o_size~q\ : std_logic;
SIGNAL \U2|o_sugar~feeder_combout\ : std_logic;
SIGNAL \U2|o_sugar~q\ : std_logic;
SIGNAL \U1|o_data[6]~3_combout\ : std_logic;
SIGNAL \U2|o_temp~q\ : std_logic;
SIGNAL \U1|o_data[5]~4_combout\ : std_logic;
SIGNAL \U2|o_repo~feeder_combout\ : std_logic;
SIGNAL \U2|o_repo~q\ : std_logic;
SIGNAL \U2|o_prepare~feeder_combout\ : std_logic;
SIGNAL \U2|o_prepare~q\ : std_logic;
SIGNAL \U3|w_state~7_combout\ : std_logic;
SIGNAL \U3|w_state.st_disp_done~q\ : std_logic;
SIGNAL \U3|o_disp_2~0_combout\ : std_logic;
SIGNAL \U1|o_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|w_res_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|w_timer\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \U2|w_t_seg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|w_t_ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|o_disp_4\ : std_logic_vector(7 DOWNTO 0);
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X20_Y43_N2
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X0_Y28_N2
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

-- Location: IOOBUF_X20_Y43_N9
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

-- Location: IOOBUF_X18_Y43_N2
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

-- Location: IOOBUF_X25_Y43_N30
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

-- Location: IOOBUF_X20_Y43_N30
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

-- Location: IOOBUF_X14_Y43_N16
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X63_Y0_N30
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X29_Y43_N2
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

-- Location: IOOBUF_X1_Y43_N16
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X1_Y43_N9
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

-- Location: IOOBUF_X9_Y43_N2
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

-- Location: IOOBUF_X67_Y3_N16
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

-- Location: IOOBUF_X0_Y17_N23
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

-- Location: IOOBUF_X56_Y43_N16
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X52_Y0_N9
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

-- Location: IOOBUF_X38_Y43_N2
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X43_Y0_N9
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

-- Location: IOOBUF_X9_Y43_N30
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

-- Location: IOOBUF_X61_Y43_N2
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

-- Location: IOOBUF_X67_Y29_N2
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

-- Location: IOOBUF_X45_Y43_N2
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

-- Location: IOOBUF_X0_Y16_N2
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

-- Location: IOOBUF_X67_Y27_N16
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

-- Location: IOOBUF_X1_Y43_N23
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

-- Location: IOOBUF_X9_Y43_N16
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

-- Location: IOOBUF_X9_Y43_N9
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X7_Y43_N9
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

-- Location: IOOBUF_X67_Y14_N9
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

-- Location: IOOBUF_X9_Y0_N30
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

-- Location: IOOBUF_X0_Y29_N23
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

-- Location: IOOBUF_X54_Y43_N9
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

-- Location: IOIBUF_X25_Y43_N15
\i_type_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_type_1,
	o => \i_type_1~input_o\);

-- Location: IOIBUF_X25_Y43_N1
\i_type_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_type_2,
	o => \i_type_2~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\i_type_3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_type_3,
	o => \i_type_3~input_o\);

-- Location: LCCOMB_X21_Y27_N12
\U1|UU1:v_type[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_type[0]~0_combout\ = (!\i_type_2~input_o\ & (!\i_type_3~input_o\ & !\i_type_1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_type_2~input_o\,
	datab => \i_type_3~input_o\,
	datac => \i_type_1~input_o\,
	combout => \U1|UU1:v_type[0]~0_combout\);

-- Location: IOIBUF_X25_Y43_N22
\i_temp~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_temp,
	o => \i_temp~input_o\);

-- Location: LCCOMB_X22_Y27_N16
\U1|w_state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~18_combout\ = (\U1|w_state.st_check_size~q\ & \U1|w_state.st_idle~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|w_state.st_check_size~q\,
	datad => \U1|w_state.st_idle~4_combout\,
	combout => \U1|w_state~18_combout\);

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

-- Location: FF_X22_Y27_N17
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

-- Location: LCCOMB_X23_Y27_N28
\U1|w_state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~29_combout\ = (\U1|w_state.st_check_type~q\ & (!\U1|UU1:v_type[0]~0_combout\ & \U1|w_state~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_state.st_check_type~q\,
	datac => \U1|UU1:v_type[0]~0_combout\,
	datad => \U1|w_state~19_combout\,
	combout => \U1|w_state~29_combout\);

-- Location: FF_X23_Y27_N29
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

-- Location: LCCOMB_X23_Y27_N26
\U1|w_state.st_idle~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~5_combout\ = (!\U1|w_state.st_check_valv~q\ & !\U1|w_state.st_check_sugar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|w_state.st_check_valv~q\,
	datad => \U1|w_state.st_check_sugar~q\,
	combout => \U1|w_state.st_idle~5_combout\);

-- Location: LCCOMB_X23_Y27_N6
\U1|Selector97~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector97~3_combout\ = ((!\i_type_2~input_o\ & (!\i_type_1~input_o\ & !\i_type_3~input_o\))) # (!\U1|w_state.st_check_type~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_type_2~input_o\,
	datab => \i_type_1~input_o\,
	datac => \i_type_3~input_o\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|Selector97~3_combout\);

-- Location: LCCOMB_X23_Y27_N16
\U1|Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector100~0_combout\ = (!\i_temp~input_o\ & \U1|w_state.st_check_temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_temp~input_o\,
	datac => \U1|w_state.st_check_temp~q\,
	combout => \U1|Selector100~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\U1|w_res_1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_res_1[0]~3_combout\ = !\U1|w_res_1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|w_res_1\(0),
	combout => \U1|w_res_1[0]~3_combout\);

-- Location: IOIBUF_X22_Y43_N1
\i_prepare~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_prepare,
	o => \i_prepare~input_o\);

-- Location: LCCOMB_X21_Y27_N8
\U1|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector31~0_combout\ = (\U1|w_state.st_check_type~q\ & ((\i_type_1~input_o\) # (!\i_type_2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_type_2~input_o\,
	datab => \U1|w_state.st_check_type~q\,
	datac => \i_type_1~input_o\,
	combout => \U1|Selector31~0_combout\);

-- Location: LCCOMB_X22_Y28_N28
\U1|w_res_1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_res_1[3]~0_combout\ = (\i_prepare~input_o\ & \U1|w_state.st_check_valv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_prepare~input_o\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|w_res_1[3]~0_combout\);

-- Location: LCCOMB_X22_Y28_N10
\U1|o_data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[1]~1_combout\ = (\U1|w_res_1[3]~0_combout\ & ((\U1|UU1:v_type[0]~q\ & ((\U1|o_data\(1)))) # (!\U1|UU1:v_type[0]~q\ & (\U1|UU1:v_type[1]~q\)))) # (!\U1|w_res_1[3]~0_combout\ & (((\U1|o_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[1]~q\,
	datab => \U1|w_res_1[3]~0_combout\,
	datac => \U1|o_data\(1),
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|o_data[1]~1_combout\);

-- Location: FF_X22_Y28_N11
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

-- Location: LCCOMB_X22_Y28_N0
\U1|o_data[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[2]~2_combout\ = (\U1|UU1:v_type[1]~q\ & ((\U1|o_data\(2)) # ((\U1|w_res_1[3]~0_combout\ & \U1|UU1:v_type[0]~q\)))) # (!\U1|UU1:v_type[1]~q\ & (\U1|o_data\(2) & ((\U1|UU1:v_type[0]~q\) # (!\U1|w_res_1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[1]~q\,
	datab => \U1|w_res_1[3]~0_combout\,
	datac => \U1|o_data\(2),
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|o_data[2]~2_combout\);

-- Location: FF_X22_Y28_N1
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

-- Location: LCCOMB_X22_Y28_N30
\U2|v_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~4_combout\ = (\U1|o_data\(2) & ((\U1|o_data\(1)) # (\U1|o_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(1),
	datab => \U1|o_data\(2),
	datad => \U1|o_data\(0),
	combout => \U2|v_count~4_combout\);

-- Location: IOIBUF_X22_Y43_N29
\i_size~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_size,
	o => \i_size~input_o\);

-- Location: LCCOMB_X22_Y27_N18
\U1|UU1:v_size[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_size[0]~1_combout\ = (\i_rst~input_o\ & ((\U1|UU1:v_size[0]~0_combout\) # ((\U1|w_state.st_idle~q\ & \U1|w_state.st_check_size~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|w_state.st_check_size~q\,
	datad => \U1|UU1:v_size[0]~0_combout\,
	combout => \U1|UU1:v_size[0]~1_combout\);

-- Location: LCCOMB_X22_Y27_N12
\U1|UU1:v_size[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_size[0]~2_combout\ = (\U1|UU1:v_size[0]~1_combout\ & (\i_size~input_o\ & (\U1|w_state.st_idle~q\))) # (!\U1|UU1:v_size[0]~1_combout\ & (((\U1|UU1:v_size[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_size~input_o\,
	datab => \U1|w_state.st_idle~q\,
	datac => \U1|UU1:v_size[0]~q\,
	datad => \U1|UU1:v_size[0]~1_combout\,
	combout => \U1|UU1:v_size[0]~2_combout\);

-- Location: FF_X22_Y27_N13
\U1|UU1:v_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|UU1:v_size[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_size[0]~q\);

-- Location: LCCOMB_X22_Y28_N14
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

-- Location: FF_X22_Y28_N15
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
	ena => \U1|w_res_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(3));

-- Location: LCCOMB_X22_Y28_N4
\U2|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~3_combout\ = (\U1|o_data\(1) & ((\U1|o_data\(2) & ((\U1|o_data\(0)) # (!\U1|o_data\(3)))) # (!\U1|o_data\(2) & ((\U1|o_data\(3)) # (!\U1|o_data\(0)))))) # (!\U1|o_data\(1) & (\U1|o_data\(3) $ (((\U1|o_data\(0)) # (!\U1|o_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(1),
	datab => \U1|o_data\(2),
	datac => \U1|o_data\(3),
	datad => \U1|o_data\(0),
	combout => \U2|v_count~3_combout\);

-- Location: LCCOMB_X22_Y28_N18
\U2|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~0_combout\ = \U1|o_data\(1) $ (((\U1|o_data\(2) & (\U1|o_data\(3) & \U1|o_data\(0))) # (!\U1|o_data\(2) & ((\U1|o_data\(3)) # (\U1|o_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(1),
	datab => \U1|o_data\(2),
	datac => \U1|o_data\(3),
	datad => \U1|o_data\(0),
	combout => \U2|v_count~0_combout\);

-- Location: IOIBUF_X25_Y43_N8
\i_sugar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sugar,
	o => \i_sugar~input_o\);

-- Location: LCCOMB_X21_Y27_N16
\U1|UU1:v_sugar[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_sugar[0]~0_combout\ = (\i_rst~input_o\ & ((\U1|UU1:v_size[0]~0_combout\) # ((\U1|w_state.st_idle~q\ & \U1|w_state.st_check_sugar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_idle~q\,
	datab => \i_rst~input_o\,
	datac => \U1|w_state.st_check_sugar~q\,
	datad => \U1|UU1:v_size[0]~0_combout\,
	combout => \U1|UU1:v_sugar[0]~0_combout\);

-- Location: LCCOMB_X21_Y27_N0
\U1|UU1:v_sugar[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_sugar[0]~1_combout\ = (\U1|UU1:v_sugar[0]~0_combout\ & (\U1|w_state.st_idle~q\ & (\i_sugar~input_o\))) # (!\U1|UU1:v_sugar[0]~0_combout\ & (((\U1|UU1:v_sugar[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_idle~q\,
	datab => \i_sugar~input_o\,
	datac => \U1|UU1:v_sugar[0]~q\,
	datad => \U1|UU1:v_sugar[0]~0_combout\,
	combout => \U1|UU1:v_sugar[0]~1_combout\);

-- Location: FF_X21_Y27_N1
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

-- Location: LCCOMB_X22_Y28_N12
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

-- Location: FF_X22_Y28_N13
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
	ena => \U1|w_res_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(4));

-- Location: LCCOMB_X22_Y28_N8
\U2|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~1_combout\ = \U1|o_data\(2) $ (\U1|o_data\(3) $ (\U1|o_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|o_data\(2),
	datac => \U1|o_data\(3),
	datad => \U1|o_data\(0),
	combout => \U2|v_count~1_combout\);

-- Location: LCCOMB_X26_Y28_N12
\U2|UU1:v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[0]~1_combout\ = (\U1|o_data\(4) & (\U2|v_count~1_combout\ $ (GND))) # (!\U1|o_data\(4) & (!\U2|v_count~1_combout\ & VCC))
-- \U2|UU1:v_count[0]~2\ = CARRY((\U1|o_data\(4) & !\U2|v_count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(4),
	datab => \U2|v_count~1_combout\,
	datad => VCC,
	combout => \U2|UU1:v_count[0]~1_combout\,
	cout => \U2|UU1:v_count[0]~2\);

-- Location: LCCOMB_X26_Y28_N14
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

-- Location: LCCOMB_X26_Y28_N16
\U2|UU1:v_count[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[2]~1_combout\ = (\U2|UU1:v_count[1]~2\ & ((\U2|v_count~4_combout\ $ (\U2|v_count~3_combout\)))) # (!\U2|UU1:v_count[1]~2\ & (\U2|v_count~4_combout\ $ (\U2|v_count~3_combout\ $ (VCC))))
-- \U2|UU1:v_count[2]~2\ = CARRY((!\U2|UU1:v_count[1]~2\ & (\U2|v_count~4_combout\ $ (\U2|v_count~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|v_count~4_combout\,
	datab => \U2|v_count~3_combout\,
	datad => VCC,
	cin => \U2|UU1:v_count[1]~2\,
	combout => \U2|UU1:v_count[2]~1_combout\,
	cout => \U2|UU1:v_count[2]~2\);

-- Location: LCCOMB_X28_Y29_N6
\U2|w_timer[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[0]~29_combout\ = \U2|w_timer\(0) $ (VCC)
-- \U2|w_timer[0]~30\ = CARRY(\U2|w_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(0),
	datad => VCC,
	combout => \U2|w_timer[0]~29_combout\,
	cout => \U2|w_timer[0]~30\);

-- Location: LCCOMB_X28_Y28_N2
\U2|w_timer[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[14]~57_combout\ = (\U2|w_timer\(14) & (\U2|w_timer[13]~56\ $ (GND))) # (!\U2|w_timer\(14) & (!\U2|w_timer[13]~56\ & VCC))
-- \U2|w_timer[14]~58\ = CARRY((\U2|w_timer\(14) & !\U2|w_timer[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(14),
	datad => VCC,
	cin => \U2|w_timer[13]~56\,
	combout => \U2|w_timer[14]~57_combout\,
	cout => \U2|w_timer[14]~58\);

-- Location: LCCOMB_X28_Y28_N4
\U2|w_timer[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[15]~59_combout\ = (\U2|w_timer\(15) & (!\U2|w_timer[14]~58\)) # (!\U2|w_timer\(15) & ((\U2|w_timer[14]~58\) # (GND)))
-- \U2|w_timer[15]~60\ = CARRY((!\U2|w_timer[14]~58\) # (!\U2|w_timer\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(15),
	datad => VCC,
	cin => \U2|w_timer[14]~58\,
	combout => \U2|w_timer[15]~59_combout\,
	cout => \U2|w_timer[15]~60\);

-- Location: LCCOMB_X22_Y28_N6
\U2|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|v_count~2_combout\ = (\U1|o_data\(2) & (((!\U1|o_data\(0)) # (!\U1|o_data\(3))) # (!\U1|o_data\(1)))) # (!\U1|o_data\(2) & ((\U1|o_data\(3)) # ((\U1|o_data\(1) & \U1|o_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|o_data\(1),
	datab => \U1|o_data\(2),
	datac => \U1|o_data\(3),
	datad => \U1|o_data\(0),
	combout => \U2|v_count~2_combout\);

-- Location: LCCOMB_X26_Y28_N18
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

-- Location: FF_X26_Y28_N19
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

-- Location: LCCOMB_X22_Y28_N22
\U1|o_data[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[7]~5_combout\ = (\U1|w_state.st_check_valv~q\ & (\i_prepare~input_o\)) # (!\U1|w_state.st_check_valv~q\ & ((\U1|o_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_prepare~input_o\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \U1|o_data\(7),
	combout => \U1|o_data[7]~5_combout\);

-- Location: FF_X22_Y28_N23
\U1|o_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|o_data[7]~5_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_data\(7));

-- Location: LCCOMB_X26_Y28_N4
\U2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (!\U2|w_state.st_idle~q\ & ((\U1|o_data\(7)) # ((!\U2|UU1:v_count[3]~q\ & !\U2|UU1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_idle~q\,
	datab => \U2|UU1:v_count[3]~q\,
	datac => \U1|o_data\(7),
	datad => \U2|UU1~0_combout\,
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y28_N30
\U2|w_state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~13_combout\ = (\U2|w_state~12_combout\ & (\U2|Selector3~0_combout\ & (!\U2|w_state.st_led_start~q\ & !\U2|Selector39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state~12_combout\,
	datab => \U2|Selector3~0_combout\,
	datac => \U2|w_state.st_led_start~q\,
	datad => \U2|Selector39~1_combout\,
	combout => \U2|w_state~13_combout\);

-- Location: LCCOMB_X26_Y28_N8
\U2|w_state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~14_combout\ = (!\U2|UU1:v_count[3]~q\ & (\U2|w_state~13_combout\ & !\U2|UU1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|UU1:v_count[3]~q\,
	datac => \U2|w_state~13_combout\,
	datad => \U2|UU1~0_combout\,
	combout => \U2|w_state~14_combout\);

-- Location: FF_X26_Y28_N9
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

-- Location: LCCOMB_X26_Y28_N28
\U2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (\U2|w_state.st_led_start~q\) # ((\U2|Selector3~0_combout\) # (\U2|Selector39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_led_start~q\,
	datac => \U2|Selector3~0_combout\,
	datad => \U2|Selector39~1_combout\,
	combout => \U2|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y28_N22
\U2|w_state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~18_combout\ = (\U2|w_state~12_combout\ & (!\U2|w_state.st_led_start~q\ & ((\U2|w_state.st_idle~q\) # (\U2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state~12_combout\,
	datab => \U2|w_state.st_led_start~q\,
	datac => \U2|w_state.st_idle~q\,
	datad => \U2|Selector3~1_combout\,
	combout => \U2|w_state~18_combout\);

-- Location: FF_X26_Y28_N23
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

-- Location: LCCOMB_X27_Y28_N0
\U2|o_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_done~1_combout\ = (\U2|w_state.st_led_start~q\) # (!\U2|w_state.st_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_idle~q\,
	datad => \U2|w_state.st_led_start~q\,
	combout => \U2|o_done~1_combout\);

-- Location: FF_X27_Y28_N23
\U2|w_timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U2|w_timer[15]~59_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	sload => VCC,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(15));

-- Location: LCCOMB_X28_Y28_N6
\U2|w_timer[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[16]~61_combout\ = (\U2|w_timer\(16) & (\U2|w_timer[15]~60\ $ (GND))) # (!\U2|w_timer\(16) & (!\U2|w_timer[15]~60\ & VCC))
-- \U2|w_timer[16]~62\ = CARRY((\U2|w_timer\(16) & !\U2|w_timer[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(16),
	datad => VCC,
	cin => \U2|w_timer[15]~60\,
	combout => \U2|w_timer[16]~61_combout\,
	cout => \U2|w_timer[16]~62\);

-- Location: FF_X28_Y28_N7
\U2|w_timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[16]~61_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(16));

-- Location: LCCOMB_X28_Y28_N8
\U2|w_timer[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[17]~63_combout\ = (\U2|w_timer\(17) & (!\U2|w_timer[16]~62\)) # (!\U2|w_timer\(17) & ((\U2|w_timer[16]~62\) # (GND)))
-- \U2|w_timer[17]~64\ = CARRY((!\U2|w_timer[16]~62\) # (!\U2|w_timer\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(17),
	datad => VCC,
	cin => \U2|w_timer[16]~62\,
	combout => \U2|w_timer[17]~63_combout\,
	cout => \U2|w_timer[17]~64\);

-- Location: FF_X28_Y28_N9
\U2|w_timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[17]~63_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(17));

-- Location: LCCOMB_X28_Y28_N10
\U2|w_timer[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[18]~65_combout\ = (\U2|w_timer\(18) & (\U2|w_timer[17]~64\ $ (GND))) # (!\U2|w_timer\(18) & (!\U2|w_timer[17]~64\ & VCC))
-- \U2|w_timer[18]~66\ = CARRY((\U2|w_timer\(18) & !\U2|w_timer[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(18),
	datad => VCC,
	cin => \U2|w_timer[17]~64\,
	combout => \U2|w_timer[18]~65_combout\,
	cout => \U2|w_timer[18]~66\);

-- Location: FF_X27_Y28_N9
\U2|w_timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U2|w_timer[18]~65_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	sload => VCC,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(18));

-- Location: LCCOMB_X28_Y28_N12
\U2|w_timer[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[19]~67_combout\ = (\U2|w_timer\(19) & (!\U2|w_timer[18]~66\)) # (!\U2|w_timer\(19) & ((\U2|w_timer[18]~66\) # (GND)))
-- \U2|w_timer[19]~68\ = CARRY((!\U2|w_timer[18]~66\) # (!\U2|w_timer\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(19),
	datad => VCC,
	cin => \U2|w_timer[18]~66\,
	combout => \U2|w_timer[19]~67_combout\,
	cout => \U2|w_timer[19]~68\);

-- Location: FF_X28_Y28_N13
\U2|w_timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[19]~67_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(19));

-- Location: LCCOMB_X28_Y28_N14
\U2|w_timer[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[20]~69_combout\ = (\U2|w_timer\(20) & (\U2|w_timer[19]~68\ $ (GND))) # (!\U2|w_timer\(20) & (!\U2|w_timer[19]~68\ & VCC))
-- \U2|w_timer[20]~70\ = CARRY((\U2|w_timer\(20) & !\U2|w_timer[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(20),
	datad => VCC,
	cin => \U2|w_timer[19]~68\,
	combout => \U2|w_timer[20]~69_combout\,
	cout => \U2|w_timer[20]~70\);

-- Location: FF_X28_Y28_N15
\U2|w_timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[20]~69_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(20));

-- Location: LCCOMB_X28_Y28_N16
\U2|w_timer[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[21]~71_combout\ = (\U2|w_timer\(21) & (!\U2|w_timer[20]~70\)) # (!\U2|w_timer\(21) & ((\U2|w_timer[20]~70\) # (GND)))
-- \U2|w_timer[21]~72\ = CARRY((!\U2|w_timer[20]~70\) # (!\U2|w_timer\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(21),
	datad => VCC,
	cin => \U2|w_timer[20]~70\,
	combout => \U2|w_timer[21]~71_combout\,
	cout => \U2|w_timer[21]~72\);

-- Location: FF_X28_Y28_N17
\U2|w_timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[21]~71_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(21));

-- Location: LCCOMB_X28_Y28_N18
\U2|w_timer[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[22]~73_combout\ = (\U2|w_timer\(22) & (\U2|w_timer[21]~72\ $ (GND))) # (!\U2|w_timer\(22) & (!\U2|w_timer[21]~72\ & VCC))
-- \U2|w_timer[22]~74\ = CARRY((\U2|w_timer\(22) & !\U2|w_timer[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(22),
	datad => VCC,
	cin => \U2|w_timer[21]~72\,
	combout => \U2|w_timer[22]~73_combout\,
	cout => \U2|w_timer[22]~74\);

-- Location: FF_X28_Y28_N19
\U2|w_timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[22]~73_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(22));

-- Location: LCCOMB_X28_Y28_N20
\U2|w_timer[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[23]~75_combout\ = (\U2|w_timer\(23) & (!\U2|w_timer[22]~74\)) # (!\U2|w_timer\(23) & ((\U2|w_timer[22]~74\) # (GND)))
-- \U2|w_timer[23]~76\ = CARRY((!\U2|w_timer[22]~74\) # (!\U2|w_timer\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(23),
	datad => VCC,
	cin => \U2|w_timer[22]~74\,
	combout => \U2|w_timer[23]~75_combout\,
	cout => \U2|w_timer[23]~76\);

-- Location: FF_X28_Y28_N21
\U2|w_timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[23]~75_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(23));

-- Location: LCCOMB_X28_Y28_N22
\U2|w_timer[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[24]~77_combout\ = (\U2|w_timer\(24) & (\U2|w_timer[23]~76\ $ (GND))) # (!\U2|w_timer\(24) & (!\U2|w_timer[23]~76\ & VCC))
-- \U2|w_timer[24]~78\ = CARRY((\U2|w_timer\(24) & !\U2|w_timer[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(24),
	datad => VCC,
	cin => \U2|w_timer[23]~76\,
	combout => \U2|w_timer[24]~77_combout\,
	cout => \U2|w_timer[24]~78\);

-- Location: FF_X28_Y28_N23
\U2|w_timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[24]~77_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(24));

-- Location: LCCOMB_X28_Y28_N24
\U2|w_timer[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[25]~79_combout\ = (\U2|w_timer\(25) & (!\U2|w_timer[24]~78\)) # (!\U2|w_timer\(25) & ((\U2|w_timer[24]~78\) # (GND)))
-- \U2|w_timer[25]~80\ = CARRY((!\U2|w_timer[24]~78\) # (!\U2|w_timer\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(25),
	datad => VCC,
	cin => \U2|w_timer[24]~78\,
	combout => \U2|w_timer[25]~79_combout\,
	cout => \U2|w_timer[25]~80\);

-- Location: FF_X28_Y28_N25
\U2|w_timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[25]~79_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(25));

-- Location: LCCOMB_X28_Y28_N26
\U2|w_timer[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[26]~81_combout\ = \U2|w_timer\(26) $ (!\U2|w_timer[25]~80\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(26),
	cin => \U2|w_timer[25]~80\,
	combout => \U2|w_timer[26]~81_combout\);

-- Location: FF_X28_Y28_N27
\U2|w_timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[26]~81_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(26));

-- Location: LCCOMB_X27_Y28_N12
\U2|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~7_combout\ = (\U2|w_timer\(22) & (\U2|w_timer\(24) & \U2|w_timer\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(22),
	datac => \U2|w_timer\(24),
	datad => \U2|w_timer\(26),
	combout => \U2|Equal1~7_combout\);

-- Location: LCCOMB_X28_Y28_N30
\U2|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~6_combout\ = (\U2|w_timer\(16) & (\U2|w_timer\(14) & (!\U2|w_timer\(17) & !\U2|w_timer\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(16),
	datab => \U2|w_timer\(14),
	datac => \U2|w_timer\(17),
	datad => \U2|w_timer\(19),
	combout => \U2|Equal1~6_combout\);

-- Location: LCCOMB_X28_Y29_N0
\U2|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~5_combout\ = (!\U2|w_timer\(10) & (\U2|w_timer\(7) & (!\U2|w_timer\(11) & !\U2|w_timer\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(10),
	datab => \U2|w_timer\(7),
	datac => \U2|w_timer\(11),
	datad => \U2|w_timer\(5),
	combout => \U2|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y28_N28
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

-- Location: LCCOMB_X27_Y28_N8
\U2|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~2_combout\ = (\U2|w_timer\(12) & (\U2|w_timer\(13) & (\U2|w_timer\(18) & \U2|w_timer\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(12),
	datab => \U2|w_timer\(13),
	datac => \U2|w_timer\(18),
	datad => \U2|w_timer\(15),
	combout => \U2|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y29_N2
\U2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~1_combout\ = (!\U2|w_timer\(8) & (!\U2|w_timer\(9) & (!\U2|w_timer\(4) & !\U2|w_timer\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(8),
	datab => \U2|w_timer\(9),
	datac => \U2|w_timer\(4),
	datad => \U2|w_timer\(6),
	combout => \U2|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y29_N4
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (!\U2|w_timer\(3) & (!\U2|w_timer\(2) & (!\U2|w_timer\(1) & !\U2|w_timer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(3),
	datab => \U2|w_timer\(2),
	datac => \U2|w_timer\(1),
	datad => \U2|w_timer\(0),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y28_N16
\U2|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~4_combout\ = (\U2|Equal1~3_combout\ & (\U2|Equal1~2_combout\ & (\U2|Equal1~1_combout\ & \U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~3_combout\,
	datab => \U2|Equal1~2_combout\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|Equal1~4_combout\);

-- Location: LCCOMB_X27_Y28_N2
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

-- Location: LCCOMB_X27_Y28_N22
\U2|w_t_seg[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~6_combout\ = (\U2|w_state.st_t_done~q\ & (\U2|Equal4~0_combout\)) # (!\U2|w_state.st_t_done~q\ & ((\U2|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|Equal4~0_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|w_t_seg[3]~6_combout\);

-- Location: LCCOMB_X27_Y27_N0
\U2|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add4~0_combout\ = \U2|w_t_seg\(2) $ (((\U2|w_t_seg\(1) & \U2|w_t_seg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(1),
	datac => \U2|w_t_seg\(0),
	datad => \U2|w_t_seg\(2),
	combout => \U2|Add4~0_combout\);

-- Location: LCCOMB_X27_Y28_N14
\U2|w_t_seg[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[0]~12_combout\ = (!\U2|o_done~1_combout\ & ((\U2|w_state.st_t_done~q\ & (\U2|Equal4~0_combout\)) # (!\U2|w_state.st_t_done~q\ & ((\U2|Equal1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|o_done~1_combout\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|w_t_seg[0]~12_combout\);

-- Location: LCCOMB_X27_Y28_N28
\U2|w_t_seg[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~13_combout\ = ((\U2|w_state.st_led_start~q\) # ((!\U2|w_t_seg[3]~6_combout\ & !\U2|w_t_seg[3]~7_combout\))) # (!\U2|w_state.st_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_idle~q\,
	datab => \U2|w_state.st_led_start~q\,
	datac => \U2|w_t_seg[3]~6_combout\,
	datad => \U2|w_t_seg[3]~7_combout\,
	combout => \U2|w_t_seg[3]~13_combout\);

-- Location: LCCOMB_X27_Y28_N20
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

-- Location: FF_X27_Y28_N21
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

-- Location: LCCOMB_X27_Y27_N10
\U2|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add4~1_combout\ = \U2|w_t_seg\(3) $ (((\U2|w_t_seg\(1) & (\U2|w_t_seg\(0) & \U2|w_t_seg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(1),
	datab => \U2|w_t_seg\(3),
	datac => \U2|w_t_seg\(0),
	datad => \U2|w_t_seg\(2),
	combout => \U2|Add4~1_combout\);

-- Location: LCCOMB_X27_Y28_N4
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

-- Location: FF_X27_Y28_N5
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

-- Location: LCCOMB_X27_Y28_N10
\U2|o_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_done~0_combout\ = (!\U2|w_t_seg\(1) & (!\U2|w_t_seg\(3) & (\U2|w_t_seg\(0) & \U2|w_t_seg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(1),
	datab => \U2|w_t_seg\(3),
	datac => \U2|w_t_seg\(0),
	datad => \U2|w_t_seg\(2),
	combout => \U2|o_done~0_combout\);

-- Location: LCCOMB_X27_Y28_N24
\U2|w_t_seg[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[3]~7_combout\ = (\U2|w_state.st_t_done~q\ & (((\U2|o_done~0_combout\)))) # (!\U2|w_state.st_t_done~q\ & (\U2|Equal2~1_combout\ & (\U2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|w_state.st_t_done~q\,
	datac => \U2|Equal2~0_combout\,
	datad => \U2|o_done~0_combout\,
	combout => \U2|w_t_seg[3]~7_combout\);

-- Location: LCCOMB_X27_Y28_N30
\U2|w_t_seg[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_seg[0]~8_combout\ = (\U2|w_t_seg[3]~6_combout\ & (\U2|o_done~1_combout\ $ ((!\U2|w_t_seg\(0))))) # (!\U2|w_t_seg[3]~6_combout\ & (\U2|w_t_seg\(0) & ((\U2|o_done~1_combout\) # (!\U2|w_t_seg[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg[3]~6_combout\,
	datab => \U2|o_done~1_combout\,
	datac => \U2|w_t_seg\(0),
	datad => \U2|w_t_seg[3]~7_combout\,
	combout => \U2|w_t_seg[0]~8_combout\);

-- Location: FF_X27_Y28_N31
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

-- Location: LCCOMB_X27_Y28_N6
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

-- Location: FF_X27_Y28_N7
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

-- Location: FF_X26_Y28_N15
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

-- Location: LCCOMB_X27_Y28_N26
\U2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (\U2|w_t_seg\(1) & (\U2|UU1:v_count[1]~q\ & (\U2|w_t_seg\(0) $ (!\U2|UU1:v_count[0]~q\)))) # (!\U2|w_t_seg\(1) & (!\U2|UU1:v_count[1]~q\ & (\U2|w_t_seg\(0) $ (!\U2|UU1:v_count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_seg\(1),
	datab => \U2|UU1:v_count[1]~q\,
	datac => \U2|w_t_seg\(0),
	datad => \U2|UU1:v_count[0]~q\,
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\U2|w_timer[15]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[15]~83_combout\ = (\U2|w_state.st_timer~q\ & ((\U2|Equal1~8_combout\) # ((\U2|Equal2~0_combout\ & \U2|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~0_combout\,
	datab => \U2|w_state.st_timer~q\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|w_timer[15]~83_combout\);

-- Location: FF_X28_Y29_N7
\U2|w_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[0]~29_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(0));

-- Location: LCCOMB_X28_Y29_N8
\U2|w_timer[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[1]~31_combout\ = (\U2|w_timer\(1) & (!\U2|w_timer[0]~30\)) # (!\U2|w_timer\(1) & ((\U2|w_timer[0]~30\) # (GND)))
-- \U2|w_timer[1]~32\ = CARRY((!\U2|w_timer[0]~30\) # (!\U2|w_timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(1),
	datad => VCC,
	cin => \U2|w_timer[0]~30\,
	combout => \U2|w_timer[1]~31_combout\,
	cout => \U2|w_timer[1]~32\);

-- Location: FF_X28_Y29_N9
\U2|w_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[1]~31_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(1));

-- Location: LCCOMB_X28_Y29_N10
\U2|w_timer[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[2]~33_combout\ = (\U2|w_timer\(2) & (\U2|w_timer[1]~32\ $ (GND))) # (!\U2|w_timer\(2) & (!\U2|w_timer[1]~32\ & VCC))
-- \U2|w_timer[2]~34\ = CARRY((\U2|w_timer\(2) & !\U2|w_timer[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(2),
	datad => VCC,
	cin => \U2|w_timer[1]~32\,
	combout => \U2|w_timer[2]~33_combout\,
	cout => \U2|w_timer[2]~34\);

-- Location: FF_X28_Y29_N11
\U2|w_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[2]~33_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(2));

-- Location: LCCOMB_X28_Y29_N12
\U2|w_timer[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[3]~35_combout\ = (\U2|w_timer\(3) & (!\U2|w_timer[2]~34\)) # (!\U2|w_timer\(3) & ((\U2|w_timer[2]~34\) # (GND)))
-- \U2|w_timer[3]~36\ = CARRY((!\U2|w_timer[2]~34\) # (!\U2|w_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(3),
	datad => VCC,
	cin => \U2|w_timer[2]~34\,
	combout => \U2|w_timer[3]~35_combout\,
	cout => \U2|w_timer[3]~36\);

-- Location: FF_X28_Y29_N13
\U2|w_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[3]~35_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(3));

-- Location: LCCOMB_X28_Y29_N14
\U2|w_timer[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[4]~37_combout\ = (\U2|w_timer\(4) & (\U2|w_timer[3]~36\ $ (GND))) # (!\U2|w_timer\(4) & (!\U2|w_timer[3]~36\ & VCC))
-- \U2|w_timer[4]~38\ = CARRY((\U2|w_timer\(4) & !\U2|w_timer[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(4),
	datad => VCC,
	cin => \U2|w_timer[3]~36\,
	combout => \U2|w_timer[4]~37_combout\,
	cout => \U2|w_timer[4]~38\);

-- Location: FF_X28_Y29_N15
\U2|w_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[4]~37_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(4));

-- Location: LCCOMB_X28_Y29_N16
\U2|w_timer[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[5]~39_combout\ = (\U2|w_timer\(5) & (!\U2|w_timer[4]~38\)) # (!\U2|w_timer\(5) & ((\U2|w_timer[4]~38\) # (GND)))
-- \U2|w_timer[5]~40\ = CARRY((!\U2|w_timer[4]~38\) # (!\U2|w_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(5),
	datad => VCC,
	cin => \U2|w_timer[4]~38\,
	combout => \U2|w_timer[5]~39_combout\,
	cout => \U2|w_timer[5]~40\);

-- Location: FF_X28_Y29_N17
\U2|w_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[5]~39_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(5));

-- Location: LCCOMB_X28_Y29_N18
\U2|w_timer[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[6]~41_combout\ = (\U2|w_timer\(6) & (\U2|w_timer[5]~40\ $ (GND))) # (!\U2|w_timer\(6) & (!\U2|w_timer[5]~40\ & VCC))
-- \U2|w_timer[6]~42\ = CARRY((\U2|w_timer\(6) & !\U2|w_timer[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(6),
	datad => VCC,
	cin => \U2|w_timer[5]~40\,
	combout => \U2|w_timer[6]~41_combout\,
	cout => \U2|w_timer[6]~42\);

-- Location: FF_X28_Y29_N19
\U2|w_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[6]~41_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(6));

-- Location: LCCOMB_X28_Y29_N20
\U2|w_timer[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[7]~43_combout\ = (\U2|w_timer\(7) & (!\U2|w_timer[6]~42\)) # (!\U2|w_timer\(7) & ((\U2|w_timer[6]~42\) # (GND)))
-- \U2|w_timer[7]~44\ = CARRY((!\U2|w_timer[6]~42\) # (!\U2|w_timer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(7),
	datad => VCC,
	cin => \U2|w_timer[6]~42\,
	combout => \U2|w_timer[7]~43_combout\,
	cout => \U2|w_timer[7]~44\);

-- Location: FF_X28_Y29_N21
\U2|w_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[7]~43_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(7));

-- Location: LCCOMB_X28_Y29_N22
\U2|w_timer[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[8]~45_combout\ = (\U2|w_timer\(8) & (\U2|w_timer[7]~44\ $ (GND))) # (!\U2|w_timer\(8) & (!\U2|w_timer[7]~44\ & VCC))
-- \U2|w_timer[8]~46\ = CARRY((\U2|w_timer\(8) & !\U2|w_timer[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(8),
	datad => VCC,
	cin => \U2|w_timer[7]~44\,
	combout => \U2|w_timer[8]~45_combout\,
	cout => \U2|w_timer[8]~46\);

-- Location: FF_X28_Y29_N23
\U2|w_timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[8]~45_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(8));

-- Location: LCCOMB_X28_Y29_N24
\U2|w_timer[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[9]~47_combout\ = (\U2|w_timer\(9) & (!\U2|w_timer[8]~46\)) # (!\U2|w_timer\(9) & ((\U2|w_timer[8]~46\) # (GND)))
-- \U2|w_timer[9]~48\ = CARRY((!\U2|w_timer[8]~46\) # (!\U2|w_timer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(9),
	datad => VCC,
	cin => \U2|w_timer[8]~46\,
	combout => \U2|w_timer[9]~47_combout\,
	cout => \U2|w_timer[9]~48\);

-- Location: FF_X28_Y29_N25
\U2|w_timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[9]~47_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(9));

-- Location: LCCOMB_X28_Y29_N26
\U2|w_timer[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[10]~49_combout\ = (\U2|w_timer\(10) & (\U2|w_timer[9]~48\ $ (GND))) # (!\U2|w_timer\(10) & (!\U2|w_timer[9]~48\ & VCC))
-- \U2|w_timer[10]~50\ = CARRY((\U2|w_timer\(10) & !\U2|w_timer[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(10),
	datad => VCC,
	cin => \U2|w_timer[9]~48\,
	combout => \U2|w_timer[10]~49_combout\,
	cout => \U2|w_timer[10]~50\);

-- Location: FF_X28_Y29_N27
\U2|w_timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[10]~49_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(10));

-- Location: LCCOMB_X28_Y29_N28
\U2|w_timer[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[11]~51_combout\ = (\U2|w_timer\(11) & (!\U2|w_timer[10]~50\)) # (!\U2|w_timer\(11) & ((\U2|w_timer[10]~50\) # (GND)))
-- \U2|w_timer[11]~52\ = CARRY((!\U2|w_timer[10]~50\) # (!\U2|w_timer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(11),
	datad => VCC,
	cin => \U2|w_timer[10]~50\,
	combout => \U2|w_timer[11]~51_combout\,
	cout => \U2|w_timer[11]~52\);

-- Location: FF_X28_Y29_N29
\U2|w_timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[11]~51_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(11));

-- Location: LCCOMB_X28_Y29_N30
\U2|w_timer[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[12]~53_combout\ = (\U2|w_timer\(12) & (\U2|w_timer[11]~52\ $ (GND))) # (!\U2|w_timer\(12) & (!\U2|w_timer[11]~52\ & VCC))
-- \U2|w_timer[12]~54\ = CARRY((\U2|w_timer\(12) & !\U2|w_timer[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(12),
	datad => VCC,
	cin => \U2|w_timer[11]~52\,
	combout => \U2|w_timer[12]~53_combout\,
	cout => \U2|w_timer[12]~54\);

-- Location: FF_X27_Y28_N1
\U2|w_timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U2|w_timer[12]~53_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	sload => VCC,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(12));

-- Location: LCCOMB_X28_Y28_N0
\U2|w_timer[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_timer[13]~55_combout\ = (\U2|w_timer\(13) & (!\U2|w_timer[12]~54\)) # (!\U2|w_timer\(13) & ((\U2|w_timer[12]~54\) # (GND)))
-- \U2|w_timer[13]~56\ = CARRY((!\U2|w_timer[12]~54\) # (!\U2|w_timer\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|w_timer\(13),
	datad => VCC,
	cin => \U2|w_timer[12]~54\,
	combout => \U2|w_timer[13]~55_combout\,
	cout => \U2|w_timer[13]~56\);

-- Location: FF_X28_Y28_N1
\U2|w_timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[13]~55_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(13));

-- Location: FF_X28_Y28_N3
\U2|w_timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|w_timer[14]~57_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	sclr => \U2|w_timer[15]~83_combout\,
	ena => \U2|ALT_INV_o_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|w_timer\(14));

-- Location: LCCOMB_X29_Y28_N8
\U2|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~1_combout\ = (\U2|w_timer\(14)) # ((\U2|w_timer\(16)) # ((!\U2|w_timer\(17)) # (!\U2|w_timer\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(14),
	datab => \U2|w_timer\(16),
	datac => \U2|w_timer\(19),
	datad => \U2|w_timer\(17),
	combout => \U2|Equal3~1_combout\);

-- Location: LCCOMB_X25_Y28_N18
\U2|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~2_combout\ = (\U2|w_timer\(26)) # ((\U2|w_timer\(24)) # (\U2|w_timer\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(26),
	datab => \U2|w_timer\(24),
	datad => \U2|w_timer\(22),
	combout => \U2|Equal3~2_combout\);

-- Location: LCCOMB_X27_Y29_N24
\U2|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = (\U2|w_timer\(7)) # (((!\U2|w_timer\(11)) # (!\U2|w_timer\(5))) # (!\U2|w_timer\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_timer\(7),
	datab => \U2|w_timer\(10),
	datac => \U2|w_timer\(5),
	datad => \U2|w_timer\(11),
	combout => \U2|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y28_N28
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

-- Location: LCCOMB_X25_Y28_N10
\U2|w_t_ms[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[0]~0_combout\ = (\U2|w_state.st_t_done~q\ & (\i_rst~input_o\ & ((\U2|Equal4~0_combout\) # (!\U2|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|Equal4~0_combout\,
	datac => \i_rst~input_o\,
	datad => \U2|Equal3~3_combout\,
	combout => \U2|w_t_ms[0]~0_combout\);

-- Location: LCCOMB_X25_Y28_N26
\U2|w_t_ms[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[0]~2_combout\ = (\U2|w_t_ms\(0) & ((!\U2|w_t_ms[0]~0_combout\))) # (!\U2|w_t_ms\(0) & (!\U2|Equal4~0_combout\ & \U2|w_t_ms[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Equal4~0_combout\,
	datac => \U2|w_t_ms\(0),
	datad => \U2|w_t_ms[0]~0_combout\,
	combout => \U2|w_t_ms[0]~2_combout\);

-- Location: FF_X25_Y28_N27
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

-- Location: LCCOMB_X25_Y28_N30
\U2|w_t_ms[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[1]~4_combout\ = \U2|w_t_ms\(1) $ (((\U2|w_t_ms\(0) & \U2|w_t_ms[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_t_ms\(0),
	datac => \U2|w_t_ms\(1),
	datad => \U2|w_t_ms[0]~0_combout\,
	combout => \U2|w_t_ms[1]~4_combout\);

-- Location: FF_X25_Y28_N31
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

-- Location: LCCOMB_X25_Y28_N20
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

-- Location: LCCOMB_X25_Y28_N24
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

-- Location: FF_X25_Y28_N25
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

-- Location: LCCOMB_X25_Y28_N0
\U2|w_t_ms[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_t_ms[3]~3_combout\ = \U2|w_t_ms\(3) $ (((\U2|Add6~0_combout\ & (\U2|w_t_ms\(2) & \U2|w_t_ms[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add6~0_combout\,
	datab => \U2|w_t_ms\(2),
	datac => \U2|w_t_ms\(3),
	datad => \U2|w_t_ms[0]~0_combout\,
	combout => \U2|w_t_ms[3]~3_combout\);

-- Location: FF_X25_Y28_N1
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

-- Location: LCCOMB_X25_Y28_N12
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

-- Location: LCCOMB_X25_Y28_N8
\U2|w_state.st_idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state.st_idle~0_combout\ = (\U2|w_state.st_t_done~q\ & (\U2|w_state.st_idle~q\ & (!\U2|w_state.st_led_start~q\ & !\U2|w_state.st_timer~q\))) # (!\U2|w_state.st_t_done~q\ & ((\U2|w_state.st_idle~q\ & (\U2|w_state.st_led_start~q\ $ 
-- (\U2|w_state.st_timer~q\))) # (!\U2|w_state.st_idle~q\ & (!\U2|w_state.st_led_start~q\ & !\U2|w_state.st_timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|w_state.st_idle~q\,
	datac => \U2|w_state.st_led_start~q\,
	datad => \U2|w_state.st_timer~q\,
	combout => \U2|w_state.st_idle~0_combout\);

-- Location: LCCOMB_X25_Y28_N14
\U2|w_state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~12_combout\ = (\U2|w_state.st_idle~0_combout\ & (((\U2|Equal4~0_combout\) # (!\U2|o_done~0_combout\)) # (!\U2|w_state.st_t_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state.st_t_done~q\,
	datab => \U2|Equal4~0_combout\,
	datac => \U2|w_state.st_idle~0_combout\,
	datad => \U2|o_done~0_combout\,
	combout => \U2|w_state~12_combout\);

-- Location: LCCOMB_X25_Y28_N22
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

-- Location: FF_X25_Y28_N23
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

-- Location: LCCOMB_X25_Y28_N16
\U2|UU1:v_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[3]~1_combout\ = (\i_rst~input_o\ & (!\U2|w_state.st_t_done~q\ & \U2|w_state.st_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst~input_o\,
	datac => \U2|w_state.st_t_done~q\,
	datad => \U2|w_state.st_idle~q\,
	combout => \U2|UU1:v_count[3]~1_combout\);

-- Location: LCCOMB_X26_Y28_N26
\U2|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~2_combout\ = (\U2|Equal2~1_combout\ & \U2|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|Equal2~2_combout\);

-- Location: LCCOMB_X26_Y28_N10
\U2|UU1:v_count[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1:v_count[3]~2_combout\ = (\U2|UU1:v_count[3]~1_combout\ & (((\U2|Equal2~2_combout\ & !\U2|Equal1~8_combout\)) # (!\U2|w_state.st_timer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[3]~1_combout\,
	datab => \U2|w_state.st_timer~q\,
	datac => \U2|Equal2~2_combout\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|UU1:v_count[3]~2_combout\);

-- Location: FF_X26_Y28_N13
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

-- Location: LCCOMB_X22_Y27_N6
\U1|Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector103~0_combout\ = (\U1|w_state.st_check_temp~q\) # ((\U1|w_state.st_check_valv~q\) # ((\U1|w_state.st_check_repo~q\) # (\U1|o_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \U1|w_state.st_check_repo~q\,
	datad => \U1|o_read~q\,
	combout => \U1|Selector103~0_combout\);

-- Location: LCCOMB_X22_Y27_N24
\U1|Selector100~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector100~1_combout\ = (\U1|w_state.st_check_repo~q\ & \U1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_state.st_check_repo~q\,
	datac => \U1|Equal0~0_combout\,
	combout => \U1|Selector100~1_combout\);

-- Location: LCCOMB_X22_Y27_N10
\U1|Selector103~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector103~1_combout\ = (\U1|Selector103~0_combout\ & ((\U1|o_read~q\) # ((!\U1|Selector100~0_combout\ & !\U1|Selector100~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector103~0_combout\,
	datab => \U1|Selector100~0_combout\,
	datac => \U1|o_read~q\,
	datad => \U1|Selector100~1_combout\,
	combout => \U1|Selector103~1_combout\);

-- Location: FF_X22_Y27_N11
\U1|o_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector103~1_combout\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|o_read~q\);

-- Location: LCCOMB_X26_Y28_N24
\U2|UU1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|UU1~0_combout\ = (\U2|UU1:v_count[2]~q\) # ((\U2|UU1:v_count[0]~q\) # ((\U2|UU1:v_count[1]~q\) # (!\U1|o_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[2]~q\,
	datab => \U2|UU1:v_count[0]~q\,
	datac => \U2|UU1:v_count[1]~q\,
	datad => \U1|o_read~q\,
	combout => \U2|UU1~0_combout\);

-- Location: LCCOMB_X26_Y28_N20
\U2|w_state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~16_combout\ = (\U2|w_state~12_combout\ & (\U2|w_state.st_timer~q\ & !\U2|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|w_state~12_combout\,
	datac => \U2|w_state.st_timer~q\,
	datad => \U2|Selector3~1_combout\,
	combout => \U2|w_state~16_combout\);

-- Location: LCCOMB_X26_Y28_N2
\U2|w_state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|w_state~17_combout\ = (\U2|w_state~16_combout\) # ((\U2|w_state~13_combout\ & ((\U2|UU1~0_combout\) # (\U2|UU1:v_count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1~0_combout\,
	datab => \U2|UU1:v_count[3]~q\,
	datac => \U2|w_state~13_combout\,
	datad => \U2|w_state~16_combout\,
	combout => \U2|w_state~17_combout\);

-- Location: FF_X26_Y28_N3
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

-- Location: FF_X26_Y28_N17
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

-- Location: LCCOMB_X26_Y28_N0
\U2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~1_combout\ = (\U2|UU1:v_count[2]~q\ & (\U2|w_t_seg\(2) & (\U2|UU1:v_count[3]~q\ $ (!\U2|w_t_seg\(3))))) # (!\U2|UU1:v_count[2]~q\ & (!\U2|w_t_seg\(2) & (\U2|UU1:v_count[3]~q\ $ (!\U2|w_t_seg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|UU1:v_count[2]~q\,
	datab => \U2|UU1:v_count[3]~q\,
	datac => \U2|w_t_seg\(2),
	datad => \U2|w_t_seg\(3),
	combout => \U2|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y28_N6
\U2|Selector39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector39~1_combout\ = (\U2|Equal2~1_combout\ & (\U2|Equal2~0_combout\ & (\U2|w_state.st_timer~q\ & !\U2|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|Equal2~0_combout\,
	datac => \U2|w_state.st_timer~q\,
	datad => \U2|Equal1~8_combout\,
	combout => \U2|Selector39~1_combout\);

-- Location: LCCOMB_X25_Y28_N6
\U2|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector39~0_combout\ = (\U2|w_state.st_t_done~q\ & (!\U2|Equal3~3_combout\ & ((\U2|Equal4~0_combout\) # (!\U2|o_done~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_done~0_combout\,
	datab => \U2|Equal4~0_combout\,
	datac => \U2|w_state.st_t_done~q\,
	datad => \U2|Equal3~3_combout\,
	combout => \U2|Selector39~0_combout\);

-- Location: LCCOMB_X25_Y28_N4
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

-- Location: FF_X25_Y28_N5
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

-- Location: LCCOMB_X22_Y27_N22
\U1|w_state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~26_combout\ = ((\U1|w_res_stats~q\ & ((\U1|UU1:v_type[0]~0_combout\) # (\i_temp~input_o\)))) # (!\U2|o_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[0]~0_combout\,
	datab => \U1|w_res_stats~q\,
	datac => \U2|o_done~q\,
	datad => \i_temp~input_o\,
	combout => \U1|w_state~26_combout\);

-- Location: LCCOMB_X22_Y27_N20
\U1|w_state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~25_combout\ = (\U1|w_state.st_check_valv~q\) # ((\U1|w_state.st_check_temp~q\ & !\i_temp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|w_state.st_check_valv~q\,
	datad => \i_temp~input_o\,
	combout => \U1|w_state~25_combout\);

-- Location: LCCOMB_X22_Y27_N4
\U1|w_state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~27_combout\ = (\U1|w_state.st_idle~4_combout\ & (!\U1|w_state~25_combout\ & ((\U1|w_state.st_idle~q\) # (!\U1|w_state~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state~26_combout\,
	datab => \U1|w_state.st_idle~4_combout\,
	datac => \U1|w_state.st_idle~q\,
	datad => \U1|w_state~25_combout\,
	combout => \U1|w_state~27_combout\);

-- Location: FF_X22_Y27_N5
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

-- Location: LCCOMB_X21_Y27_N10
\U1|UU1:v_size[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_size[0]~0_combout\ = (!\U1|w_state.st_idle~q\ & (\U2|o_done~q\ & !\U1|w_res_stats~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_idle~q\,
	datac => \U2|o_done~q\,
	datad => \U1|w_res_stats~q\,
	combout => \U1|UU1:v_size[0]~0_combout\);

-- Location: LCCOMB_X21_Y27_N22
\U1|UU1:v_type[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|UU1:v_type[1]~0_combout\ = (\i_rst~input_o\ & ((\U1|UU1:v_size[0]~0_combout\) # ((!\U1|UU1:v_type[0]~0_combout\ & \U1|w_state.st_check_type~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[0]~0_combout\,
	datab => \i_rst~input_o\,
	datac => \U1|w_state.st_check_type~q\,
	datad => \U1|UU1:v_size[0]~0_combout\,
	combout => \U1|UU1:v_type[1]~0_combout\);

-- Location: FF_X21_Y27_N9
\U1|UU1:v_type[0]\ : dffeas
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
	q => \U1|UU1:v_type[0]~q\);

-- Location: LCCOMB_X22_Y28_N20
\U1|w_res_1[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_res_1[3]~1_combout\ = (\i_prepare~input_o\ & (\U1|w_state.st_check_valv~q\ & ((\U1|UU1:v_type[1]~q\) # (\U1|UU1:v_type[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_prepare~input_o\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \U1|UU1:v_type[1]~q\,
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|w_res_1[3]~1_combout\);

-- Location: FF_X23_Y28_N15
\U1|w_res_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_res_1[0]~3_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|w_res_1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_res_1\(0));

-- Location: LCCOMB_X23_Y28_N18
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = \U1|w_res_1\(0) $ (!\U1|w_res_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_res_1\(0),
	datac => \U1|w_res_1\(1),
	combout => \U1|Add0~2_combout\);

-- Location: FF_X23_Y28_N19
\U1|w_res_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|w_res_1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_res_1\(1));

-- Location: LCCOMB_X23_Y28_N12
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|w_res_1\(2) $ (((!\U1|w_res_1\(0) & \U1|w_res_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_res_1\(0),
	datac => \U1|w_res_1\(2),
	datad => \U1|w_res_1\(1),
	combout => \U1|Add0~0_combout\);

-- Location: FF_X23_Y28_N13
\U1|w_res_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|w_res_1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_res_1\(2));

-- Location: LCCOMB_X23_Y28_N8
\U1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~1_combout\ = \U1|w_res_1\(3) $ (((!\U1|w_res_1\(2) & (!\U1|w_res_1\(0) & \U1|w_res_1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_res_1\(2),
	datab => \U1|w_res_1\(0),
	datac => \U1|w_res_1\(3),
	datad => \U1|w_res_1\(1),
	combout => \U1|Add0~1_combout\);

-- Location: FF_X23_Y28_N9
\U1|w_res_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Add0~1_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	ena => \U1|w_res_1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_res_1\(3));

-- Location: LCCOMB_X23_Y28_N20
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|w_res_1\(2)) # ((\U1|w_res_1\(0)) # ((!\U1|w_res_1\(1)) # (!\U1|w_res_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_res_1\(2),
	datab => \U1|w_res_1\(0),
	datac => \U1|w_res_1\(3),
	datad => \U1|w_res_1\(1),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y27_N8
\U1|Selector97~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector97~2_combout\ = (\U1|Selector97~3_combout\ & (!\U1|Selector100~0_combout\ & ((!\U1|Equal0~0_combout\) # (!\U1|w_state.st_check_repo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector97~3_combout\,
	datab => \U1|w_state.st_check_repo~q\,
	datac => \U1|Selector100~0_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Selector97~2_combout\);

-- Location: LCCOMB_X22_Y27_N14
\U1|Selector100~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector100~3_combout\ = (!\U1|w_state.st_idle~q\ & (\U1|Selector100~2_combout\ $ (((\U2|o_done~q\ & !\U1|w_res_stats~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_done~q\,
	datab => \U1|w_res_stats~q\,
	datac => \U1|w_state.st_idle~q\,
	datad => \U1|Selector100~2_combout\,
	combout => \U1|Selector100~3_combout\);

-- Location: LCCOMB_X23_Y27_N18
\U1|Selector100~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector100~4_combout\ = (\U1|w_state.st_check_size~q\) # (((\U1|Selector100~3_combout\) # (!\U1|Selector97~2_combout\)) # (!\U1|w_state.st_idle~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datab => \U1|w_state.st_idle~5_combout\,
	datac => \U1|Selector97~2_combout\,
	datad => \U1|Selector100~3_combout\,
	combout => \U1|Selector100~4_combout\);

-- Location: LCCOMB_X23_Y27_N2
\U1|w_state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~20_combout\ = (\U1|w_state.st_idle~4_combout\ & !\U1|Selector100~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|w_state.st_idle~4_combout\,
	datad => \U1|Selector100~4_combout\,
	combout => \U1|w_state~20_combout\);

-- Location: LCCOMB_X23_Y27_N24
\U1|w_state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~22_combout\ = (\U1|Selector97~2_combout\ & \U1|w_state~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Selector97~2_combout\,
	datad => \U1|w_state~19_combout\,
	combout => \U1|w_state~22_combout\);

-- Location: LCCOMB_X23_Y27_N14
\U1|w_state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~23_combout\ = (\U1|Selector100~2_combout\ & (\U1|w_state~20_combout\ & (\U1|w_state.st_check_repo~q\))) # (!\U1|Selector100~2_combout\ & ((\U1|w_state~22_combout\) # ((\U1|w_state~20_combout\ & \U1|w_state.st_check_repo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector100~2_combout\,
	datab => \U1|w_state~20_combout\,
	datac => \U1|w_state.st_check_repo~q\,
	datad => \U1|w_state~22_combout\,
	combout => \U1|w_state~23_combout\);

-- Location: FF_X23_Y27_N15
\U1|w_state.st_check_repo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|w_state~23_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_state.st_check_repo~q\);

-- Location: LCCOMB_X23_Y27_N10
\U1|w_state.st_idle~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~1_combout\ = (\U1|w_state.st_check_size~q\ & (!\U1|w_state.st_check_repo~q\ & !\U1|w_state.st_check_type~q\)) # (!\U1|w_state.st_check_size~q\ & (\U1|w_state.st_check_repo~q\ $ (\U1|w_state.st_check_type~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datac => \U1|w_state.st_check_repo~q\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|w_state.st_idle~1_combout\);

-- Location: LCCOMB_X23_Y27_N0
\U1|w_state.st_idle~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~3_combout\ = (!\U1|w_state.st_check_size~q\ & (!\U1|w_state.st_check_repo~q\ & !\U1|w_state.st_check_type~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datac => \U1|w_state.st_check_repo~q\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|w_state.st_idle~3_combout\);

-- Location: LCCOMB_X22_Y27_N26
\U1|w_state.st_idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~0_combout\ = (\U1|w_state.st_check_temp~q\ & (!\U1|w_state.st_check_sugar~q\ & (\U1|w_state.st_idle~q\ & !\U1|w_state.st_check_valv~q\))) # (!\U1|w_state.st_check_temp~q\ & ((\U1|w_state.st_check_sugar~q\ & (\U1|w_state.st_idle~q\ & 
-- !\U1|w_state.st_check_valv~q\)) # (!\U1|w_state.st_check_sugar~q\ & (\U1|w_state.st_idle~q\ $ (!\U1|w_state.st_check_valv~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|w_state.st_check_sugar~q\,
	datac => \U1|w_state.st_idle~q\,
	datad => \U1|w_state.st_check_valv~q\,
	combout => \U1|w_state.st_idle~0_combout\);

-- Location: LCCOMB_X22_Y27_N8
\U1|w_state.st_idle~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~2_combout\ = (!\U1|w_state.st_check_temp~q\ & (!\U1|w_state.st_check_valv~q\ & (\U1|w_state.st_idle~q\ & !\U1|w_state.st_check_sugar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \U1|w_state.st_idle~q\,
	datad => \U1|w_state.st_check_sugar~q\,
	combout => \U1|w_state.st_idle~2_combout\);

-- Location: LCCOMB_X23_Y27_N22
\U1|w_state.st_idle~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state.st_idle~4_combout\ = (\U1|w_state.st_idle~1_combout\ & ((\U1|w_state.st_idle~2_combout\) # ((\U1|w_state.st_idle~3_combout\ & \U1|w_state.st_idle~0_combout\)))) # (!\U1|w_state.st_idle~1_combout\ & (\U1|w_state.st_idle~3_combout\ & 
-- (\U1|w_state.st_idle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_idle~1_combout\,
	datab => \U1|w_state.st_idle~3_combout\,
	datac => \U1|w_state.st_idle~0_combout\,
	datad => \U1|w_state.st_idle~2_combout\,
	combout => \U1|w_state.st_idle~4_combout\);

-- Location: LCCOMB_X23_Y27_N30
\U1|w_state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~28_combout\ = (\U1|w_state.st_idle~4_combout\ & \U1|w_state.st_check_sugar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|w_state.st_idle~4_combout\,
	datad => \U1|w_state.st_check_sugar~q\,
	combout => \U1|w_state~28_combout\);

-- Location: FF_X23_Y27_N31
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

-- Location: LCCOMB_X23_Y27_N12
\U1|w_state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~19_combout\ = (!\U1|w_state.st_check_size~q\ & (\U1|w_state.st_idle~5_combout\ & (\U1|w_state.st_idle~4_combout\ & \U1|Selector100~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_size~q\,
	datab => \U1|w_state.st_idle~5_combout\,
	datac => \U1|w_state.st_idle~4_combout\,
	datad => \U1|Selector100~4_combout\,
	combout => \U1|w_state~19_combout\);

-- Location: LCCOMB_X23_Y27_N4
\U1|w_state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~21_combout\ = (\U1|w_state~19_combout\ & ((\U1|Selector100~1_combout\) # ((\U1|w_state.st_check_temp~q\ & \U1|w_state~20_combout\)))) # (!\U1|w_state~19_combout\ & (((\U1|w_state.st_check_temp~q\ & \U1|w_state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state~19_combout\,
	datab => \U1|Selector100~1_combout\,
	datac => \U1|w_state.st_check_temp~q\,
	datad => \U1|w_state~20_combout\,
	combout => \U1|w_state~21_combout\);

-- Location: FF_X23_Y27_N5
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

-- Location: LCCOMB_X22_Y27_N2
\U1|Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector104~0_combout\ = (\U1|w_state.st_check_temp~q\ & (((\U1|w_res_stats~q\) # (!\i_temp~input_o\)))) # (!\U1|w_state.st_check_temp~q\ & (!\U1|w_state.st_check_valv~q\ & (\U1|w_res_stats~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datab => \U1|w_state.st_check_valv~q\,
	datac => \U1|w_res_stats~q\,
	datad => \i_temp~input_o\,
	combout => \U1|Selector104~0_combout\);

-- Location: FF_X22_Y27_N3
\U1|w_res_stats\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector104~0_combout\,
	clrn => \i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|w_res_stats~q\);

-- Location: LCCOMB_X22_Y27_N28
\U1|Selector100~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector100~2_combout\ = (!\U1|UU1:v_type[0]~0_combout\ & (!\i_temp~input_o\ & (\U1|w_res_stats~q\ & \U2|o_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[0]~0_combout\,
	datab => \i_temp~input_o\,
	datac => \U1|w_res_stats~q\,
	datad => \U2|o_done~q\,
	combout => \U1|Selector100~2_combout\);

-- Location: LCCOMB_X23_Y27_N20
\U1|w_state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|w_state~24_combout\ = (\U1|Selector100~2_combout\ & ((\U1|w_state~22_combout\) # ((\U1|w_state~20_combout\ & \U1|w_state.st_check_type~q\)))) # (!\U1|Selector100~2_combout\ & (\U1|w_state~20_combout\ & (\U1|w_state.st_check_type~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector100~2_combout\,
	datab => \U1|w_state~20_combout\,
	datac => \U1|w_state.st_check_type~q\,
	datad => \U1|w_state~22_combout\,
	combout => \U1|w_state~24_combout\);

-- Location: FF_X23_Y27_N21
\U1|w_state.st_check_type\ : dffeas
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
	q => \U1|w_state.st_check_type~q\);

-- Location: LCCOMB_X21_Y27_N6
\U1|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Selector30~0_combout\ = (!\i_type_1~input_o\ & \U1|w_state.st_check_type~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_type_1~input_o\,
	datad => \U1|w_state.st_check_type~q\,
	combout => \U1|Selector30~0_combout\);

-- Location: FF_X21_Y27_N7
\U1|UU1:v_type[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U1|Selector30~0_combout\,
	ena => \U1|UU1:v_type[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UU1:v_type[1]~q\);

-- Location: LCCOMB_X22_Y28_N16
\U1|o_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[0]~0_combout\ = (\U1|UU1:v_type[1]~q\ & (((\U1|o_data\(0))))) # (!\U1|UU1:v_type[1]~q\ & ((\U1|w_res_1[3]~0_combout\ & ((\U1|UU1:v_type[0]~q\))) # (!\U1|w_res_1[3]~0_combout\ & (\U1|o_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UU1:v_type[1]~q\,
	datab => \U1|w_res_1[3]~0_combout\,
	datac => \U1|o_data\(0),
	datad => \U1|UU1:v_type[0]~q\,
	combout => \U1|o_data[0]~0_combout\);

-- Location: FF_X22_Y28_N17
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

-- Location: LCCOMB_X21_Y28_N12
\U2|o_type_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_type_1~feeder_combout\ = \U1|o_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|o_data\(0),
	combout => \U2|o_type_1~feeder_combout\);

-- Location: LCCOMB_X21_Y28_N10
\U2|o_type_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_type_1~0_combout\ = (\i_rst~input_o\ & \U2|w_state.st_led_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst~input_o\,
	datad => \U2|w_state.st_led_start~q\,
	combout => \U2|o_type_1~0_combout\);

-- Location: FF_X21_Y28_N13
\U2|o_type_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_type_1~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_type_1~q\);

-- Location: LCCOMB_X21_Y28_N2
\U2|o_type_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_type_2~feeder_combout\ = \U1|o_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|o_data\(1),
	combout => \U2|o_type_2~feeder_combout\);

-- Location: FF_X21_Y28_N3
\U2|o_type_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U2|o_type_2~feeder_combout\,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_type_2~q\);

-- Location: LCCOMB_X21_Y28_N20
\U2|o_type_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|o_type_3~feeder_combout\ = \U1|o_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|o_data\(2),
	combout => \U2|o_type_3~feeder_combout\);

-- Location: FF_X21_Y28_N21
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

-- Location: FF_X21_Y28_N31
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

-- Location: LCCOMB_X21_Y28_N16
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

-- Location: FF_X21_Y28_N17
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

-- Location: LCCOMB_X22_Y27_N0
\U1|o_data[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[6]~3_combout\ = (\U1|o_data\(6)) # ((\U1|w_state.st_check_temp~q\ & \i_temp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|w_state.st_check_temp~q\,
	datac => \U1|o_data\(6),
	datad => \i_temp~input_o\,
	combout => \U1|o_data[6]~3_combout\);

-- Location: FF_X22_Y27_N1
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

-- Location: FF_X21_Y28_N11
\U2|o_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \U1|o_data\(6),
	sload => VCC,
	ena => \U2|o_type_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_temp~q\);

-- Location: LCCOMB_X22_Y27_N30
\U1|o_data[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|o_data[5]~4_combout\ = (\U1|o_data\(5)) # ((\U1|w_state.st_check_repo~q\ & !\U1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|w_state.st_check_repo~q\,
	datac => \U1|o_data\(5),
	datad => \U1|Equal0~0_combout\,
	combout => \U1|o_data[5]~4_combout\);

-- Location: FF_X22_Y27_N31
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

-- Location: LCCOMB_X21_Y28_N4
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

-- Location: FF_X21_Y28_N5
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

-- Location: LCCOMB_X21_Y28_N6
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

-- Location: FF_X21_Y28_N7
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

-- Location: LCCOMB_X10_Y42_N2
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

-- Location: FF_X10_Y42_N3
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

-- Location: LCCOMB_X10_Y42_N0
\U3|o_disp_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|o_disp_2~0_combout\ = (\U3|w_state.st_disp_done~q\) # ((\U3|o_disp_4\(0) & \U2|o_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|w_state.st_disp_done~q\,
	datac => \U3|o_disp_4\(0),
	datad => \U2|o_done~q\,
	combout => \U3|o_disp_2~0_combout\);

-- Location: FF_X10_Y42_N1
\U3|o_disp_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \U3|o_disp_2~0_combout\,
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


