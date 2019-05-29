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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "09/06/2018 18:53:13"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	key_led IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0)
	);
END key_led;

-- Design Ports Information
-- led[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst_n	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF key_led IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst_n : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \cnt[0]~24_combout\ : std_logic;
SIGNAL \sys_rst_n~input_o\ : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[6]~37\ : std_logic;
SIGNAL \cnt[7]~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \cnt[7]~39\ : std_logic;
SIGNAL \cnt[8]~40_combout\ : std_logic;
SIGNAL \cnt[8]~41\ : std_logic;
SIGNAL \cnt[9]~42_combout\ : std_logic;
SIGNAL \cnt[9]~43\ : std_logic;
SIGNAL \cnt[10]~44_combout\ : std_logic;
SIGNAL \cnt[10]~45\ : std_logic;
SIGNAL \cnt[11]~46_combout\ : std_logic;
SIGNAL \cnt[11]~47\ : std_logic;
SIGNAL \cnt[12]~48_combout\ : std_logic;
SIGNAL \cnt[12]~49\ : std_logic;
SIGNAL \cnt[13]~50_combout\ : std_logic;
SIGNAL \cnt[13]~51\ : std_logic;
SIGNAL \cnt[14]~52_combout\ : std_logic;
SIGNAL \cnt[14]~53\ : std_logic;
SIGNAL \cnt[15]~54_combout\ : std_logic;
SIGNAL \cnt[15]~55\ : std_logic;
SIGNAL \cnt[16]~56_combout\ : std_logic;
SIGNAL \cnt[16]~57\ : std_logic;
SIGNAL \cnt[17]~58_combout\ : std_logic;
SIGNAL \cnt[17]~59\ : std_logic;
SIGNAL \cnt[18]~60_combout\ : std_logic;
SIGNAL \cnt[18]~61\ : std_logic;
SIGNAL \cnt[19]~62_combout\ : std_logic;
SIGNAL \cnt[19]~63\ : std_logic;
SIGNAL \cnt[20]~64_combout\ : std_logic;
SIGNAL \cnt[20]~65\ : std_logic;
SIGNAL \cnt[21]~66_combout\ : std_logic;
SIGNAL \cnt[21]~67\ : std_logic;
SIGNAL \cnt[22]~68_combout\ : std_logic;
SIGNAL \cnt[22]~69\ : std_logic;
SIGNAL \cnt[23]~70_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \cnt[0]~25\ : std_logic;
SIGNAL \cnt[1]~26_combout\ : std_logic;
SIGNAL \cnt[1]~27\ : std_logic;
SIGNAL \cnt[2]~28_combout\ : std_logic;
SIGNAL \cnt[2]~29\ : std_logic;
SIGNAL \cnt[3]~30_combout\ : std_logic;
SIGNAL \cnt[3]~31\ : std_logic;
SIGNAL \cnt[4]~32_combout\ : std_logic;
SIGNAL \cnt[4]~33\ : std_logic;
SIGNAL \cnt[5]~34_combout\ : std_logic;
SIGNAL \cnt[5]~35\ : std_logic;
SIGNAL \cnt[6]~36_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \led_control[0]~1_combout\ : std_logic;
SIGNAL \led~4_combout\ : std_logic;
SIGNAL \led_control[1]~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \led[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \led[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \led[1]~1_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \led[2]~2_combout\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \led[3]~3_combout\ : std_logic;
SIGNAL \Decoder0~0_wirecell_combout\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;
SIGNAL led_control : std_logic_vector(1 DOWNTO 0);
SIGNAL cnt : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst_n <= sys_rst_n;
ww_key <= key;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~input_o\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;

-- Location: IOOBUF_X32_Y24_N23
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G2
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LCCOMB_X11_Y6_N8
\cnt[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~24_combout\ = !cnt(0)
-- \cnt[0]~25\ = CARRY(!cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	combout => \cnt[0]~24_combout\,
	cout => \cnt[0]~25\);

-- Location: IOIBUF_X0_Y11_N22
\sys_rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst_n,
	o => \sys_rst_n~input_o\);

-- Location: CLKCTRL_G3
\sys_rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y6_N20
\cnt[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~36_combout\ = (cnt(6) & (\cnt[5]~35\ & VCC)) # (!cnt(6) & (!\cnt[5]~35\))
-- \cnt[6]~37\ = CARRY((!cnt(6) & !\cnt[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \cnt[5]~35\,
	combout => \cnt[6]~36_combout\,
	cout => \cnt[6]~37\);

-- Location: LCCOMB_X11_Y6_N22
\cnt[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~38_combout\ = (cnt(7) & (!\cnt[6]~37\)) # (!cnt(7) & ((\cnt[6]~37\) # (GND)))
-- \cnt[7]~39\ = CARRY((!\cnt[6]~37\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~37\,
	combout => \cnt[7]~38_combout\,
	cout => \cnt[7]~39\);

-- Location: LCCOMB_X12_Y6_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X11_Y6_N23
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[7]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X11_Y6_N24
\cnt[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~40_combout\ = (cnt(8) & (\cnt[7]~39\ $ (GND))) # (!cnt(8) & (!\cnt[7]~39\ & VCC))
-- \cnt[8]~41\ = CARRY((cnt(8) & !\cnt[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \cnt[7]~39\,
	combout => \cnt[8]~40_combout\,
	cout => \cnt[8]~41\);

-- Location: FF_X11_Y6_N25
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[8]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X11_Y6_N26
\cnt[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~42_combout\ = (cnt(9) & ((GND) # (!\cnt[8]~41\))) # (!cnt(9) & (\cnt[8]~41\ $ (GND)))
-- \cnt[9]~43\ = CARRY((cnt(9)) # (!\cnt[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \cnt[8]~41\,
	combout => \cnt[9]~42_combout\,
	cout => \cnt[9]~43\);

-- Location: FF_X11_Y6_N27
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[9]~42_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X11_Y6_N28
\cnt[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[10]~44_combout\ = (cnt(10) & (\cnt[9]~43\ & VCC)) # (!cnt(10) & (!\cnt[9]~43\))
-- \cnt[10]~45\ = CARRY((!cnt(10) & !\cnt[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datad => VCC,
	cin => \cnt[9]~43\,
	combout => \cnt[10]~44_combout\,
	cout => \cnt[10]~45\);

-- Location: FF_X11_Y6_N29
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[10]~44_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X11_Y6_N30
\cnt[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[11]~46_combout\ = (cnt(11) & (!\cnt[10]~45\)) # (!cnt(11) & ((\cnt[10]~45\) # (GND)))
-- \cnt[11]~47\ = CARRY((!\cnt[10]~45\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~45\,
	combout => \cnt[11]~46_combout\,
	cout => \cnt[11]~47\);

-- Location: FF_X11_Y6_N31
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[11]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X11_Y5_N0
\cnt[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[12]~48_combout\ = (cnt(12) & (\cnt[11]~47\ & VCC)) # (!cnt(12) & (!\cnt[11]~47\))
-- \cnt[12]~49\ = CARRY((!cnt(12) & !\cnt[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~47\,
	combout => \cnt[12]~48_combout\,
	cout => \cnt[12]~49\);

-- Location: FF_X11_Y5_N1
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[12]~48_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X11_Y5_N2
\cnt[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[13]~50_combout\ = (cnt(13) & (!\cnt[12]~49\)) # (!cnt(13) & ((\cnt[12]~49\) # (GND)))
-- \cnt[13]~51\ = CARRY((!\cnt[12]~49\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \cnt[12]~49\,
	combout => \cnt[13]~50_combout\,
	cout => \cnt[13]~51\);

-- Location: FF_X11_Y5_N3
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[13]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X11_Y5_N4
\cnt[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[14]~52_combout\ = (cnt(14) & (\cnt[13]~51\ $ (GND))) # (!cnt(14) & (!\cnt[13]~51\ & VCC))
-- \cnt[14]~53\ = CARRY((cnt(14) & !\cnt[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~51\,
	combout => \cnt[14]~52_combout\,
	cout => \cnt[14]~53\);

-- Location: FF_X11_Y5_N5
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[14]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X11_Y5_N6
\cnt[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[15]~54_combout\ = (cnt(15) & ((GND) # (!\cnt[14]~53\))) # (!cnt(15) & (\cnt[14]~53\ $ (GND)))
-- \cnt[15]~55\ = CARRY((cnt(15)) # (!\cnt[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \cnt[14]~53\,
	combout => \cnt[15]~54_combout\,
	cout => \cnt[15]~55\);

-- Location: FF_X11_Y5_N7
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[15]~54_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X11_Y5_N8
\cnt[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[16]~56_combout\ = (cnt(16) & (\cnt[15]~55\ $ (GND))) # (!cnt(16) & (!\cnt[15]~55\ & VCC))
-- \cnt[16]~57\ = CARRY((cnt(16) & !\cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datad => VCC,
	cin => \cnt[15]~55\,
	combout => \cnt[16]~56_combout\,
	cout => \cnt[16]~57\);

-- Location: FF_X11_Y5_N9
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[16]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X11_Y5_N10
\cnt[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[17]~58_combout\ = (cnt(17) & (!\cnt[16]~57\)) # (!cnt(17) & ((\cnt[16]~57\) # (GND)))
-- \cnt[17]~59\ = CARRY((!\cnt[16]~57\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \cnt[16]~57\,
	combout => \cnt[17]~58_combout\,
	cout => \cnt[17]~59\);

-- Location: FF_X11_Y5_N11
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[17]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X11_Y5_N12
\cnt[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[18]~60_combout\ = (cnt(18) & (\cnt[17]~59\ $ (GND))) # (!cnt(18) & (!\cnt[17]~59\ & VCC))
-- \cnt[18]~61\ = CARRY((cnt(18) & !\cnt[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datad => VCC,
	cin => \cnt[17]~59\,
	combout => \cnt[18]~60_combout\,
	cout => \cnt[18]~61\);

-- Location: FF_X11_Y5_N13
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[18]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X11_Y5_N14
\cnt[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[19]~62_combout\ = (cnt(19) & ((GND) # (!\cnt[18]~61\))) # (!cnt(19) & (\cnt[18]~61\ $ (GND)))
-- \cnt[19]~63\ = CARRY((cnt(19)) # (!\cnt[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \cnt[18]~61\,
	combout => \cnt[19]~62_combout\,
	cout => \cnt[19]~63\);

-- Location: FF_X11_Y5_N15
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[19]~62_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X11_Y5_N16
\cnt[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[20]~64_combout\ = (cnt(20) & (\cnt[19]~63\ & VCC)) # (!cnt(20) & (!\cnt[19]~63\))
-- \cnt[20]~65\ = CARRY((!cnt(20) & !\cnt[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \cnt[19]~63\,
	combout => \cnt[20]~64_combout\,
	cout => \cnt[20]~65\);

-- Location: FF_X11_Y5_N17
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[20]~64_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X11_Y5_N18
\cnt[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[21]~66_combout\ = (cnt(21) & (!\cnt[20]~65\)) # (!cnt(21) & ((\cnt[20]~65\) # (GND)))
-- \cnt[21]~67\ = CARRY((!\cnt[20]~65\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \cnt[20]~65\,
	combout => \cnt[21]~66_combout\,
	cout => \cnt[21]~67\);

-- Location: FF_X11_Y5_N19
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[21]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LCCOMB_X11_Y5_N20
\cnt[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[22]~68_combout\ = (cnt(22) & (\cnt[21]~67\ $ (GND))) # (!cnt(22) & (!\cnt[21]~67\ & VCC))
-- \cnt[22]~69\ = CARRY((cnt(22) & !\cnt[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datad => VCC,
	cin => \cnt[21]~67\,
	combout => \cnt[22]~68_combout\,
	cout => \cnt[22]~69\);

-- Location: FF_X11_Y5_N21
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[22]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LCCOMB_X11_Y5_N22
\cnt[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[23]~70_combout\ = cnt(23) $ (\cnt[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	cin => \cnt[22]~69\,
	combout => \cnt[23]~70_combout\);

-- Location: FF_X11_Y5_N23
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[23]~70_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LCCOMB_X11_Y5_N24
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (cnt(15)) # ((!cnt(13) & (!cnt(14) & cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datab => cnt(13),
	datac => cnt(14),
	datad => cnt(12),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y6_N20
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!cnt(11) & (!cnt(13) & !cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datac => cnt(13),
	datad => cnt(14),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y6_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~0_combout\ & ((cnt(10)) # (cnt(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(9),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y5_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!cnt(17) & (!cnt(22) & (!cnt(16) & !cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datab => cnt(22),
	datac => cnt(16),
	datad => cnt(21),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X11_Y5_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!cnt(18) & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X11_Y6_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt(8) & (!cnt(7) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => cnt(7),
	datad => \LessThan0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X11_Y6_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\Equal0~4_combout\ & ((\LessThan0~2_combout\) # ((!\Equal0~1_combout\ & \Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y5_N26
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!cnt(22) & (!cnt(21) & ((cnt(19)) # (cnt(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(22),
	datab => cnt(21),
	datac => cnt(19),
	datad => cnt(20),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y6_N2
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!cnt(23) & (!\LessThan0~3_combout\ & !\LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(23),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: FF_X11_Y6_N9
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[0]~24_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X11_Y6_N10
\cnt[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~26_combout\ = (cnt(1) & ((GND) # (!\cnt[0]~25\))) # (!cnt(1) & (\cnt[0]~25\ $ (GND)))
-- \cnt[1]~27\ = CARRY((cnt(1)) # (!\cnt[0]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \cnt[0]~25\,
	combout => \cnt[1]~26_combout\,
	cout => \cnt[1]~27\);

-- Location: FF_X11_Y6_N11
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[1]~26_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X11_Y6_N12
\cnt[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~28_combout\ = (cnt(2) & (\cnt[1]~27\ & VCC)) # (!cnt(2) & (!\cnt[1]~27\))
-- \cnt[2]~29\ = CARRY((!cnt(2) & !\cnt[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datad => VCC,
	cin => \cnt[1]~27\,
	combout => \cnt[2]~28_combout\,
	cout => \cnt[2]~29\);

-- Location: FF_X11_Y6_N13
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[2]~28_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X11_Y6_N14
\cnt[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~30_combout\ = (cnt(3) & ((GND) # (!\cnt[2]~29\))) # (!cnt(3) & (\cnt[2]~29\ $ (GND)))
-- \cnt[3]~31\ = CARRY((cnt(3)) # (!\cnt[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \cnt[2]~29\,
	combout => \cnt[3]~30_combout\,
	cout => \cnt[3]~31\);

-- Location: FF_X11_Y6_N15
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[3]~30_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X11_Y6_N16
\cnt[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~32_combout\ = (cnt(4) & (\cnt[3]~31\ & VCC)) # (!cnt(4) & (!\cnt[3]~31\))
-- \cnt[4]~33\ = CARRY((!cnt(4) & !\cnt[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~31\,
	combout => \cnt[4]~32_combout\,
	cout => \cnt[4]~33\);

-- Location: FF_X11_Y6_N17
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[4]~32_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X11_Y6_N18
\cnt[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~34_combout\ = (cnt(5) & ((GND) # (!\cnt[4]~33\))) # (!cnt(5) & (\cnt[4]~33\ $ (GND)))
-- \cnt[5]~35\ = CARRY((cnt(5)) # (!\cnt[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~33\,
	combout => \cnt[5]~34_combout\,
	cout => \cnt[5]~35\);

-- Location: FF_X11_Y6_N19
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[5]~34_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: FF_X11_Y6_N21
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[6]~36_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X10_Y6_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt(3) & (!cnt(2) & (!cnt(1) & !cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y6_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(6) & (!cnt(5) & (!cnt(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(5),
	datac => cnt(4),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y6_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!cnt(10) & (!cnt(12) & (!cnt(15) & !cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datab => cnt(12),
	datac => cnt(15),
	datad => cnt(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X10_Y6_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (!cnt(19) & (!cnt(23) & !cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => cnt(19),
	datac => cnt(23),
	datad => cnt(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X10_Y6_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~1_combout\ & (\Equal0~4_combout\ & (\Equal0~2_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X10_Y6_N26
\led_control[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_control[0]~1_combout\ = led_control(0) $ (\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_control(0),
	datad => \Equal0~7_combout\,
	combout => \led_control[0]~1_combout\);

-- Location: FF_X10_Y6_N27
\led_control[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led_control[0]~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_control(0));

-- Location: LCCOMB_X12_Y6_N2
\led~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~4_combout\ = (\key[2]~input_o\ & (\key[3]~input_o\)) # (!\key[2]~input_o\ & ((led_control(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[3]~input_o\,
	datac => \key[2]~input_o\,
	datad => led_control(0),
	combout => \led~4_combout\);

-- Location: LCCOMB_X10_Y6_N24
\led_control[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_control[1]~0_combout\ = led_control(1) $ (((led_control(0) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_control(0),
	datac => led_control(1),
	datad => \Equal0~7_combout\,
	combout => \led_control[1]~0_combout\);

-- Location: FF_X10_Y6_N25
\led_control[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led_control[1]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_control(1));

-- Location: LCCOMB_X12_Y6_N12
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (led_control(1)) # (led_control(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_control(1),
	datad => led_control(0),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X12_Y6_N20
\led[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[0]~0_combout\ = (\key[1]~input_o\ & (!\led~4_combout\)) # (!\key[1]~input_o\ & ((!\Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \led~4_combout\,
	datad => \Decoder0~0_combout\,
	combout => \led[0]~0_combout\);

-- Location: LCCOMB_X12_Y6_N4
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (led_control(1) & led_control(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_control(1),
	datad => led_control(0),
	combout => \Decoder0~1_combout\);

-- Location: IOIBUF_X34_Y12_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: FF_X12_Y6_N21
\led[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led[0]~0_combout\,
	asdata => \Decoder0~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \ALT_INV_key[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~reg0_q\);

-- Location: LCCOMB_X12_Y6_N22
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!led_control(1) & led_control(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_control(1),
	datad => led_control(0),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X12_Y6_N26
\led[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[1]~1_combout\ = (\key[1]~input_o\ & ((!\led~4_combout\))) # (!\key[1]~input_o\ & (\Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \key[1]~input_o\,
	datad => \led~4_combout\,
	combout => \led[1]~1_combout\);

-- Location: LCCOMB_X12_Y6_N28
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (led_control(1) & !led_control(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_control(1),
	datad => led_control(0),
	combout => \Decoder0~3_combout\);

-- Location: FF_X12_Y6_N27
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led[1]~1_combout\,
	asdata => \Decoder0~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \ALT_INV_key[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: LCCOMB_X12_Y6_N0
\led[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[2]~2_combout\ = (\key[1]~input_o\ & (!\led~4_combout\)) # (!\key[1]~input_o\ & ((\Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \led~4_combout\,
	datad => \Decoder0~3_combout\,
	combout => \led[2]~2_combout\);

-- Location: FF_X12_Y6_N1
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led[2]~2_combout\,
	asdata => \Decoder0~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \ALT_INV_key[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: LCCOMB_X12_Y6_N18
\led[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[3]~3_combout\ = (\key[1]~input_o\ & ((!\led~4_combout\))) # (!\key[1]~input_o\ & (\Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \Decoder0~1_combout\,
	datad => \led~4_combout\,
	combout => \led[3]~3_combout\);

-- Location: LCCOMB_X12_Y6_N8
\Decoder0~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_wirecell_combout\ = !\Decoder0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~0_wirecell_combout\);

-- Location: FF_X12_Y6_N19
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led[3]~3_combout\,
	asdata => \Decoder0~0_wirecell_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \ALT_INV_key[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


