-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/21/2021 03:01:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	eight_bits_div IS
    PORT (
	divisor : IN std_logic_vector(3 DOWNTO 0);
	dividend : IN std_logic_vector(3 DOWNTO 0);
	remainder : BUFFER std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	quotient : BUFFER std_logic_vector(3 DOWNTO 0);
	minus_temp : BUFFER std_logic_vector(7 DOWNTO 0);
	w : BUFFER STD.STANDARD.integer;
	step : BUFFER STD.STANDARD.integer;
	subtractor_load : BUFFER std_logic;
	fixed_dividend : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END eight_bits_div;

-- Design Ports Information
-- remainder[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[4]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minus_temp[7]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[7]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[8]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[9]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[10]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[11]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[12]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[13]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[16]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[17]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[18]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[19]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[20]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[21]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[22]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[23]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[24]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[25]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[26]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[27]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[28]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[29]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[30]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[31]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[10]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[11]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[12]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[14]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[17]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[18]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[19]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[20]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[21]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[22]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[23]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[24]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[25]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[26]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[27]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[28]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[29]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[30]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step[31]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- subtractor_load	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[5]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[6]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fixed_dividend[7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eight_bits_div IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_divisor : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dividend : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_remainder : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_quotient : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minus_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_step : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_subtractor_load : std_logic;
SIGNAL ww_fixed_dividend : std_logic_vector(7 DOWNTO 0);
SIGNAL \Selector12~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal3~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \w~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \remainder[0]~output_o\ : std_logic;
SIGNAL \remainder[1]~output_o\ : std_logic;
SIGNAL \remainder[2]~output_o\ : std_logic;
SIGNAL \remainder[3]~output_o\ : std_logic;
SIGNAL \remainder[4]~output_o\ : std_logic;
SIGNAL \remainder[5]~output_o\ : std_logic;
SIGNAL \remainder[6]~output_o\ : std_logic;
SIGNAL \remainder[7]~output_o\ : std_logic;
SIGNAL \quotient[0]~output_o\ : std_logic;
SIGNAL \quotient[1]~output_o\ : std_logic;
SIGNAL \quotient[2]~output_o\ : std_logic;
SIGNAL \quotient[3]~output_o\ : std_logic;
SIGNAL \minus_temp[0]~output_o\ : std_logic;
SIGNAL \minus_temp[1]~output_o\ : std_logic;
SIGNAL \minus_temp[2]~output_o\ : std_logic;
SIGNAL \minus_temp[3]~output_o\ : std_logic;
SIGNAL \minus_temp[4]~output_o\ : std_logic;
SIGNAL \minus_temp[5]~output_o\ : std_logic;
SIGNAL \minus_temp[6]~output_o\ : std_logic;
SIGNAL \minus_temp[7]~output_o\ : std_logic;
SIGNAL \w[0]~output_o\ : std_logic;
SIGNAL \w[1]~output_o\ : std_logic;
SIGNAL \w[2]~output_o\ : std_logic;
SIGNAL \w[3]~output_o\ : std_logic;
SIGNAL \w[4]~output_o\ : std_logic;
SIGNAL \w[5]~output_o\ : std_logic;
SIGNAL \w[6]~output_o\ : std_logic;
SIGNAL \w[7]~output_o\ : std_logic;
SIGNAL \w[8]~output_o\ : std_logic;
SIGNAL \w[9]~output_o\ : std_logic;
SIGNAL \w[10]~output_o\ : std_logic;
SIGNAL \w[11]~output_o\ : std_logic;
SIGNAL \w[12]~output_o\ : std_logic;
SIGNAL \w[13]~output_o\ : std_logic;
SIGNAL \w[14]~output_o\ : std_logic;
SIGNAL \w[15]~output_o\ : std_logic;
SIGNAL \w[16]~output_o\ : std_logic;
SIGNAL \w[17]~output_o\ : std_logic;
SIGNAL \w[18]~output_o\ : std_logic;
SIGNAL \w[19]~output_o\ : std_logic;
SIGNAL \w[20]~output_o\ : std_logic;
SIGNAL \w[21]~output_o\ : std_logic;
SIGNAL \w[22]~output_o\ : std_logic;
SIGNAL \w[23]~output_o\ : std_logic;
SIGNAL \w[24]~output_o\ : std_logic;
SIGNAL \w[25]~output_o\ : std_logic;
SIGNAL \w[26]~output_o\ : std_logic;
SIGNAL \w[27]~output_o\ : std_logic;
SIGNAL \w[28]~output_o\ : std_logic;
SIGNAL \w[29]~output_o\ : std_logic;
SIGNAL \w[30]~output_o\ : std_logic;
SIGNAL \w[31]~output_o\ : std_logic;
SIGNAL \step[0]~output_o\ : std_logic;
SIGNAL \step[1]~output_o\ : std_logic;
SIGNAL \step[2]~output_o\ : std_logic;
SIGNAL \step[3]~output_o\ : std_logic;
SIGNAL \step[4]~output_o\ : std_logic;
SIGNAL \step[5]~output_o\ : std_logic;
SIGNAL \step[6]~output_o\ : std_logic;
SIGNAL \step[7]~output_o\ : std_logic;
SIGNAL \step[8]~output_o\ : std_logic;
SIGNAL \step[9]~output_o\ : std_logic;
SIGNAL \step[10]~output_o\ : std_logic;
SIGNAL \step[11]~output_o\ : std_logic;
SIGNAL \step[12]~output_o\ : std_logic;
SIGNAL \step[13]~output_o\ : std_logic;
SIGNAL \step[14]~output_o\ : std_logic;
SIGNAL \step[15]~output_o\ : std_logic;
SIGNAL \step[16]~output_o\ : std_logic;
SIGNAL \step[17]~output_o\ : std_logic;
SIGNAL \step[18]~output_o\ : std_logic;
SIGNAL \step[19]~output_o\ : std_logic;
SIGNAL \step[20]~output_o\ : std_logic;
SIGNAL \step[21]~output_o\ : std_logic;
SIGNAL \step[22]~output_o\ : std_logic;
SIGNAL \step[23]~output_o\ : std_logic;
SIGNAL \step[24]~output_o\ : std_logic;
SIGNAL \step[25]~output_o\ : std_logic;
SIGNAL \step[26]~output_o\ : std_logic;
SIGNAL \step[27]~output_o\ : std_logic;
SIGNAL \step[28]~output_o\ : std_logic;
SIGNAL \step[29]~output_o\ : std_logic;
SIGNAL \step[30]~output_o\ : std_logic;
SIGNAL \step[31]~output_o\ : std_logic;
SIGNAL \subtractor_load~output_o\ : std_logic;
SIGNAL \fixed_dividend[0]~output_o\ : std_logic;
SIGNAL \fixed_dividend[1]~output_o\ : std_logic;
SIGNAL \fixed_dividend[2]~output_o\ : std_logic;
SIGNAL \fixed_dividend[3]~output_o\ : std_logic;
SIGNAL \fixed_dividend[4]~output_o\ : std_logic;
SIGNAL \fixed_dividend[5]~output_o\ : std_logic;
SIGNAL \fixed_dividend[6]~output_o\ : std_logic;
SIGNAL \fixed_dividend[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dividend[1]~input_o\ : std_logic;
SIGNAL \dd_subtractor|output~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \dividend[0]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \dividend[2]~input_o\ : std_logic;
SIGNAL \dd_subtractor|output~6_combout\ : std_logic;
SIGNAL \dd_subtractor|output[2]~feeder_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \divisor[0]~input_o\ : std_logic;
SIGNAL \divisor[1]~input_o\ : std_logic;
SIGNAL \dd_subtractor|output[4]~8_combout\ : std_logic;
SIGNAL \dd_subtractor|output[4]~9\ : std_logic;
SIGNAL \dd_subtractor|output[5]~10_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \y.S1~q\ : std_logic;
SIGNAL \dividend[3]~input_o\ : std_logic;
SIGNAL \dd_subtractor|output~7_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \divisor[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \divisor[3]~input_o\ : std_logic;
SIGNAL \dd_subtractor|output[5]~11\ : std_logic;
SIGNAL \dd_subtractor|output[6]~12_combout\ : std_logic;
SIGNAL \dd_subtractor|output[6]~13\ : std_logic;
SIGNAL \dd_subtractor|output[7]~14_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \w~0clkctrl_outclk\ : std_logic;
SIGNAL \w[1]$latch~combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \y.S2B~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector14~5_combout\ : std_logic;
SIGNAL \Selector14~6_combout\ : std_logic;
SIGNAL \w[0]$latch~combout\ : std_logic;
SIGNAL \y.S0~0_combout\ : std_logic;
SIGNAL \y.S0~feeder_combout\ : std_logic;
SIGNAL \y.S0~q\ : std_logic;
SIGNAL \step~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \y.S3~q\ : std_logic;
SIGNAL \w~0_combout\ : std_logic;
SIGNAL \y.S4~q\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \y.S2A~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \subtractor_load$latch~combout\ : std_logic;
SIGNAL \dd_subtractor|output~4_combout\ : std_logic;
SIGNAL \dd_subtractor|output[0]~feeder_combout\ : std_logic;
SIGNAL \quotient_set~combout\ : std_logic;
SIGNAL \qutoient_sr|qo[0]~feeder_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \quotient_load~combout\ : std_logic;
SIGNAL \qutoient_sr|process_0~0_combout\ : std_logic;
SIGNAL \qutoient_sr|qo[1]~feeder_combout\ : std_logic;
SIGNAL \qutoient_sr|qo[2]~feeder_combout\ : std_logic;
SIGNAL \qutoient_sr|qo[3]~feeder_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector12~0clkctrl_outclk\ : std_logic;
SIGNAL \step[0]$latch~combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \step[1]$latch~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \step[2]$latch~combout\ : std_logic;
SIGNAL \step~1_combout\ : std_logic;
SIGNAL \Equal3~5clkctrl_outclk\ : std_logic;
SIGNAL \step[3]$latch~combout\ : std_logic;
SIGNAL \step~2_combout\ : std_logic;
SIGNAL \step[4]$latch~combout\ : std_logic;
SIGNAL \step~3_combout\ : std_logic;
SIGNAL \step[5]$latch~combout\ : std_logic;
SIGNAL \step~4_combout\ : std_logic;
SIGNAL \step[6]$latch~combout\ : std_logic;
SIGNAL \step~5_combout\ : std_logic;
SIGNAL \step[7]$latch~combout\ : std_logic;
SIGNAL \step~6_combout\ : std_logic;
SIGNAL \step[8]$latch~combout\ : std_logic;
SIGNAL \dd_subtractor|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \remainder_sr|qo\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \qutoient_sr|qo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_y.S1~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_divisor <= divisor;
ww_dividend <= dividend;
remainder <= ww_remainder;
ww_clk <= clk;
ww_reset <= reset;
quotient <= ww_quotient;
minus_temp <= ww_minus_temp;
w <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_w));
step <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_step));
subtractor_load <= ww_subtractor_load;
fixed_dividend <= ww_fixed_dividend;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector12~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector12~0_combout\);

