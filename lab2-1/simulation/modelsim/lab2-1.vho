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

-- DATE "10/14/2021 22:20:35"

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

ENTITY 	fulladder IS
    PORT (
	input_a : IN std_logic_vector(7 DOWNTO 0);
	input_b : IN std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic;
	l1 : OUT std_logic_vector(0 TO 6);
	l2 : OUT std_logic_vector(0 TO 6)
	);
END fulladder;

-- Design Ports Information
-- cout	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[6]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[4]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fulladder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_input_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_l1 : std_logic_vector(0 TO 6);
SIGNAL ww_l2 : std_logic_vector(0 TO 6);
SIGNAL \cout~output_o\ : std_logic;
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
SIGNAL \input_a[4]~input_o\ : std_logic;
SIGNAL \input_b[0]~input_o\ : std_logic;
SIGNAL \input_a[1]~input_o\ : std_logic;
SIGNAL \input_a[0]~input_o\ : std_logic;
SIGNAL \input_b[1]~input_o\ : std_logic;
SIGNAL \adder2|cout~0_combout\ : std_logic;
SIGNAL \input_b[2]~input_o\ : std_logic;
SIGNAL \input_a[2]~input_o\ : std_logic;
SIGNAL \adder3|cout~0_combout\ : std_logic;
SIGNAL \input_b[3]~input_o\ : std_logic;
SIGNAL \input_a[3]~input_o\ : std_logic;
SIGNAL \adder4|cout~0_combout\ : std_logic;
SIGNAL \input_b[4]~input_o\ : std_logic;
SIGNAL \adder5|cout~0_combout\ : std_logic;
SIGNAL \input_b[5]~input_o\ : std_logic;
SIGNAL \input_a[5]~input_o\ : std_logic;
SIGNAL \adder6|cout~0_combout\ : std_logic;
SIGNAL \input_a[6]~input_o\ : std_logic;
SIGNAL \input_b[6]~input_o\ : std_logic;
SIGNAL \adder7|cout~0_combout\ : std_logic;
SIGNAL \input_b[7]~input_o\ : std_logic;
SIGNAL \input_a[7]~input_o\ : std_logic;
SIGNAL \adder8|cout~0_combout\ : std_logic;
SIGNAL \adder7|s~combout\ : std_logic;
SIGNAL \adder6|s~combout\ : std_logic;
SIGNAL \adder5|s~combout\ : std_logic;
SIGNAL \adder8|s~0_combout\ : std_logic;
SIGNAL \adder8|s~combout\ : std_logic;
SIGNAL \led1|g~0_combout\ : std_logic;
SIGNAL \led1|f~0_combout\ : std_logic;
SIGNAL \led1|e~0_combout\ : std_logic;
SIGNAL \led1|d~0_combout\ : std_logic;
SIGNAL \led1|c~0_combout\ : std_logic;
SIGNAL \led1|b~0_combout\ : std_logic;
SIGNAL \led1|a~0_combout\ : std_logic;
SIGNAL \adder2|s~0_combout\ : std_logic;
SIGNAL \adder4|s~combout\ : std_logic;
SIGNAL \adder3|s~0_combout\ : std_logic;
SIGNAL \adder1|s~0_combout\ : std_logic;
SIGNAL \led2|g~0_combout\ : std_logic;
SIGNAL \led2|f~0_combout\ : std_logic;
SIGNAL \led2|e~0_combout\ : std_logic;
SIGNAL \led2|d~0_combout\ : std_logic;
SIGNAL \led2|c~0_combout\ : std_logic;
SIGNAL \led2|b~0_combout\ : std_logic;
SIGNAL \led2|a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_a <= input_a;
ww_input_b <= input_b;
cout <= ww_cout;
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

