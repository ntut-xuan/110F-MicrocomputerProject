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

-- DATE "09/29/2021 17:30:49"

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
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	seven_segment IS
    PORT (
	W : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	Z : IN std_logic;
	a : OUT STD.STANDARD.bit;
	b : OUT STD.STANDARD.bit;
	c : OUT STD.STANDARD.bit;
	d : OUT STD.STANDARD.bit;
	e : OUT STD.STANDARD.bit;
	f : OUT STD.STANDARD.bit;
	g : OUT STD.STANDARD.bit
	);
END seven_segment;

-- Design Ports Information
-- a	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_segment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_W <= W;
ww_X <= X;
ww_Y <= Y;
ww_Z <= Z;
a <= IEEE.STD_LOGIC_1164.TO_BIT(ww_a);
b <= IEEE.STD_LOGIC_1164.TO_BIT(ww_b);
c <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c);
d <= IEEE.STD_LOGIC_1164.TO_BIT(ww_d);
e <= IEEE.STD_LOGIC_1164.TO_BIT(ww_e);
f <= IEEE.STD_LOGIC_1164.TO_BIT(ww_f);
g <= IEEE.STD_LOGIC_1164.TO_BIT(ww_g);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_process_0~8_combout\ <= NOT \process_0~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~9_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~4_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~5_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~10_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~6_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~7_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_0~8_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\Y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X114_Y54_N26
\process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\X~input_o\ & (!\Y~input_o\ & (\W~input_o\ $ (!\Z~input_o\)))) # (!\X~input_o\ & (\Z~input_o\ & (\Y~input_o\ $ (!\W~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X114_Y54_N8
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\Y~input_o\ & ((\Z~input_o\ & ((\W~input_o\))) # (!\Z~input_o\ & (\X~input_o\)))) # (!\Y~input_o\ & (\X~input_o\ & (\W~input_o\ $ (\Z~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X114_Y54_N2
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\X~input_o\ & (\W~input_o\ & ((\Y~input_o\) # (!\Z~input_o\)))) # (!\X~input_o\ & (\Y~input_o\ & (!\W~input_o\ & !\Z~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X114_Y54_N28
\process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\Z~input_o\ & (\Y~input_o\ $ ((!\X~input_o\)))) # (!\Z~input_o\ & ((\Y~input_o\ & (!\X~input_o\ & \W~input_o\)) # (!\Y~input_o\ & (\X~input_o\ & !\W~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X114_Y54_N12
\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\Y~input_o\ & (((!\W~input_o\ & \Z~input_o\)))) # (!\Y~input_o\ & ((\X~input_o\ & (!\W~input_o\)) # (!\X~input_o\ & ((\Z~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X114_Y54_N14
\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\Y~input_o\ & (!\W~input_o\ & ((\Z~input_o\) # (!\X~input_o\)))) # (!\Y~input_o\ & (\Z~input_o\ & (\X~input_o\ $ (!\W~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X114_Y54_N0
\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\Z~input_o\ & ((\W~input_o\) # (\Y~input_o\ $ (\X~input_o\)))) # (!\Z~input_o\ & ((\Y~input_o\) # (\X~input_o\ $ (\W~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \W~input_o\,
	datad => \Z~input_o\,
	combout => \process_0~8_combout\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


