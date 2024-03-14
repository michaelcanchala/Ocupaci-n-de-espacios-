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

-- DATE "03/13/2024 20:14:20"

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

ENTITY 	Espacio_Ocupado IS
    PORT (
	clk : IN std_logic;
	persona_sale : IN std_logic;
	alarma : BUFFER std_logic
	);
END Espacio_Ocupado;

-- Design Ports Information
-- alarma	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- persona_sale	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Espacio_Ocupado IS
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
SIGNAL ww_persona_sale : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL \persona_sale~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_persona_sale <= persona_sale;
alarma <= ww_alarma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X41_Y21_N23
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOIBUF_X41_Y25_N8
\persona_sale~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_persona_sale,
	o => \persona_sale~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_alarma <= \alarma~output_o\;
END structure;


