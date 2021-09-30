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

-- DATE "10/01/2021 00:07:05"

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

ENTITY 	seven_segment IS
    PORT (
	W : IN std_logic_vector(1 DOWNTO 0);
	X : IN std_logic_vector(1 DOWNTO 0);
	Y : IN std_logic_vector(1 DOWNTO 0);
	Z : IN std_logic_vector(1 DOWNTO 0);
	a : BUFFER std_logic_vector(1 DOWNTO 0);
	b : BUFFER std_logic_vector(1 DOWNTO 0);
	c : BUFFER std_logic_vector(1 DOWNTO 0);
	d : BUFFER std_logic_vector(1 DOWNTO 0);
	e : BUFFER std_logic_vector(1 DOWNTO 0);
	f : BUFFER std_logic_vector(1 DOWNTO 0);
	g : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END seven_segment;

-- Design Ports Information
-- a[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[0]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_W : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_e : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(1 DOWNTO 0);
SIGNAL \a[0]~output_o\ : std_logic;
SIGNAL \a[1]~output_o\ : std_logic;
SIGNAL \b[0]~output_o\ : std_logic;
SIGNAL \b[1]~output_o\ : std_logic;
SIGNAL \c[0]~output_o\ : std_logic;
SIGNAL \c[1]~output_o\ : std_logic;
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \e[0]~output_o\ : std_logic;
SIGNAL \e[1]~output_o\ : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \g[0]~output_o\ : std_logic;
SIGNAL \g[1]~output_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \W[0]~input_o\ : std_logic;
SIGNAL \Z[0]~input_o\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \W[1]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Z[1]~input_o\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~17_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~16_combout\ : std_logic;

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
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_process_0~17_combout\ <= NOT \process_0~17_combout\;
\ALT_INV_process_0~16_combout\ <= NOT \process_0~16_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~18_combout\,
	devoe => ww_devoe,
	o => \a[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~20_combout\,
	devoe => ww_devoe,
	o => \a[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~8_combout\,
	devoe => ww_devoe,
	o => \b[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~9_combout\,
	devoe => ww_devoe,
	o => \b[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\c[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~10_combout\,
	devoe => ww_devoe,
	o => \c[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\c[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~11_combout\,
	devoe => ww_devoe,
	o => \c[1]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~19_combout\,
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~21_combout\,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\e[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~12_combout\,
	devoe => ww_devoe,
	o => \e[0]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\e[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~13_combout\,
	devoe => ww_devoe,
	o => \e[1]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\f[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~14_combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\f[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~15_combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\g[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_0~16_combout\,
	devoe => ww_devoe,
	o => \g[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\g[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_0~17_combout\,
	devoe => ww_devoe,
	o => \g[1]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\W[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(0),
	o => \W[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\Z[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(0),
	o => \Z[0]~input_o\);

-- Location: LCCOMB_X114_Y54_N26
\process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\X[0]~input_o\ & (!\Y[0]~input_o\ & (\W[0]~input_o\ $ (!\Z[0]~input_o\)))) # (!\X[0]~input_o\ & (\Z[0]~input_o\ & (\Y[0]~input_o\ $ (!\W[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~18_combout\);

-- Location: IOIBUF_X115_Y15_N1
\W[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(1),
	o => \W[1]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\Z[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(1),
	o => \Z[1]~input_o\);

-- Location: LCCOMB_X114_Y22_N10
\process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (\W[1]~input_o\ & (\Z[1]~input_o\ & (\Y[1]~input_o\ $ (\X[1]~input_o\)))) # (!\W[1]~input_o\ & (!\Y[1]~input_o\ & (\X[1]~input_o\ $ (\Z[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X114_Y54_N8
\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\Y[0]~input_o\ & ((\Z[0]~input_o\ & ((\W[0]~input_o\))) # (!\Z[0]~input_o\ & (\X[0]~input_o\)))) # (!\Y[0]~input_o\ & (\X[0]~input_o\ & (\W[0]~input_o\ $ (\Z[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X114_Y22_N0
\process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\W[1]~input_o\ & ((\Z[1]~input_o\ & (\Y[1]~input_o\)) # (!\Z[1]~input_o\ & ((\X[1]~input_o\))))) # (!\W[1]~input_o\ & (\X[1]~input_o\ & (\Y[1]~input_o\ $ (\Z[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X114_Y54_N2
\process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\X[0]~input_o\ & (\W[0]~input_o\ & ((\Y[0]~input_o\) # (!\Z[0]~input_o\)))) # (!\X[0]~input_o\ & (\Y[0]~input_o\ & (!\W[0]~input_o\ & !\Z[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X114_Y22_N26
\process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\W[1]~input_o\ & (\X[1]~input_o\ & ((\Y[1]~input_o\) # (!\Z[1]~input_o\)))) # (!\W[1]~input_o\ & (\Y[1]~input_o\ & (!\X[1]~input_o\ & !\Z[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X114_Y54_N28
\process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\Z[0]~input_o\ & (\Y[0]~input_o\ $ ((!\X[0]~input_o\)))) # (!\Z[0]~input_o\ & ((\Y[0]~input_o\ & (!\X[0]~input_o\ & \W[0]~input_o\)) # (!\Y[0]~input_o\ & (\X[0]~input_o\ & !\W[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~19_combout\);

-- Location: LCCOMB_X114_Y22_N4
\process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (\Z[1]~input_o\ & ((\Y[1]~input_o\ $ (!\X[1]~input_o\)))) # (!\Z[1]~input_o\ & ((\W[1]~input_o\ & (\Y[1]~input_o\ & !\X[1]~input_o\)) # (!\W[1]~input_o\ & (!\Y[1]~input_o\ & \X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~21_combout\);

-- Location: LCCOMB_X114_Y54_N12
\process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\Y[0]~input_o\ & (((!\W[0]~input_o\ & \Z[0]~input_o\)))) # (!\Y[0]~input_o\ & ((\X[0]~input_o\ & (!\W[0]~input_o\)) # (!\X[0]~input_o\ & ((\Z[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X114_Y22_N28
\process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (\Y[1]~input_o\ & (!\W[1]~input_o\ & ((\Z[1]~input_o\)))) # (!\Y[1]~input_o\ & ((\X[1]~input_o\ & (!\W[1]~input_o\)) # (!\X[1]~input_o\ & ((\Z[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X114_Y54_N14
\process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\Y[0]~input_o\ & (!\W[0]~input_o\ & ((\Z[0]~input_o\) # (!\X[0]~input_o\)))) # (!\Y[0]~input_o\ & (\Z[0]~input_o\ & (\X[0]~input_o\ $ (!\W[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X114_Y22_N14
\process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\Y[1]~input_o\ & (!\W[1]~input_o\ & ((\Z[1]~input_o\) # (!\X[1]~input_o\)))) # (!\Y[1]~input_o\ & (\Z[1]~input_o\ & (\W[1]~input_o\ $ (!\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X114_Y54_N0
\process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\Z[0]~input_o\ & ((\W[0]~input_o\) # (\Y[0]~input_o\ $ (\X[0]~input_o\)))) # (!\Z[0]~input_o\ & ((\Y[0]~input_o\) # (\X[0]~input_o\ $ (\W[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datac => \W[0]~input_o\,
	datad => \Z[0]~input_o\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X114_Y22_N24
\process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (\Z[1]~input_o\ & ((\W[1]~input_o\) # (\Y[1]~input_o\ $ (\X[1]~input_o\)))) # (!\Z[1]~input_o\ & ((\Y[1]~input_o\) # (\W[1]~input_o\ $ (\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Z[1]~input_o\,
	combout => \process_0~17_combout\);

ww_a(0) <= \a[0]~output_o\;

ww_a(1) <= \a[1]~output_o\;

ww_b(0) <= \b[0]~output_o\;

ww_b(1) <= \b[1]~output_o\;

ww_c(0) <= \c[0]~output_o\;

ww_c(1) <= \c[1]~output_o\;

ww_d(0) <= \d[0]~output_o\;

ww_d(1) <= \d[1]~output_o\;

ww_e(0) <= \e[0]~output_o\;

ww_e(1) <= \e[1]~output_o\;

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_g(0) <= \g[0]~output_o\;

ww_g(1) <= \g[1]~output_o\;
END structure;


