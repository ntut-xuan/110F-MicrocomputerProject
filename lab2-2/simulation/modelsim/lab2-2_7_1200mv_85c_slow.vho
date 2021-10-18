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

-- DATE "10/18/2021 20:22:11"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDadder IS
    PORT (
	input_a : IN std_logic_vector(3 DOWNTO 0);
	input_b : IN std_logic_vector(3 DOWNTO 0);
	l1 : OUT std_logic_vector(0 TO 6);
	l2 : OUT std_logic_vector(0 TO 6)
	);
END BCDadder;

-- Design Ports Information
-- l1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCDadder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_input_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_l1 : std_logic_vector(0 TO 6);
SIGNAL ww_l2 : std_logic_vector(0 TO 6);
SIGNAL \l1[6]~output_o\ : std_logic;
SIGNAL \l1[5]~output_o\ : std_logic;
SIGNAL \l1[4]~output_o\ : std_logic;
SIGNAL \l1[3]~output_o\ : std_logic;
SIGNAL \l1[2]~output_o\ : std_logic;
SIGNAL \l1[1]~output_o\ : std_logic;
SIGNAL \l1[0]~output_o\ : std_logic;
SIGNAL \l2[6]~output_o\ : std_logic;
SIGNAL \l2[5]~output_o\ : std_logic;
SIGNAL \l2[4]~output_o\ : std_logic;
SIGNAL \l2[3]~output_o\ : std_logic;
SIGNAL \l2[2]~output_o\ : std_logic;
SIGNAL \l2[1]~output_o\ : std_logic;
SIGNAL \l2[0]~output_o\ : std_logic;
SIGNAL \input_a[0]~input_o\ : std_logic;
SIGNAL \input_b[0]~input_o\ : std_logic;
SIGNAL \adder1|fa_s~0_combout\ : std_logic;
SIGNAL \input_b[2]~input_o\ : std_logic;
SIGNAL \input_b[1]~input_o\ : std_logic;
SIGNAL \input_a[1]~input_o\ : std_logic;
SIGNAL \adder2|fa_s~0_combout\ : std_logic;
SIGNAL \input_a[2]~input_o\ : std_logic;
SIGNAL \adder2|fa_out~0_combout\ : std_logic;
SIGNAL \adder7|fa_out~0_combout\ : std_logic;
SIGNAL \adder3|fa_out~0_combout\ : std_logic;
SIGNAL \input_b[3]~input_o\ : std_logic;
SIGNAL \input_a[3]~input_o\ : std_logic;
SIGNAL \adder8|fa_s~combout\ : std_logic;
SIGNAL \fixed_circuit1|fixed_out~0_combout\ : std_logic;
SIGNAL \adder3|fa_s~0_combout\ : std_logic;
SIGNAL \adder7|fa_s~0_combout\ : std_logic;
SIGNAL \adder6|fa_s~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_g~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_f~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_e~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_d~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_c~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_b~0_combout\ : std_logic;
SIGNAL \seven_segment1|ss_a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_a <= input_a;
ww_input_b <= input_b;
l1 <= ww_l1;
l2 <= ww_l2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\l1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_g~0_combout\,
	devoe => ww_devoe,
	o => \l1[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\l1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_f~0_combout\,
	devoe => ww_devoe,
	o => \l1[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\l1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_e~0_combout\,
	devoe => ww_devoe,
	o => \l1[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\l1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_d~0_combout\,
	devoe => ww_devoe,
	o => \l1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\l1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_c~0_combout\,
	devoe => ww_devoe,
	o => \l1[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\l1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_b~0_combout\,
	devoe => ww_devoe,
	o => \l1[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\l1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment1|ss_a~0_combout\,
	devoe => ww_devoe,
	o => \l1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\l2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \l2[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\l2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fixed_circuit1|fixed_out~0_combout\,
	devoe => ww_devoe,
	o => \l2[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\l2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fixed_circuit1|fixed_out~0_combout\,
	devoe => ww_devoe,
	o => \l2[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\l2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fixed_circuit1|fixed_out~0_combout\,
	devoe => ww_devoe,
	o => \l2[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\l2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \l2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\l2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \l2[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\l2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fixed_circuit1|fixed_out~0_combout\,
	devoe => ww_devoe,
	o => \l2[0]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\input_a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(0),
	o => \input_a[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\input_b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(0),
	o => \input_b[0]~input_o\);

-- Location: LCCOMB_X114_Y15_N12
\adder1|fa_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|fa_s~0_combout\ = \input_a[0]~input_o\ $ (\input_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_a[0]~input_o\,
	datad => \input_b[0]~input_o\,
	combout => \adder1|fa_s~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\input_b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(2),
	o => \input_b[2]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\input_b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(1),
	o => \input_b[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\input_a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(1),
	o => \input_a[1]~input_o\);

-- Location: LCCOMB_X114_Y15_N10
\adder2|fa_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder2|fa_s~0_combout\ = \input_b[1]~input_o\ $ (\input_a[1]~input_o\ $ (((\input_a[0]~input_o\ & \input_b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[1]~input_o\,
	datab => \input_a[1]~input_o\,
	datac => \input_a[0]~input_o\,
	datad => \input_b[0]~input_o\,
	combout => \adder2|fa_s~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\input_a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(2),
	o => \input_a[2]~input_o\);

-- Location: LCCOMB_X114_Y15_N0
\adder2|fa_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder2|fa_out~0_combout\ = (\input_b[1]~input_o\ & ((\input_a[1]~input_o\) # ((\input_a[0]~input_o\ & \input_b[0]~input_o\)))) # (!\input_b[1]~input_o\ & (\input_a[1]~input_o\ & (\input_a[0]~input_o\ & \input_b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[1]~input_o\,
	datab => \input_a[1]~input_o\,
	datac => \input_a[0]~input_o\,
	datad => \input_b[0]~input_o\,
	combout => \adder2|fa_out~0_combout\);

-- Location: LCCOMB_X114_Y31_N26
\adder7|fa_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder7|fa_out~0_combout\ = (\adder2|fa_s~0_combout\) # (\input_b[2]~input_o\ $ (\input_a[2]~input_o\ $ (\adder2|fa_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[2]~input_o\,
	datab => \adder2|fa_s~0_combout\,
	datac => \input_a[2]~input_o\,
	datad => \adder2|fa_out~0_combout\,
	combout => \adder7|fa_out~0_combout\);

-- Location: LCCOMB_X114_Y31_N20
\adder3|fa_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder3|fa_out~0_combout\ = (\input_b[2]~input_o\ & ((\input_a[2]~input_o\) # (\adder2|fa_out~0_combout\))) # (!\input_b[2]~input_o\ & (\input_a[2]~input_o\ & \adder2|fa_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[2]~input_o\,
	datac => \input_a[2]~input_o\,
	datad => \adder2|fa_out~0_combout\,
	combout => \adder3|fa_out~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\input_b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(3),
	o => \input_b[3]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\input_a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(3),
	o => \input_a[3]~input_o\);

-- Location: LCCOMB_X114_Y31_N28
\adder8|fa_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder8|fa_s~combout\ = (\adder7|fa_out~0_combout\ & ((\adder3|fa_out~0_combout\ & (\input_b[3]~input_o\ $ (\input_a[3]~input_o\))) # (!\adder3|fa_out~0_combout\ & (\input_b[3]~input_o\ & \input_a[3]~input_o\)))) # (!\adder7|fa_out~0_combout\ & 
-- (\adder3|fa_out~0_combout\ $ (\input_b[3]~input_o\ $ (\input_a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|fa_out~0_combout\,
	datab => \adder3|fa_out~0_combout\,
	datac => \input_b[3]~input_o\,
	datad => \input_a[3]~input_o\,
	combout => \adder8|fa_s~combout\);

-- Location: LCCOMB_X114_Y31_N30
\fixed_circuit1|fixed_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fixed_circuit1|fixed_out~0_combout\ = (\adder7|fa_out~0_combout\ & ((\adder3|fa_out~0_combout\) # ((\input_b[3]~input_o\) # (\input_a[3]~input_o\)))) # (!\adder7|fa_out~0_combout\ & ((\adder3|fa_out~0_combout\ & ((\input_b[3]~input_o\) # 
-- (\input_a[3]~input_o\))) # (!\adder3|fa_out~0_combout\ & (\input_b[3]~input_o\ & \input_a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|fa_out~0_combout\,
	datab => \adder3|fa_out~0_combout\,
	datac => \input_b[3]~input_o\,
	datad => \input_a[3]~input_o\,
	combout => \fixed_circuit1|fixed_out~0_combout\);

-- Location: LCCOMB_X114_Y31_N16
\adder3|fa_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder3|fa_s~0_combout\ = \input_b[2]~input_o\ $ (\input_a[2]~input_o\ $ (\adder2|fa_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[2]~input_o\,
	datac => \input_a[2]~input_o\,
	datad => \adder2|fa_out~0_combout\,
	combout => \adder3|fa_s~0_combout\);

-- Location: LCCOMB_X114_Y31_N8
\adder7|fa_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder7|fa_s~0_combout\ = \adder3|fa_s~0_combout\ $ (((\fixed_circuit1|fixed_out~0_combout\ & !\adder2|fa_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fixed_circuit1|fixed_out~0_combout\,
	datab => \adder3|fa_s~0_combout\,
	datac => \adder2|fa_s~0_combout\,
	combout => \adder7|fa_s~0_combout\);

-- Location: LCCOMB_X114_Y31_N18
\adder6|fa_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder6|fa_s~0_combout\ = \fixed_circuit1|fixed_out~0_combout\ $ (\adder2|fa_s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fixed_circuit1|fixed_out~0_combout\,
	datac => \adder2|fa_s~0_combout\,
	combout => \adder6|fa_s~0_combout\);

-- Location: LCCOMB_X114_Y31_N14
\seven_segment1|ss_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_g~0_combout\ = (\adder1|fa_s~0_combout\ & (!\adder8|fa_s~combout\ & (\adder7|fa_s~0_combout\ $ (!\adder6|fa_s~0_combout\)))) # (!\adder1|fa_s~0_combout\ & (!\adder6|fa_s~0_combout\ & (\adder8|fa_s~combout\ $ 
-- (!\adder7|fa_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_g~0_combout\);

-- Location: LCCOMB_X114_Y31_N0
\seven_segment1|ss_f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_f~0_combout\ = (\adder1|fa_s~0_combout\ & (\adder8|fa_s~combout\ $ (((\adder6|fa_s~0_combout\) # (!\adder7|fa_s~0_combout\))))) # (!\adder1|fa_s~0_combout\ & (!\adder8|fa_s~combout\ & (!\adder7|fa_s~0_combout\ & 
-- \adder6|fa_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_f~0_combout\);

-- Location: LCCOMB_X114_Y31_N10
\seven_segment1|ss_e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_e~0_combout\ = (\adder6|fa_s~0_combout\ & (\adder1|fa_s~0_combout\ & (!\adder8|fa_s~combout\))) # (!\adder6|fa_s~0_combout\ & ((\adder7|fa_s~0_combout\ & ((!\adder8|fa_s~combout\))) # (!\adder7|fa_s~0_combout\ & 
-- (\adder1|fa_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_e~0_combout\);

-- Location: LCCOMB_X114_Y31_N4
\seven_segment1|ss_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_d~0_combout\ = (\adder6|fa_s~0_combout\ & ((\adder1|fa_s~0_combout\ & ((\adder7|fa_s~0_combout\))) # (!\adder1|fa_s~0_combout\ & (\adder8|fa_s~combout\ & !\adder7|fa_s~0_combout\)))) # (!\adder6|fa_s~0_combout\ & (!\adder8|fa_s~combout\ 
-- & (\adder1|fa_s~0_combout\ $ (\adder7|fa_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_d~0_combout\);

-- Location: LCCOMB_X114_Y31_N6
\seven_segment1|ss_c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_c~0_combout\ = (\adder8|fa_s~combout\ & (\adder7|fa_s~0_combout\ & ((\adder6|fa_s~0_combout\) # (!\adder1|fa_s~0_combout\)))) # (!\adder8|fa_s~combout\ & (!\adder1|fa_s~0_combout\ & (!\adder7|fa_s~0_combout\ & \adder6|fa_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_c~0_combout\);

-- Location: LCCOMB_X114_Y31_N24
\seven_segment1|ss_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_b~0_combout\ = (\adder8|fa_s~combout\ & ((\adder1|fa_s~0_combout\ & ((\adder6|fa_s~0_combout\))) # (!\adder1|fa_s~0_combout\ & (\adder7|fa_s~0_combout\)))) # (!\adder8|fa_s~combout\ & (\adder7|fa_s~0_combout\ & (\adder1|fa_s~0_combout\ 
-- $ (\adder6|fa_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_b~0_combout\);

-- Location: LCCOMB_X114_Y31_N2
\seven_segment1|ss_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_segment1|ss_a~0_combout\ = (\adder8|fa_s~combout\ & (\adder1|fa_s~0_combout\ & (\adder7|fa_s~0_combout\ $ (\adder6|fa_s~0_combout\)))) # (!\adder8|fa_s~combout\ & (!\adder6|fa_s~0_combout\ & (\adder1|fa_s~0_combout\ $ (\adder7|fa_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|fa_s~0_combout\,
	datab => \adder8|fa_s~combout\,
	datac => \adder7|fa_s~0_combout\,
	datad => \adder6|fa_s~0_combout\,
	combout => \seven_segment1|ss_a~0_combout\);

ww_l1(6) <= \l1[6]~output_o\;

ww_l1(5) <= \l1[5]~output_o\;

ww_l1(4) <= \l1[4]~output_o\;

ww_l1(3) <= \l1[3]~output_o\;

ww_l1(2) <= \l1[2]~output_o\;

ww_l1(1) <= \l1[1]~output_o\;

ww_l1(0) <= \l1[0]~output_o\;

ww_l2(6) <= \l2[6]~output_o\;

ww_l2(5) <= \l2[5]~output_o\;

ww_l2(4) <= \l2[4]~output_o\;

ww_l2(3) <= \l2[3]~output_o\;

ww_l2(2) <= \l2[2]~output_o\;

ww_l2(1) <= \l2[1]~output_o\;

ww_l2(0) <= \l2[0]~output_o\;
END structure;