-- Location: IOOBUF_X115_Y22_N23
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder8|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\l1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|g~0_combout\,
	devoe => ww_devoe,
	o => \l1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\l1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|f~0_combout\,
	devoe => ww_devoe,
	o => \l1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\l1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|e~0_combout\,
	devoe => ww_devoe,
	o => \l1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\l1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|d~0_combout\,
	devoe => ww_devoe,
	o => \l1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\l1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|c~0_combout\,
	devoe => ww_devoe,
	o => \l1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\l1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|b~0_combout\,
	devoe => ww_devoe,
	o => \l1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\l1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|a~0_combout\,
	devoe => ww_devoe,
	o => \l1[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\l2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|g~0_combout\,
	devoe => ww_devoe,
	o => \l2[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\l2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|f~0_combout\,
	devoe => ww_devoe,
	o => \l2[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\l2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|e~0_combout\,
	devoe => ww_devoe,
	o => \l2[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\l2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|d~0_combout\,
	devoe => ww_devoe,
	o => \l2[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\l2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|c~0_combout\,
	devoe => ww_devoe,
	o => \l2[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\l2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|b~0_combout\,
	devoe => ww_devoe,
	o => \l2[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\l2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|a~0_combout\,
	devoe => ww_devoe,
	o => \l2[0]~output_o\);

-- Location: IOIBUF_X115_Y18_N8
\input_a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(4),
	o => \input_a[4]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\input_b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(0),
	o => \input_b[0]~input_o\);

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

-- Location: IOIBUF_X115_Y16_N8
\input_b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(1),
	o => \input_b[1]~input_o\);

-- Location: LCCOMB_X114_Y18_N8
\adder2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder2|cout~0_combout\ = (\input_a[1]~input_o\ & ((\input_b[1]~input_o\) # ((\input_b[0]~input_o\ & \input_a[0]~input_o\)))) # (!\input_a[1]~input_o\ & (\input_b[0]~input_o\ & (\input_a[0]~input_o\ & \input_b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[0]~input_o\,
	datab => \input_a[1]~input_o\,
	datac => \input_a[0]~input_o\,
	datad => \input_b[1]~input_o\,
	combout => \adder2|cout~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\input_b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(2),
	o => \input_b[2]~input_o\);

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

-- Location: LCCOMB_X114_Y18_N18
\adder3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder3|cout~0_combout\ = (\adder2|cout~0_combout\ & ((\input_b[2]~input_o\) # (\input_a[2]~input_o\))) # (!\adder2|cout~0_combout\ & (\input_b[2]~input_o\ & \input_a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder2|cout~0_combout\,
	datac => \input_b[2]~input_o\,
	datad => \input_a[2]~input_o\,
	combout => \adder3|cout~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
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

-- Location: LCCOMB_X114_Y18_N20
\adder4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder4|cout~0_combout\ = (\adder3|cout~0_combout\ & ((\input_b[3]~input_o\) # (\input_a[3]~input_o\))) # (!\adder3|cout~0_combout\ & (\input_b[3]~input_o\ & \input_a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder3|cout~0_combout\,
	datac => \input_b[3]~input_o\,
	datad => \input_a[3]~input_o\,
	combout => \adder4|cout~0_combout\);

-- Location: IOIBUF_X115_Y7_N15
\input_b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(4),
	o => \input_b[4]~input_o\);

-- Location: LCCOMB_X114_Y18_N22
\adder5|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder5|cout~0_combout\ = (\input_a[4]~input_o\ & ((\adder4|cout~0_combout\) # (\input_b[4]~input_o\))) # (!\input_a[4]~input_o\ & (\adder4|cout~0_combout\ & \input_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_a[4]~input_o\,
	datab => \adder4|cout~0_combout\,
	datad => \input_b[4]~input_o\,
	combout => \adder5|cout~0_combout\);

-- Location: IOIBUF_X115_Y9_N22
\input_b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(5),
	o => \input_b[5]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\input_a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(5),
	o => \input_a[5]~input_o\);

-- Location: LCCOMB_X114_Y22_N24
\adder6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder6|cout~0_combout\ = (\adder5|cout~0_combout\ & ((\input_b[5]~input_o\) # (\input_a[5]~input_o\))) # (!\adder5|cout~0_combout\ & (\input_b[5]~input_o\ & \input_a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder5|cout~0_combout\,
	datac => \input_b[5]~input_o\,
	datad => \input_a[5]~input_o\,
	combout => \adder6|cout~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\input_a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(6),
	o => \input_a[6]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\input_b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(6),
	o => \input_b[6]~input_o\);

-- Location: LCCOMB_X114_Y22_N26
\adder7|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder7|cout~0_combout\ = (\adder6|cout~0_combout\ & ((\input_a[6]~input_o\) # (\input_b[6]~input_o\))) # (!\adder6|cout~0_combout\ & (\input_a[6]~input_o\ & \input_b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder6|cout~0_combout\,
	datac => \input_a[6]~input_o\,
	datad => \input_b[6]~input_o\,
	combout => \adder7|cout~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\input_b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b(7),
	o => \input_b[7]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\input_a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_a(7),
	o => \input_a[7]~input_o\);

-- Location: LCCOMB_X114_Y22_N12
\adder8|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder8|cout~0_combout\ = (\adder7|cout~0_combout\ & ((\input_b[7]~input_o\) # (\input_a[7]~input_o\))) # (!\adder7|cout~0_combout\ & (\input_b[7]~input_o\ & \input_a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|cout~0_combout\,
	datab => \input_b[7]~input_o\,
	datac => \input_a[7]~input_o\,
	combout => \adder8|cout~0_combout\);

-- Location: LCCOMB_X114_Y22_N6
\adder7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder7|s~combout\ = \adder6|cout~0_combout\ $ (\input_a[6]~input_o\ $ (\input_b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder6|cout~0_combout\,
	datac => \input_a[6]~input_o\,
	datad => \input_b[6]~input_o\,
	combout => \adder7|s~combout\);

-- Location: LCCOMB_X114_Y22_N16
\adder6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder6|s~combout\ = \adder5|cout~0_combout\ $ (\input_b[5]~input_o\ $ (\input_a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder5|cout~0_combout\,
	datac => \input_b[5]~input_o\,
	datad => \input_a[5]~input_o\,
	combout => \adder6|s~combout\);

-- Location: LCCOMB_X114_Y18_N24
\adder5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder5|s~combout\ = \input_a[4]~input_o\ $ (\adder4|cout~0_combout\ $ (\input_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_a[4]~input_o\,
	datab => \adder4|cout~0_combout\,
	datad => \input_b[4]~input_o\,
	combout => \adder5|s~combout\);

-- Location: LCCOMB_X114_Y22_N2
\adder8|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder8|s~0_combout\ = \input_b[7]~input_o\ $ (\input_a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_b[7]~input_o\,
	datac => \input_a[7]~input_o\,
	combout => \adder8|s~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\adder8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder8|s~combout\ = \adder8|s~0_combout\ $ (((\input_b[6]~input_o\ & ((\adder6|cout~0_combout\) # (\input_a[6]~input_o\))) # (!\input_b[6]~input_o\ & (\adder6|cout~0_combout\ & \input_a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[6]~input_o\,
	datab => \adder6|cout~0_combout\,
	datac => \input_a[6]~input_o\,
	datad => \adder8|s~0_combout\,
	combout => \adder8|s~combout\);

-- Location: LCCOMB_X114_Y22_N22
\led1|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|g~0_combout\ = (\adder5|s~combout\ & (!\adder8|s~combout\ & (\adder7|s~combout\ $ (!\adder6|s~combout\)))) # (!\adder5|s~combout\ & (!\adder6|s~combout\ & (\adder7|s~combout\ $ (!\adder8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|g~0_combout\);

-- Location: LCCOMB_X114_Y22_N8
\led1|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|f~0_combout\ = (\adder7|s~combout\ & (\adder5|s~combout\ & (\adder6|s~combout\ $ (\adder8|s~combout\)))) # (!\adder7|s~combout\ & (!\adder8|s~combout\ & ((\adder6|s~combout\) # (\adder5|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|f~0_combout\);

-- Location: LCCOMB_X114_Y22_N18
\led1|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|e~0_combout\ = (\adder6|s~combout\ & (((\adder5|s~combout\ & !\adder8|s~combout\)))) # (!\adder6|s~combout\ & ((\adder7|s~combout\ & ((!\adder8|s~combout\))) # (!\adder7|s~combout\ & (\adder5|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|e~0_combout\);

-- Location: LCCOMB_X114_Y22_N20
\led1|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|d~0_combout\ = (\adder6|s~combout\ & ((\adder7|s~combout\ & (\adder5|s~combout\)) # (!\adder7|s~combout\ & (!\adder5|s~combout\ & \adder8|s~combout\)))) # (!\adder6|s~combout\ & (!\adder8|s~combout\ & (\adder7|s~combout\ $ (\adder5|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|d~0_combout\);

-- Location: LCCOMB_X114_Y22_N30
\led1|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|c~0_combout\ = (\adder7|s~combout\ & (\adder8|s~combout\ & ((\adder6|s~combout\) # (!\adder5|s~combout\)))) # (!\adder7|s~combout\ & (\adder6|s~combout\ & (!\adder5|s~combout\ & !\adder8|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|c~0_combout\);

-- Location: LCCOMB_X114_Y22_N0
\led1|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|b~0_combout\ = (\adder6|s~combout\ & ((\adder5|s~combout\ & ((\adder8|s~combout\))) # (!\adder5|s~combout\ & (\adder7|s~combout\)))) # (!\adder6|s~combout\ & (\adder7|s~combout\ & (\adder5|s~combout\ $ (\adder8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|b~0_combout\);

-- Location: LCCOMB_X114_Y22_N10
\led1|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1|a~0_combout\ = (\adder7|s~combout\ & (!\adder6|s~combout\ & (\adder5|s~combout\ $ (!\adder8|s~combout\)))) # (!\adder7|s~combout\ & (\adder5|s~combout\ & (\adder6|s~combout\ $ (!\adder8|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder7|s~combout\,
	datab => \adder6|s~combout\,
	datac => \adder5|s~combout\,
	datad => \adder8|s~combout\,
	combout => \led1|a~0_combout\);

-- Location: LCCOMB_X114_Y18_N6
\adder2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder2|s~0_combout\ = \input_a[1]~input_o\ $ (\input_b[1]~input_o\ $ (((\input_b[0]~input_o\ & \input_a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_b[0]~input_o\,
	datab => \input_a[1]~input_o\,
	datac => \input_a[0]~input_o\,
	datad => \input_b[1]~input_o\,
	combout => \adder2|s~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\adder4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder4|s~combout\ = \adder3|cout~0_combout\ $ (\input_b[3]~input_o\ $ (\input_a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder3|cout~0_combout\,
	datac => \input_b[3]~input_o\,
	datad => \input_a[3]~input_o\,
	combout => \adder4|s~combout\);

-- Location: LCCOMB_X114_Y18_N26
\adder3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder3|s~0_combout\ = \adder2|cout~0_combout\ $ (\input_b[2]~input_o\ $ (\input_a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder2|cout~0_combout\,
	datac => \input_b[2]~input_o\,
	datad => \input_a[2]~input_o\,
	combout => \adder3|s~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\adder1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|s~0_combout\ = \input_a[0]~input_o\ $ (\input_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_a[0]~input_o\,
	datad => \input_b[0]~input_o\,
	combout => \adder1|s~0_combout\);

-- Location: LCCOMB_X114_Y18_N10
\led2|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|g~0_combout\ = (\adder1|s~0_combout\ & (!\adder4|s~combout\ & (\adder2|s~0_combout\ $ (!\adder3|s~0_combout\)))) # (!\adder1|s~0_combout\ & (!\adder2|s~0_combout\ & (\adder4|s~combout\ $ (!\adder3|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|g~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\led2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|f~0_combout\ = (\adder2|s~0_combout\ & (!\adder4|s~combout\ & ((\adder1|s~0_combout\) # (!\adder3|s~0_combout\)))) # (!\adder2|s~0_combout\ & (\adder1|s~0_combout\ & (\adder4|s~combout\ $ (!\adder3|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|f~0_combout\);

-- Location: LCCOMB_X114_Y18_N14
\led2|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|e~0_combout\ = (\adder2|s~0_combout\ & (!\adder4|s~combout\ & ((\adder1|s~0_combout\)))) # (!\adder2|s~0_combout\ & ((\adder3|s~0_combout\ & (!\adder4|s~combout\)) # (!\adder3|s~0_combout\ & ((\adder1|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|e~0_combout\);

-- Location: LCCOMB_X114_Y18_N16
\led2|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|d~0_combout\ = (\adder2|s~0_combout\ & ((\adder3|s~0_combout\ & ((\adder1|s~0_combout\))) # (!\adder3|s~0_combout\ & (\adder4|s~combout\ & !\adder1|s~0_combout\)))) # (!\adder2|s~0_combout\ & (!\adder4|s~combout\ & (\adder3|s~0_combout\ $ 
-- (\adder1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|d~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\led2|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|c~0_combout\ = (\adder4|s~combout\ & (\adder3|s~0_combout\ & ((\adder2|s~0_combout\) # (!\adder1|s~0_combout\)))) # (!\adder4|s~combout\ & (\adder2|s~0_combout\ & (!\adder3|s~0_combout\ & !\adder1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|c~0_combout\);

-- Location: LCCOMB_X114_Y18_N4
\led2|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|b~0_combout\ = (\adder2|s~0_combout\ & ((\adder1|s~0_combout\ & (\adder4|s~combout\)) # (!\adder1|s~0_combout\ & ((\adder3|s~0_combout\))))) # (!\adder2|s~0_combout\ & (\adder3|s~0_combout\ & (\adder4|s~combout\ $ (\adder1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|b~0_combout\);

-- Location: LCCOMB_X114_Y18_N30
\led2|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2|a~0_combout\ = (\adder4|s~combout\ & (\adder1|s~0_combout\ & (\adder2|s~0_combout\ $ (\adder3|s~0_combout\)))) # (!\adder4|s~combout\ & (!\adder2|s~0_combout\ & (\adder3|s~0_combout\ $ (\adder1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|s~0_combout\,
	datab => \adder4|s~combout\,
	datac => \adder3|s~0_combout\,
	datad => \adder1|s~0_combout\,
	combout => \led2|a~0_combout\);

ww_cout <= \cout~output_o\;

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


