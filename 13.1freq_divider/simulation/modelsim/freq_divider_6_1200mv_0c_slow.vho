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

-- DATE "03/10/2024 23:11:19"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	freq_divider IS
    PORT (
	clk : IN std_logic;
	enciende_apaga : IN std_logic;
	reinicia : IN std_logic;
	C_out : OUT std_logic_vector(5 DOWNTO 0)
	);
END freq_divider;

-- Design Ports Information
-- clk	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enciende_apaga	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reinicia	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF freq_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enciende_apaga : std_logic;
SIGNAL ww_reinicia : std_logic;
SIGNAL ww_C_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enciende_apaga~input_o\ : std_logic;
SIGNAL \reinicia~input_o\ : std_logic;
SIGNAL \C_out[0]~output_o\ : std_logic;
SIGNAL \C_out[1]~output_o\ : std_logic;
SIGNAL \C_out[2]~output_o\ : std_logic;
SIGNAL \C_out[3]~output_o\ : std_logic;
SIGNAL \C_out[4]~output_o\ : std_logic;
SIGNAL \C_out[5]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enciende_apaga <= enciende_apaga;
ww_reinicia <= reinicia;
C_out <= ww_C_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y29_N23
\C_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \C_out[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\C_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \C_out[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\C_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C_out[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\C_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C_out[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\C_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C_out[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\C_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \C_out[5]~output_o\);

-- Location: IOIBUF_X41_Y19_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\enciende_apaga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enciende_apaga,
	o => \enciende_apaga~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\reinicia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reinicia,
	o => \reinicia~input_o\);

ww_C_out(0) <= \C_out[0]~output_o\;

ww_C_out(1) <= \C_out[1]~output_o\;

ww_C_out(2) <= \C_out[2]~output_o\;

ww_C_out(3) <= \C_out[3]~output_o\;

ww_C_out(4) <= \C_out[4]~output_o\;

ww_C_out(5) <= \C_out[5]~output_o\;
END structure;