\Equal3~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal3~5_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\w~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \w~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_y.S1~q\ <= NOT \y.S1~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\remainder[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(0),
	devoe => ww_devoe,
	o => \remainder[0]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\remainder[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(1),
	devoe => ww_devoe,
	o => \remainder[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\remainder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(2),
	devoe => ww_devoe,
	o => \remainder[2]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\remainder[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(3),
	devoe => ww_devoe,
	o => \remainder[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\remainder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(4),
	devoe => ww_devoe,
	o => \remainder[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\remainder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(5),
	devoe => ww_devoe,
	o => \remainder[5]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\remainder[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(6),
	devoe => ww_devoe,
	o => \remainder[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\remainder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder_sr|qo\(7),
	devoe => ww_devoe,
	o => \remainder[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qutoient_sr|qo\(0),
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qutoient_sr|qo\(1),
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qutoient_sr|qo\(2),
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qutoient_sr|qo\(3),
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\minus_temp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(0),
	devoe => ww_devoe,
	o => \minus_temp[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\minus_temp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(1),
	devoe => ww_devoe,
	o => \minus_temp[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\minus_temp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(2),
	devoe => ww_devoe,
	o => \minus_temp[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\minus_temp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(3),
	devoe => ww_devoe,
	o => \minus_temp[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\minus_temp[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(4),
	devoe => ww_devoe,
	o => \minus_temp[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\minus_temp[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(5),
	devoe => ww_devoe,
	o => \minus_temp[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\minus_temp[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(6),
	devoe => ww_devoe,
	o => \minus_temp[6]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\minus_temp[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd_subtractor|output\(7),
	devoe => ww_devoe,
	o => \minus_temp[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\w[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w[0]$latch~combout\,
	devoe => ww_devoe,
	o => \w[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\w[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w[1]$latch~combout\,
	devoe => ww_devoe,
	o => \w[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\w[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\w[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[3]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\w[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\w[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\w[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[6]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\w[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\w[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\w[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[9]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\w[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[10]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\w[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[11]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\w[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[12]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\w[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[13]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\w[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[14]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\w[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[15]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\w[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[16]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\w[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[17]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\w[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[18]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\w[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[19]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\w[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[20]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\w[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[21]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\w[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[22]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\w[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[23]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\w[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[24]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\w[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[25]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\w[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[26]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\w[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[27]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\w[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[28]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\w[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[29]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\w[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[30]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\w[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \w[31]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\step[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[0]$latch~combout\,
	devoe => ww_devoe,
	o => \step[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\step[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[1]$latch~combout\,
	devoe => ww_devoe,
	o => \step[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\step[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[2]$latch~combout\,
	devoe => ww_devoe,
	o => \step[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\step[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[3]$latch~combout\,
	devoe => ww_devoe,
	o => \step[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\step[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[4]$latch~combout\,
	devoe => ww_devoe,
	o => \step[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\step[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[5]$latch~combout\,
	devoe => ww_devoe,
	o => \step[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\step[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[6]$latch~combout\,
	devoe => ww_devoe,
	o => \step[6]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\step[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[7]$latch~combout\,
	devoe => ww_devoe,
	o => \step[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\step[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[8]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\step[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\step[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\step[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\step[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[12]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\step[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[13]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\step[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[14]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\step[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\step[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[16]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\step[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\step[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[18]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\step[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[19]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\step[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[20]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\step[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[21]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\step[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[22]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\step[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[23]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\step[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\step[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[25]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\step[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[26]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\step[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[27]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\step[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[28]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\step[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\step[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[30]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\step[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \step[8]$latch~combout\,
	devoe => ww_devoe,
	o => \step[31]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\subtractor_load~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subtractor_load$latch~combout\,
	devoe => ww_devoe,
	o => \subtractor_load~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\fixed_dividend[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend[0]~input_o\,
	devoe => ww_devoe,
	o => \fixed_dividend[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\fixed_dividend[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend[1]~input_o\,
	devoe => ww_devoe,
	o => \fixed_dividend[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\fixed_dividend[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend[2]~input_o\,
	devoe => ww_devoe,
	o => \fixed_dividend[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\fixed_dividend[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend[3]~input_o\,
	devoe => ww_devoe,
	o => \fixed_dividend[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\fixed_dividend[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fixed_dividend[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\fixed_dividend[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fixed_dividend[5]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\fixed_dividend[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fixed_dividend[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\fixed_dividend[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fixed_dividend[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y45_N15
\dividend[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(1),
	o => \dividend[1]~input_o\);

-- Location: LCCOMB_X2_Y36_N16
\dd_subtractor|output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output~5_combout\ = (\subtractor_load$latch~combout\ & ((\dividend[1]~input_o\))) # (!\subtractor_load$latch~combout\ & (\remainder_sr|qo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtractor_load$latch~combout\,
	datac => \remainder_sr|qo\(1),
	datad => \dividend[1]~input_o\,
	combout => \dd_subtractor|output~5_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X3_Y36_N5
\dd_subtractor|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dd_subtractor|output~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(1));

-- Location: FF_X3_Y36_N13
\remainder_sr|qo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(1));

-- Location: IOIBUF_X0_Y34_N22
\dividend[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(0),
	o => \dividend[0]~input_o\);

-- Location: LCCOMB_X3_Y36_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\remainder_sr|qo\(0) & ((GND) # (!\dividend[0]~input_o\))) # (!\remainder_sr|qo\(0) & (\dividend[0]~input_o\ $ (GND)))
-- \Add2~1\ = CARRY((\remainder_sr|qo\(0)) # (!\dividend[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(0),
	datab => \dividend[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X3_Y36_N12
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\dividend[1]~input_o\ & ((\remainder_sr|qo\(1) & (!\Add2~1\)) # (!\remainder_sr|qo\(1) & ((\Add2~1\) # (GND))))) # (!\dividend[1]~input_o\ & ((\remainder_sr|qo\(1) & (\Add2~1\ & VCC)) # (!\remainder_sr|qo\(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\dividend[1]~input_o\ & ((!\Add2~1\) # (!\remainder_sr|qo\(1)))) # (!\dividend[1]~input_o\ & (!\remainder_sr|qo\(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[1]~input_o\,
	datab => \remainder_sr|qo\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: IOIBUF_X0_Y47_N1
\dividend[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(2),
	o => \dividend[2]~input_o\);

-- Location: LCCOMB_X2_Y36_N8
\dd_subtractor|output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output~6_combout\ = (\subtractor_load$latch~combout\ & (\dividend[2]~input_o\)) # (!\subtractor_load$latch~combout\ & ((\remainder_sr|qo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtractor_load$latch~combout\,
	datab => \dividend[2]~input_o\,
	datad => \remainder_sr|qo\(2),
	combout => \dd_subtractor|output~6_combout\);

-- Location: LCCOMB_X2_Y36_N26
\dd_subtractor|output[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output[2]~feeder_combout\ = \dd_subtractor|output~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dd_subtractor|output~6_combout\,
	combout => \dd_subtractor|output[2]~feeder_combout\);

-- Location: FF_X2_Y36_N27
\dd_subtractor|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dd_subtractor|output[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(2));

-- Location: FF_X2_Y36_N15
\remainder_sr|qo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(2));

-- Location: LCCOMB_X3_Y36_N14
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\remainder_sr|qo\(2) $ (\dividend[2]~input_o\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\remainder_sr|qo\(2) & ((!\Add2~3\) # (!\dividend[2]~input_o\))) # (!\remainder_sr|qo\(2) & (!\dividend[2]~input_o\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(2),
	datab => \dividend[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: IOIBUF_X0_Y25_N22
\divisor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(0),
	o => \divisor[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\divisor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(1),
	o => \divisor[1]~input_o\);

-- Location: LCCOMB_X6_Y36_N14
\dd_subtractor|output[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output[4]~8_combout\ = (\remainder_sr|qo\(4) & ((GND) # (!\divisor[0]~input_o\))) # (!\remainder_sr|qo\(4) & (\divisor[0]~input_o\ $ (GND)))
-- \dd_subtractor|output[4]~9\ = CARRY((\remainder_sr|qo\(4)) # (!\divisor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(4),
	datab => \divisor[0]~input_o\,
	datad => VCC,
	combout => \dd_subtractor|output[4]~8_combout\,
	cout => \dd_subtractor|output[4]~9\);

-- Location: FF_X6_Y36_N31
\dd_subtractor|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dd_subtractor|output[4]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \subtractor_load$latch~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(4));

-- Location: FF_X5_Y36_N1
\remainder_sr|qo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(4));

-- Location: LCCOMB_X6_Y36_N16
\dd_subtractor|output[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output[5]~10_combout\ = (\remainder_sr|qo\(5) & ((\divisor[1]~input_o\ & (!\dd_subtractor|output[4]~9\)) # (!\divisor[1]~input_o\ & (\dd_subtractor|output[4]~9\ & VCC)))) # (!\remainder_sr|qo\(5) & ((\divisor[1]~input_o\ & 
-- ((\dd_subtractor|output[4]~9\) # (GND))) # (!\divisor[1]~input_o\ & (!\dd_subtractor|output[4]~9\))))
-- \dd_subtractor|output[5]~11\ = CARRY((\remainder_sr|qo\(5) & (\divisor[1]~input_o\ & !\dd_subtractor|output[4]~9\)) # (!\remainder_sr|qo\(5) & ((\divisor[1]~input_o\) # (!\dd_subtractor|output[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(5),
	datab => \divisor[1]~input_o\,
	datad => VCC,
	cin => \dd_subtractor|output[4]~9\,
	combout => \dd_subtractor|output[5]~10_combout\,
	cout => \dd_subtractor|output[5]~11\);

-- Location: FF_X6_Y36_N9
\dd_subtractor|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dd_subtractor|output[5]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \subtractor_load$latch~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(5));

-- Location: FF_X5_Y36_N5
\remainder_sr|qo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(5));

-- Location: LCCOMB_X6_Y36_N10
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\divisor[0]~input_o\ & (\remainder_sr|qo\(4) & (\divisor[1]~input_o\ $ (\remainder_sr|qo\(5))))) # (!\divisor[0]~input_o\ & (!\remainder_sr|qo\(4) & (\divisor[1]~input_o\ $ (!\remainder_sr|qo\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[1]~input_o\,
	datac => \remainder_sr|qo\(4),
	datad => \remainder_sr|qo\(5),
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X5_Y36_N24
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\y.S3~q\) # ((\y.S4~q\) # (\y.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S3~q\,
	datab => \y.S4~q\,
	datad => \y.S1~q\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X5_Y36_N28
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\w[0]$latch~combout\ & (!\w[1]$latch~combout\ & (!\y.S0~q\ & !\WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[0]$latch~combout\,
	datab => \w[1]$latch~combout\,
	datac => \y.S0~q\,
	datad => \WideOr0~combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X5_Y36_N29
\y.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S1~q\);

-- Location: IOIBUF_X0_Y48_N8
\dividend[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(3),
	o => \dividend[3]~input_o\);

-- Location: LCCOMB_X2_Y36_N14
\dd_subtractor|output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output~7_combout\ = (\subtractor_load$latch~combout\ & ((\dividend[3]~input_o\))) # (!\subtractor_load$latch~combout\ & (\remainder_sr|qo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtractor_load$latch~combout\,
	datab => \remainder_sr|qo\(3),
	datad => \dividend[3]~input_o\,
	combout => \dd_subtractor|output~7_combout\);

-- Location: FF_X3_Y36_N31
\dd_subtractor|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dd_subtractor|output~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(3));

-- Location: FF_X3_Y36_N17
\remainder_sr|qo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(3));

-- Location: LCCOMB_X2_Y36_N22
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\dividend[3]~input_o\ & (\remainder_sr|qo\(3) & (\dividend[2]~input_o\ $ (!\remainder_sr|qo\(2))))) # (!\dividend[3]~input_o\ & (!\remainder_sr|qo\(3) & (\dividend[2]~input_o\ $ (!\remainder_sr|qo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[2]~input_o\,
	datac => \remainder_sr|qo\(2),
	datad => \remainder_sr|qo\(3),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X2_Y36_N0
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\dividend[1]~input_o\ & (\remainder_sr|qo\(1) & (\remainder_sr|qo\(0) $ (!\dividend[0]~input_o\)))) # (!\dividend[1]~input_o\ & (!\remainder_sr|qo\(1) & (\remainder_sr|qo\(0) $ (!\dividend[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[1]~input_o\,
	datab => \remainder_sr|qo\(0),
	datac => \remainder_sr|qo\(1),
	datad => \dividend[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X2_Y36_N10
\Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (\Equal3~1_combout\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~6_combout\);

-- Location: IOIBUF_X0_Y31_N15
\divisor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(2),
	o => \divisor[2]~input_o\);

-- Location: LCCOMB_X1_Y36_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\divisor[2]~input_o\) # ((\divisor[0]~input_o\) # (\divisor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[2]~input_o\,
	datab => \divisor[0]~input_o\,
	datac => \divisor[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\divisor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(3),
	o => \divisor[3]~input_o\);

-- Location: LCCOMB_X6_Y36_N18
\dd_subtractor|output[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output[6]~12_combout\ = ((\remainder_sr|qo\(6) $ (\divisor[2]~input_o\ $ (\dd_subtractor|output[5]~11\)))) # (GND)
-- \dd_subtractor|output[6]~13\ = CARRY((\remainder_sr|qo\(6) & ((!\dd_subtractor|output[5]~11\) # (!\divisor[2]~input_o\))) # (!\remainder_sr|qo\(6) & (!\divisor[2]~input_o\ & !\dd_subtractor|output[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(6),
	datab => \divisor[2]~input_o\,
	datad => VCC,
	cin => \dd_subtractor|output[5]~11\,
	combout => \dd_subtractor|output[6]~12_combout\,
	cout => \dd_subtractor|output[6]~13\);

-- Location: FF_X6_Y36_N1
\dd_subtractor|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dd_subtractor|output[6]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \subtractor_load$latch~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(6));

-- Location: FF_X5_Y36_N25
\remainder_sr|qo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(6));

-- Location: LCCOMB_X6_Y36_N20
\dd_subtractor|output[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output[7]~14_combout\ = \divisor[3]~input_o\ $ (\dd_subtractor|output[6]~13\ $ (!\remainder_sr|qo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor[3]~input_o\,
	datad => \remainder_sr|qo\(7),
	cin => \dd_subtractor|output[6]~13\,
	combout => \dd_subtractor|output[7]~14_combout\);

-- Location: FF_X6_Y36_N3
\dd_subtractor|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dd_subtractor|output[7]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \subtractor_load$latch~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(7));

-- Location: FF_X3_Y36_N7
\remainder_sr|qo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(7));

-- Location: LCCOMB_X6_Y36_N28
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = \divisor[2]~input_o\ $ (\remainder_sr|qo\(6) $ (((\divisor[0]~input_o\) # (\divisor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[1]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \remainder_sr|qo\(6),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X6_Y36_N26
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!\Equal3~2_combout\ & ((\Add0~0_combout\ & (\divisor[3]~input_o\ $ (\remainder_sr|qo\(7)))) # (!\Add0~0_combout\ & (!\divisor[3]~input_o\ & !\remainder_sr|qo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \divisor[3]~input_o\,
	datac => \remainder_sr|qo\(7),
	datad => \Equal3~2_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X6_Y36_N24
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\y.S1~q\ & (((!\Equal3~3_combout\) # (!\Equal3~6_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \y.S1~q\,
	datac => \Equal3~6_combout\,
	datad => \Equal3~3_combout\,
	combout => \Selector12~0_combout\);

-- Location: CLKCTRL_G0
\w~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \w~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \w~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y36_N20
\w[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[1]$latch~combout\ = (GLOBAL(\w~0clkctrl_outclk\) & (\w[1]$latch~combout\)) # (!GLOBAL(\w~0clkctrl_outclk\) & ((\Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w[1]$latch~combout\,
	datac => \Selector12~0_combout\,
	datad => \w~0clkctrl_outclk\,
	combout => \w[1]$latch~combout\);

-- Location: LCCOMB_X4_Y36_N6
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\y.S4~q\ & (!\y.S3~q\ & ((\w[0]$latch~combout\) # (\w[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[0]$latch~combout\,
	datab => \y.S4~q\,
	datac => \y.S3~q\,
	datad => \w[1]$latch~combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X4_Y36_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\w[0]$latch~combout\ & !\w[1]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w[0]$latch~combout\,
	datad => \w[1]$latch~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y36_N16
\Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\y.S3~q\) # ((\y.S1~q\) # ((\y.S4~q\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S3~q\,
	datab => \y.S1~q\,
	datac => \y.S4~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector7~5_combout\);

-- Location: FF_X4_Y36_N7
\y.S2B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_y.S1~q\,
	ena => \Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S2B~q\);

-- Location: LCCOMB_X3_Y36_N2
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\Add2~2_combout\ & (!\Add2~4_combout\ & (!\Add2~0_combout\ & \y.S2B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~0_combout\,
	datad => \y.S2B~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X3_Y36_N16
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\remainder_sr|qo\(3) & ((\dividend[3]~input_o\ & (!\Add2~5\)) # (!\dividend[3]~input_o\ & (\Add2~5\ & VCC)))) # (!\remainder_sr|qo\(3) & ((\dividend[3]~input_o\ & ((\Add2~5\) # (GND))) # (!\dividend[3]~input_o\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\remainder_sr|qo\(3) & (\dividend[3]~input_o\ & !\Add2~5\)) # (!\remainder_sr|qo\(3) & ((\dividend[3]~input_o\) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(3),
	datab => \dividend[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X3_Y36_N18
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\remainder_sr|qo\(4) & ((GND) # (!\Add2~7\))) # (!\remainder_sr|qo\(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\remainder_sr|qo\(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \remainder_sr|qo\(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X3_Y36_N20
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\remainder_sr|qo\(5) & (\Add2~9\ & VCC)) # (!\remainder_sr|qo\(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\remainder_sr|qo\(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X3_Y36_N22
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\remainder_sr|qo\(6) & ((GND) # (!\Add2~11\))) # (!\remainder_sr|qo\(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\remainder_sr|qo\(6)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X3_Y36_N8
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (!\Add2~8_combout\ & (!\Add2~6_combout\ & (!\Add2~12_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~10_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X3_Y36_N24
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\remainder_sr|qo\(7) & (\Add2~13\ & VCC)) # (!\remainder_sr|qo\(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!\remainder_sr|qo\(7) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X3_Y36_N26
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Add2~15\ $ (\remainder_sr|qo\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \remainder_sr|qo\(7),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X3_Y36_N6
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (!\Add2~16_combout\ & !\Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datad => \Add2~14_combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X3_Y36_N0
\Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\y.S2A~q\) # ((\Selector14~0_combout\ & (\Selector14~1_combout\ & \Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S2A~q\,
	datab => \Selector14~0_combout\,
	datac => \Selector14~1_combout\,
	datad => \Selector14~2_combout\,
	combout => \Selector14~3_combout\);

-- Location: LCCOMB_X2_Y36_N2
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (\Equal3~3_combout\ & (\Equal3~4_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~4_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X2_Y36_N30
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\remainder_sr|qo\(7) & (!\remainder_sr|qo\(6) & (!\remainder_sr|qo\(4) & !\remainder_sr|qo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(7),
	datab => \remainder_sr|qo\(6),
	datac => \remainder_sr|qo\(4),
	datad => \remainder_sr|qo\(5),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X2_Y36_N28
\Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = (!\y.S0~q\ & (\Equal2~0_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S0~q\,
	datab => \Equal2~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Selector14~4_combout\);

-- Location: LCCOMB_X5_Y36_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\remainder_sr|qo\(4) & ((GND) # (!\divisor[0]~input_o\))) # (!\remainder_sr|qo\(4) & (\divisor[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\remainder_sr|qo\(4)) # (!\divisor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(4),
	datab => \divisor[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X5_Y36_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\remainder_sr|qo\(5) & ((\divisor[1]~input_o\ & (!\Add1~1\)) # (!\divisor[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\remainder_sr|qo\(5) & ((\divisor[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\divisor[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\remainder_sr|qo\(5) & (\divisor[1]~input_o\ & !\Add1~1\)) # (!\remainder_sr|qo\(5) & ((\divisor[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(5),
	datab => \divisor[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X5_Y36_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\remainder_sr|qo\(6) $ (\divisor[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\remainder_sr|qo\(6) & ((!\Add1~3\) # (!\divisor[2]~input_o\))) # (!\remainder_sr|qo\(6) & (!\divisor[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(6),
	datab => \divisor[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X5_Y36_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\divisor[3]~input_o\ & ((\remainder_sr|qo\(7) & (!\Add1~5\)) # (!\remainder_sr|qo\(7) & ((\Add1~5\) # (GND))))) # (!\divisor[3]~input_o\ & ((\remainder_sr|qo\(7) & (\Add1~5\ & VCC)) # (!\remainder_sr|qo\(7) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\divisor[3]~input_o\ & ((!\Add1~5\) # (!\remainder_sr|qo\(7)))) # (!\divisor[3]~input_o\ & (!\remainder_sr|qo\(7) & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[3]~input_o\,
	datab => \remainder_sr|qo\(7),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X5_Y36_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \remainder_sr|qo\(7) $ (\Add1~7\ $ (\divisor[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(7),
	datad => \divisor[3]~input_o\,
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X2_Y36_N18
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\remainder_sr|qo\(1) & (!\remainder_sr|qo\(3) & (!\remainder_sr|qo\(2) & !\remainder_sr|qo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder_sr|qo\(1),
	datab => \remainder_sr|qo\(3),
	datac => \remainder_sr|qo\(2),
	datad => \remainder_sr|qo\(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y36_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add1~4_combout\ & (!\Add1~6_combout\ & (!\Add1~2_combout\ & !\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~6_combout\,
	datac => \Add1~2_combout\,
	datad => \Add1~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y36_N30
\Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~5_combout\ = (\y.S1~q\ & ((\Add1~8_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \LessThan0~0_combout\,
	datac => \y.S1~q\,
	datad => \LessThan0~1_combout\,
	combout => \Selector14~5_combout\);

-- Location: LCCOMB_X4_Y36_N14
\Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~6_combout\ = (\Selector14~3_combout\) # ((\Selector14~4_combout\) # ((\Equal3~5_combout\ & \Selector14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~3_combout\,
	datab => \Equal3~5_combout\,
	datac => \Selector14~4_combout\,
	datad => \Selector14~5_combout\,
	combout => \Selector14~6_combout\);

-- Location: LCCOMB_X4_Y36_N30
\w[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \w[0]$latch~combout\ = (GLOBAL(\w~0clkctrl_outclk\) & ((\w[0]$latch~combout\))) # (!GLOBAL(\w~0clkctrl_outclk\) & (\Selector14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~6_combout\,
	datac => \w[0]$latch~combout\,
	datad => \w~0clkctrl_outclk\,
	combout => \w[0]$latch~combout\);

-- Location: LCCOMB_X3_Y36_N4
\y.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y.S0~0_combout\ = (\y.S0~q\) # ((\w[0]$latch~combout\ & !\w[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[0]$latch~combout\,
	datab => \w[1]$latch~combout\,
	datad => \y.S0~q\,
	combout => \y.S0~0_combout\);

-- Location: LCCOMB_X2_Y36_N24
\y.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y.S0~feeder_combout\ = \y.S0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y.S0~0_combout\,
	combout => \y.S0~feeder_combout\);

-- Location: FF_X2_Y36_N25
\y.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y.S0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S0~q\);

-- Location: LCCOMB_X4_Y36_N24
\step~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~0_combout\ = (\y.S2A~q\) # (\y.S2B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y.S2A~q\,
	datad => \y.S2B~q\,
	combout => \step~0_combout\);

-- Location: LCCOMB_X5_Y36_N22
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\y.S0~q\ & (\Equal0~0_combout\ & (\step~0_combout\ & !\WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S0~q\,
	datab => \Equal0~0_combout\,
	datac => \step~0_combout\,
	datad => \WideOr0~combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X5_Y36_N23
\y.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S3~q\);

-- Location: LCCOMB_X5_Y36_N4
\w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w~0_combout\ = (\y.S3~q\) # (\y.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S3~q\,
	datab => \y.S4~q\,
	combout => \w~0_combout\);

-- Location: FF_X5_Y36_N3
\y.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \w~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S4~q\);

-- Location: LCCOMB_X1_Y36_N30
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (!\y.S4~q\ & (!\y.S3~q\ & (!\w[1]$latch~combout\ & !\w[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S4~q\,
	datab => \y.S3~q\,
	datac => \w[1]$latch~combout\,
	datad => \w[0]$latch~combout\,
	combout => \Selector7~4_combout\);

-- Location: FF_X1_Y36_N31
\y.S2A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_y.S1~q\,
	ena => \Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.S2A~q\);

-- Location: LCCOMB_X2_Y36_N12
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\y.S2A~q\) # ((!\y.S0~q\ & ((!\Equal3~6_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S2A~q\,
	datab => \y.S0~q\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~6_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X2_Y36_N20
\subtractor_load$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtractor_load$latch~combout\ = (\WideOr0~combout\ & ((\subtractor_load$latch~combout\))) # (!\WideOr0~combout\ & (\Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector20~0_combout\,
	datac => \WideOr0~combout\,
	datad => \subtractor_load$latch~combout\,
	combout => \subtractor_load$latch~combout\);

-- Location: LCCOMB_X2_Y36_N6
\dd_subtractor|output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output~4_combout\ = (\subtractor_load$latch~combout\ & ((\dividend[0]~input_o\))) # (!\subtractor_load$latch~combout\ & (\remainder_sr|qo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtractor_load$latch~combout\,
	datab => \remainder_sr|qo\(0),
	datac => \dividend[0]~input_o\,
	combout => \dd_subtractor|output~4_combout\);

-- Location: LCCOMB_X2_Y36_N4
\dd_subtractor|output[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dd_subtractor|output[0]~feeder_combout\ = \dd_subtractor|output~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dd_subtractor|output~4_combout\,
	combout => \dd_subtractor|output[0]~feeder_combout\);

-- Location: FF_X2_Y36_N5
\dd_subtractor|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dd_subtractor|output[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd_subtractor|output\(0));

-- Location: FF_X2_Y36_N9
\remainder_sr|qo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \dd_subtractor|output\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remainder_sr|qo\(0));

-- Location: LCCOMB_X4_Y36_N26
quotient_set : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_set~combout\ = (\step~0_combout\ & ((!\y.S2B~q\))) # (!\step~0_combout\ & (\quotient_set~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \step~0_combout\,
	datac => \quotient_set~combout\,
	datad => \y.S2B~q\,
	combout => \quotient_set~combout\);

-- Location: LCCOMB_X4_Y36_N28
\qutoient_sr|qo[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \qutoient_sr|qo[0]~feeder_combout\ = \quotient_set~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quotient_set~combout\,
	combout => \qutoient_sr|qo[0]~feeder_combout\);

-- Location: LCCOMB_X5_Y36_N0
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ((\y.S1~q\) # (\y.S4~q\)) # (!\y.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S0~q\,
	datab => \y.S1~q\,
	datad => \y.S4~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X5_Y36_N2
quotient_load : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_load~combout\ = (\WideOr4~combout\ & (\quotient_load~combout\)) # (!\WideOr4~combout\ & ((\y.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient_load~combout\,
	datab => \WideOr4~combout\,
	datad => \y.S3~q\,
	combout => \quotient_load~combout\);

-- Location: LCCOMB_X4_Y36_N0
\qutoient_sr|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \qutoient_sr|process_0~0_combout\ = (!\quotient_load~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quotient_load~combout\,
	datac => \reset~input_o\,
	combout => \qutoient_sr|process_0~0_combout\);

-- Location: FF_X4_Y36_N29
\qutoient_sr|qo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qutoient_sr|qo[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \qutoient_sr|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qutoient_sr|qo\(0));

-- Location: LCCOMB_X4_Y36_N12
\qutoient_sr|qo[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \qutoient_sr|qo[1]~feeder_combout\ = \qutoient_sr|qo\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \qutoient_sr|qo\(0),
	combout => \qutoient_sr|qo[1]~feeder_combout\);

-- Location: FF_X4_Y36_N13
\qutoient_sr|qo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qutoient_sr|qo[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \qutoient_sr|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qutoient_sr|qo\(1));

-- Location: LCCOMB_X4_Y36_N18
\qutoient_sr|qo[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \qutoient_sr|qo[2]~feeder_combout\ = \qutoient_sr|qo\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \qutoient_sr|qo\(1),
	combout => \qutoient_sr|qo[2]~feeder_combout\);

-- Location: FF_X4_Y36_N19
\qutoient_sr|qo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qutoient_sr|qo[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \qutoient_sr|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qutoient_sr|qo\(2));

-- Location: LCCOMB_X4_Y36_N10
\qutoient_sr|qo[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \qutoient_sr|qo[3]~feeder_combout\ = \qutoient_sr|qo\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \qutoient_sr|qo\(2),
	combout => \qutoient_sr|qo[3]~feeder_combout\);

-- Location: FF_X4_Y36_N11
\qutoient_sr|qo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qutoient_sr|qo[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \qutoient_sr|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qutoient_sr|qo\(3));

-- Location: LCCOMB_X3_Y36_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\y.S2B~q\) # ((\y.S2A~q\) # ((\y.S1~q\ & \dividend[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S2B~q\,
	datab => \y.S1~q\,
	datac => \dividend[0]~input_o\,
	datad => \y.S2A~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X4_Y36_N4
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\Selector14~5_combout\) # (\Selector14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~0_combout\,
	datac => \Selector14~5_combout\,
	datad => \Selector14~4_combout\,
	combout => \Selector4~1_combout\);

-- Location: CLKCTRL_G3
\Selector12~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector12~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector12~0clkctrl_outclk\);

-- Location: LCCOMB_X3_Y36_N30
\step[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[0]$latch~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & (\step[0]$latch~combout\)) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & ((\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \step[0]$latch~combout\,
	datab => \Selector4~1_combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \step[0]$latch~combout\);

-- Location: LCCOMB_X5_Y36_N20
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add1~8_combout\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add1~8_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y36_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\step~0_combout\) # ((\dividend[1]~input_o\ & (\y.S1~q\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[1]~input_o\,
	datab => \y.S1~q\,
	datac => \step~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X4_Y36_N8
\step[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[1]$latch~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & (\step[1]$latch~combout\)) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & ((\Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \step[1]$latch~combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \step[1]$latch~combout\);

-- Location: LCCOMB_X6_Y36_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector14~5_combout\) # ((\w~0_combout\) # ((\y.S1~q\ & \dividend[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S1~q\,
	datab => \Selector14~5_combout\,
	datac => \w~0_combout\,
	datad => \dividend[2]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X6_Y36_N4
\step[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[2]$latch~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & ((\step[2]$latch~combout\))) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & (\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \step[2]$latch~combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \step[2]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N10
\step~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~1_combout\ = (\dividend[3]~input_o\ & (!\Add1~8_combout\ & ((!\LessThan0~0_combout\) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \Add1~8_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \step~1_combout\);

-- Location: CLKCTRL_G4
\Equal3~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal3~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal3~5clkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N6
\step[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[3]$latch~combout\ = (\y.S1~q\ & ((GLOBAL(\Equal3~5clkctrl_outclk\) & ((\step~1_combout\))) # (!GLOBAL(\Equal3~5clkctrl_outclk\) & (\step[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S1~q\,
	datab => \step[3]$latch~combout\,
	datac => \step~1_combout\,
	datad => \Equal3~5clkctrl_outclk\,
	combout => \step[3]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N16
\step~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~2_combout\ = (\Add1~8_combout\) # ((\divisor[0]~input_o\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \divisor[0]~input_o\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \step~2_combout\);

-- Location: LCCOMB_X1_Y36_N14
\step[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[4]$latch~combout\ = (\y.S1~q\ & ((GLOBAL(\Equal3~5clkctrl_outclk\) & (\step~2_combout\)) # (!GLOBAL(\Equal3~5clkctrl_outclk\) & ((\step[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \step~2_combout\,
	datab => \step[4]$latch~combout\,
	datac => \y.S1~q\,
	datad => \Equal3~5clkctrl_outclk\,
	combout => \step[4]$latch~combout\);

-- Location: LCCOMB_X6_Y36_N12
\step~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~3_combout\ = (!\LessThan0~2_combout\ & (\divisor[0]~input_o\ $ (\divisor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \divisor[1]~input_o\,
	combout => \step~3_combout\);

-- Location: LCCOMB_X6_Y36_N22
\step[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[5]$latch~combout\ = (\y.S1~q\ & ((GLOBAL(\Equal3~5clkctrl_outclk\) & ((\step~3_combout\))) # (!GLOBAL(\Equal3~5clkctrl_outclk\) & (\step[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \step[5]$latch~combout\,
	datab => \y.S1~q\,
	datac => \step~3_combout\,
	datad => \Equal3~5clkctrl_outclk\,
	combout => \step[5]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N28
\step~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~4_combout\ = (\LessThan0~2_combout\) # (\divisor[2]~input_o\ $ (((!\divisor[1]~input_o\ & !\divisor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[1]~input_o\,
	datab => \divisor[0]~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \divisor[2]~input_o\,
	combout => \step~4_combout\);

-- Location: LCCOMB_X1_Y36_N4
\step[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[6]$latch~combout\ = (\y.S1~q\ & ((GLOBAL(\Equal3~5clkctrl_outclk\) & (!\step~4_combout\)) # (!GLOBAL(\Equal3~5clkctrl_outclk\) & ((\step[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S1~q\,
	datab => \step~4_combout\,
	datac => \step[6]$latch~combout\,
	datad => \Equal3~5clkctrl_outclk\,
	combout => \step[6]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N22
\step~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~5_combout\ = (\LessThan0~2_combout\) # (\Add0~0_combout\ $ (!\divisor[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \divisor[3]~input_o\,
	combout => \step~5_combout\);

-- Location: LCCOMB_X1_Y36_N26
\step[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[7]$latch~combout\ = (\y.S1~q\ & ((GLOBAL(\Equal3~5clkctrl_outclk\) & (!\step~5_combout\)) # (!GLOBAL(\Equal3~5clkctrl_outclk\) & ((\step[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.S1~q\,
	datab => \step~5_combout\,
	datac => \step[7]$latch~combout\,
	datad => \Equal3~5clkctrl_outclk\,
	combout => \step[7]$latch~combout\);

-- Location: LCCOMB_X5_Y36_N26
\step~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \step~6_combout\ = ((\LessThan0~2_combout\) # (\divisor[3]~input_o\)) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \LessThan0~2_combout\,
	datad => \divisor[3]~input_o\,
	combout => \step~6_combout\);

-- Location: LCCOMB_X5_Y36_N8
\step[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \step[8]$latch~combout\ = (\y.S1~q\ & ((GLOBAL(\Equal3~5clkctrl_outclk\) & (!\step~6_combout\)) # (!GLOBAL(\Equal3~5clkctrl_outclk\) & ((\step[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \step~6_combout\,
	datab => \y.S1~q\,
	datac => \step[8]$latch~combout\,
	datad => \Equal3~5clkctrl_outclk\,
	combout => \step[8]$latch~combout\);

ww_remainder(0) <= \remainder[0]~output_o\;

ww_remainder(1) <= \remainder[1]~output_o\;

ww_remainder(2) <= \remainder[2]~output_o\;

ww_remainder(3) <= \remainder[3]~output_o\;

ww_remainder(4) <= \remainder[4]~output_o\;

ww_remainder(5) <= \remainder[5]~output_o\;

ww_remainder(6) <= \remainder[6]~output_o\;

ww_remainder(7) <= \remainder[7]~output_o\;

ww_quotient(0) <= \quotient[0]~output_o\;

ww_quotient(1) <= \quotient[1]~output_o\;

ww_quotient(2) <= \quotient[2]~output_o\;

ww_quotient(3) <= \quotient[3]~output_o\;

ww_minus_temp(0) <= \minus_temp[0]~output_o\;

ww_minus_temp(1) <= \minus_temp[1]~output_o\;

ww_minus_temp(2) <= \minus_temp[2]~output_o\;

ww_minus_temp(3) <= \minus_temp[3]~output_o\;

ww_minus_temp(4) <= \minus_temp[4]~output_o\;

ww_minus_temp(5) <= \minus_temp[5]~output_o\;

ww_minus_temp(6) <= \minus_temp[6]~output_o\;

ww_minus_temp(7) <= \minus_temp[7]~output_o\;

ww_w(0) <= \w[0]~output_o\;

ww_w(1) <= \w[1]~output_o\;

ww_w(2) <= \w[2]~output_o\;

ww_w(3) <= \w[3]~output_o\;

ww_w(4) <= \w[4]~output_o\;

ww_w(5) <= \w[5]~output_o\;

ww_w(6) <= \w[6]~output_o\;

ww_w(7) <= \w[7]~output_o\;

ww_w(8) <= \w[8]~output_o\;

ww_w(9) <= \w[9]~output_o\;

ww_w(10) <= \w[10]~output_o\;

ww_w(11) <= \w[11]~output_o\;

ww_w(12) <= \w[12]~output_o\;

ww_w(13) <= \w[13]~output_o\;

ww_w(14) <= \w[14]~output_o\;

ww_w(15) <= \w[15]~output_o\;

ww_w(16) <= \w[16]~output_o\;

ww_w(17) <= \w[17]~output_o\;

ww_w(18) <= \w[18]~output_o\;

ww_w(19) <= \w[19]~output_o\;

ww_w(20) <= \w[20]~output_o\;

ww_w(21) <= \w[21]~output_o\;

ww_w(22) <= \w[22]~output_o\;

ww_w(23) <= \w[23]~output_o\;

ww_w(24) <= \w[24]~output_o\;

ww_w(25) <= \w[25]~output_o\;

ww_w(26) <= \w[26]~output_o\;

ww_w(27) <= \w[27]~output_o\;

ww_w(28) <= \w[28]~output_o\;

ww_w(29) <= \w[29]~output_o\;

ww_w(30) <= \w[30]~output_o\;

ww_w(31) <= \w[31]~output_o\;

ww_step(0) <= \step[0]~output_o\;

ww_step(1) <= \step[1]~output_o\;

ww_step(2) <= \step[2]~output_o\;

ww_step(3) <= \step[3]~output_o\;

ww_step(4) <= \step[4]~output_o\;

ww_step(5) <= \step[5]~output_o\;

ww_step(6) <= \step[6]~output_o\;

ww_step(7) <= \step[7]~output_o\;

ww_step(8) <= \step[8]~output_o\;

ww_step(9) <= \step[9]~output_o\;

ww_step(10) <= \step[10]~output_o\;

ww_step(11) <= \step[11]~output_o\;

ww_step(12) <= \step[12]~output_o\;

ww_step(13) <= \step[13]~output_o\;

ww_step(14) <= \step[14]~output_o\;

ww_step(15) <= \step[15]~output_o\;

ww_step(16) <= \step[16]~output_o\;

ww_step(17) <= \step[17]~output_o\;

ww_step(18) <= \step[18]~output_o\;

ww_step(19) <= \step[19]~output_o\;

ww_step(20) <= \step[20]~output_o\;

ww_step(21) <= \step[21]~output_o\;

ww_step(22) <= \step[22]~output_o\;

ww_step(23) <= \step[23]~output_o\;

ww_step(24) <= \step[24]~output_o\;

ww_step(25) <= \step[25]~output_o\;

ww_step(26) <= \step[26]~output_o\;

ww_step(27) <= \step[27]~output_o\;

ww_step(28) <= \step[28]~output_o\;

ww_step(29) <= \step[29]~output_o\;

ww_step(30) <= \step[30]~output_o\;

ww_step(31) <= \step[31]~output_o\;

ww_subtractor_load <= \subtractor_load~output_o\;

ww_fixed_dividend(0) <= \fixed_dividend[0]~output_o\;

ww_fixed_dividend(1) <= \fixed_dividend[1]~output_o\;

ww_fixed_dividend(2) <= \fixed_dividend[2]~output_o\;

ww_fixed_dividend(3) <= \fixed_dividend[3]~output_o\;

ww_fixed_dividend(4) <= \fixed_dividend[4]~output_o\;

ww_fixed_dividend(5) <= \fixed_dividend[5]~output_o\;

ww_fixed_dividend(6) <= \fixed_dividend[6]~output_o\;

ww_fixed_dividend(7) <= \fixed_dividend[7]~output_o\;
END structure;


