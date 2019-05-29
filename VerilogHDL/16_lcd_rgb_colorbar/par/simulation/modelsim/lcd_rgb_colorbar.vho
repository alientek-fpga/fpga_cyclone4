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

-- DATE "08/29/2018 08:37:43"

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

ENTITY 	lcd_rgb_colorbar IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	lcd_hs : OUT std_logic;
	lcd_vs : OUT std_logic;
	lcd_de : OUT std_logic;
	lcd_rgb : OUT std_logic_vector(15 DOWNTO 0);
	lcd_bl : OUT std_logic;
	lcd_rst : OUT std_logic;
	lcd_pclk : OUT std_logic
	);
END lcd_rgb_colorbar;

-- Design Ports Information
-- lcd_hs	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_vs	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_de	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[6]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[12]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rgb[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_bl	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rst	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_pclk	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst_n	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lcd_rgb_colorbar IS
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
SIGNAL ww_lcd_hs : std_logic;
SIGNAL ww_lcd_vs : std_logic;
SIGNAL ww_lcd_de : std_logic;
SIGNAL ww_lcd_rgb : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_lcd_bl : std_logic;
SIGNAL ww_lcd_rst : std_logic;
SIGNAL ww_lcd_pclk : std_logic;
SIGNAL \u_lcd_pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n_w~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_rst_n~input_o\ : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \u_lcd_pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[0]~11_combout\ : std_logic;
SIGNAL \u_lcd_pll|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \rst_n_w~0_combout\ : std_logic;
SIGNAL \rst_n_w~0clkctrl_outclk\ : std_logic;
SIGNAL \u_lcd_driver|LessThan7~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[7]~26\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[8]~27_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[0]~11_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[3]~18\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[4]~19_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[4]~20\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[5]~21_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[5]~22\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[6]~23_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[6]~24\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[7]~25_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[7]~26\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[8]~27_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[8]~28\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[9]~29_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[9]~30\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[10]~31_combout\ : std_logic;
SIGNAL \u_lcd_driver|Equal0~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|LessThan6~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[0]~12\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[1]~13_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[1]~14\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[2]~15_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[2]~16\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[3]~17_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|Equal0~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|Equal0~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|LessThan7~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[8]~28\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[9]~29_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[9]~30\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[10]~31_combout\ : std_logic;
SIGNAL \u_lcd_driver|LessThan7~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[0]~12\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[1]~13_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[1]~14\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[2]~15_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[2]~16\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[3]~17_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[3]~18\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[4]~19_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[4]~20\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[5]~21_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[5]~22\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[6]~23_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[6]~24\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[7]~25_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_en~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_en~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~5_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~1_cout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~3_cout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~5_cout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~7_cout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~9\ : std_logic;
SIGNAL \u_lcd_driver|Add0~11\ : std_logic;
SIGNAL \u_lcd_driver|Add0~13\ : std_logic;
SIGNAL \u_lcd_driver|Add0~15\ : std_logic;
SIGNAL \u_lcd_driver|Add0~16_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~12_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~8_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~10_combout\ : std_logic;
SIGNAL \u_lcd_display|LessThan2~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~14_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|LessThan4~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~5_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~6_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~7_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_rgb[0]~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|pixel_xpos[9]~0_combout\ : std_logic;
SIGNAL \u_lcd_display|LessThan6~0_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data[0]~4_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~5_combout\ : std_logic;
SIGNAL \u_lcd_display|LessThan2~1_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~6_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_rgb[5]~1_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~8_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~7_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_rgb[11]~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_lcd_driver|cnt_h\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_lcd_display|pixel_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst_n_w~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sys_rst_n~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst_n <= sys_rst_n;
lcd_hs <= ww_lcd_hs;
lcd_vs <= ww_lcd_vs;
lcd_de <= ww_lcd_de;
lcd_rgb <= ww_lcd_rgb;
lcd_bl <= ww_lcd_bl;
lcd_rst <= ww_lcd_rst;
lcd_pclk <= ww_lcd_pclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_lcd_pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \sys_clk~input_o\);

\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\(0));

\sys_rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~input_o\);

\rst_n_w~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n_w~0_combout\);
\ALT_INV_rst_n_w~0clkctrl_outclk\ <= NOT \rst_n_w~0clkctrl_outclk\;
\ALT_INV_sys_rst_n~inputclkctrl_outclk\ <= NOT \sys_rst_n~inputclkctrl_outclk\;

-- Location: IOOBUF_X1_Y0_N2
\lcd_hs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_lcd_hs);

-- Location: IOOBUF_X1_Y0_N16
\lcd_vs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_lcd_vs);

-- Location: IOOBUF_X3_Y0_N2
\lcd_de~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_de~5_combout\,
	devoe => ww_devoe,
	o => ww_lcd_de);

-- Location: IOOBUF_X11_Y0_N16
\lcd_rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(0));

-- Location: IOOBUF_X9_Y0_N9
\lcd_rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(1));

-- Location: IOOBUF_X9_Y0_N2
\lcd_rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(2));

-- Location: IOOBUF_X5_Y0_N23
\lcd_rgb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(3));

-- Location: IOOBUF_X5_Y0_N16
\lcd_rgb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(4));

-- Location: IOOBUF_X18_Y0_N16
\lcd_rgb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(5));

-- Location: IOOBUF_X16_Y0_N9
\lcd_rgb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(6));

-- Location: IOOBUF_X16_Y0_N2
\lcd_rgb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(7));

-- Location: IOOBUF_X11_Y0_N2
\lcd_rgb[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(8));

-- Location: IOOBUF_X13_Y0_N23
\lcd_rgb[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(9));

-- Location: IOOBUF_X11_Y0_N23
\lcd_rgb[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(10));

-- Location: IOOBUF_X23_Y0_N16
\lcd_rgb[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[11]~2_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(11));

-- Location: IOOBUF_X23_Y0_N9
\lcd_rgb[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[11]~2_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(12));

-- Location: IOOBUF_X21_Y0_N9
\lcd_rgb[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[11]~2_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(13));

-- Location: IOOBUF_X21_Y0_N2
\lcd_rgb[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[11]~2_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(14));

-- Location: IOOBUF_X18_Y0_N23
\lcd_rgb[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_driver|lcd_rgb[11]~2_combout\,
	devoe => ww_devoe,
	o => ww_lcd_rgb(15));

-- Location: IOOBUF_X0_Y5_N23
\lcd_bl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_lcd_bl);

-- Location: IOOBUF_X0_Y8_N23
\lcd_rst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_lcd_rst);

-- Location: IOOBUF_X1_Y0_N9
\lcd_pclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_lcd_pclk);

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

-- Location: CLKCTRL_G0
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

-- Location: PLL_1
\u_lcd_pll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "low",
	c0_high => 19,
	c0_initial => 1,
	c0_low => 19,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 380,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 253,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 8,
	m => 253,
	m_initial => 1,
	m_ph => 0,
	n => 10,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6749,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 769,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 1666,
	vco_min => 769,
	vco_multiply_by => 0,
	vco_phase_shift_step => 98,
	vco_post_scale => 1)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_sys_rst_n~inputclkctrl_outclk\,
	fbin => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u_lcd_pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u_lcd_pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N8
\u_lcd_driver|cnt_v[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[0]~11_combout\ = \u_lcd_driver|cnt_v\(0) $ (VCC)
-- \u_lcd_driver|cnt_v[0]~12\ = CARRY(\u_lcd_driver|cnt_v\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(0),
	datad => VCC,
	combout => \u_lcd_driver|cnt_v[0]~11_combout\,
	cout => \u_lcd_driver|cnt_v[0]~12\);

-- Location: LCCOMB_X6_Y11_N0
\u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X6_Y11_N1
\u_lcd_pll|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_locked\,
	d => \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X6_Y11_N2
\rst_n_w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rst_n_w~0_combout\ = ((!\u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~q\) # (!\u_lcd_pll|altpll_component|auto_generated|wire_pll1_locked\)) # (!\sys_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_rst_n~input_o\,
	datac => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \u_lcd_pll|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \rst_n_w~0_combout\);

-- Location: CLKCTRL_G2
\rst_n_w~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n_w~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n_w~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y19_N28
\u_lcd_driver|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan7~1_combout\ = (!\u_lcd_driver|cnt_v\(4) & ((!\u_lcd_driver|cnt_v\(3)) # (!\u_lcd_driver|cnt_v\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(2),
	datac => \u_lcd_driver|cnt_v\(4),
	datad => \u_lcd_driver|cnt_v\(3),
	combout => \u_lcd_driver|LessThan7~1_combout\);

-- Location: LCCOMB_X21_Y19_N22
\u_lcd_driver|cnt_v[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[7]~25_combout\ = (\u_lcd_driver|cnt_v\(7) & (!\u_lcd_driver|cnt_v[6]~24\)) # (!\u_lcd_driver|cnt_v\(7) & ((\u_lcd_driver|cnt_v[6]~24\) # (GND)))
-- \u_lcd_driver|cnt_v[7]~26\ = CARRY((!\u_lcd_driver|cnt_v[6]~24\) # (!\u_lcd_driver|cnt_v\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(7),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[6]~24\,
	combout => \u_lcd_driver|cnt_v[7]~25_combout\,
	cout => \u_lcd_driver|cnt_v[7]~26\);

-- Location: LCCOMB_X21_Y19_N24
\u_lcd_driver|cnt_v[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[8]~27_combout\ = (\u_lcd_driver|cnt_v\(8) & (\u_lcd_driver|cnt_v[7]~26\ $ (GND))) # (!\u_lcd_driver|cnt_v\(8) & (!\u_lcd_driver|cnt_v[7]~26\ & VCC))
-- \u_lcd_driver|cnt_v[8]~28\ = CARRY((\u_lcd_driver|cnt_v\(8) & !\u_lcd_driver|cnt_v[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(8),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[7]~26\,
	combout => \u_lcd_driver|cnt_v[8]~27_combout\,
	cout => \u_lcd_driver|cnt_v[8]~28\);

-- Location: LCCOMB_X30_Y15_N4
\u_lcd_driver|cnt_h[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[0]~11_combout\ = \u_lcd_driver|cnt_h\(0) $ (VCC)
-- \u_lcd_driver|cnt_h[0]~12\ = CARRY(\u_lcd_driver|cnt_h\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(0),
	datad => VCC,
	combout => \u_lcd_driver|cnt_h[0]~11_combout\,
	cout => \u_lcd_driver|cnt_h[0]~12\);

-- Location: LCCOMB_X30_Y15_N10
\u_lcd_driver|cnt_h[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[3]~17_combout\ = (\u_lcd_driver|cnt_h\(3) & (!\u_lcd_driver|cnt_h[2]~16\)) # (!\u_lcd_driver|cnt_h\(3) & ((\u_lcd_driver|cnt_h[2]~16\) # (GND)))
-- \u_lcd_driver|cnt_h[3]~18\ = CARRY((!\u_lcd_driver|cnt_h[2]~16\) # (!\u_lcd_driver|cnt_h\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(3),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[2]~16\,
	combout => \u_lcd_driver|cnt_h[3]~17_combout\,
	cout => \u_lcd_driver|cnt_h[3]~18\);

-- Location: LCCOMB_X30_Y15_N12
\u_lcd_driver|cnt_h[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[4]~19_combout\ = (\u_lcd_driver|cnt_h\(4) & (\u_lcd_driver|cnt_h[3]~18\ $ (GND))) # (!\u_lcd_driver|cnt_h\(4) & (!\u_lcd_driver|cnt_h[3]~18\ & VCC))
-- \u_lcd_driver|cnt_h[4]~20\ = CARRY((\u_lcd_driver|cnt_h\(4) & !\u_lcd_driver|cnt_h[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(4),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[3]~18\,
	combout => \u_lcd_driver|cnt_h[4]~19_combout\,
	cout => \u_lcd_driver|cnt_h[4]~20\);

-- Location: FF_X30_Y15_N13
\u_lcd_driver|cnt_h[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[4]~19_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(4));

-- Location: LCCOMB_X30_Y15_N14
\u_lcd_driver|cnt_h[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[5]~21_combout\ = (\u_lcd_driver|cnt_h\(5) & (!\u_lcd_driver|cnt_h[4]~20\)) # (!\u_lcd_driver|cnt_h\(5) & ((\u_lcd_driver|cnt_h[4]~20\) # (GND)))
-- \u_lcd_driver|cnt_h[5]~22\ = CARRY((!\u_lcd_driver|cnt_h[4]~20\) # (!\u_lcd_driver|cnt_h\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(5),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[4]~20\,
	combout => \u_lcd_driver|cnt_h[5]~21_combout\,
	cout => \u_lcd_driver|cnt_h[5]~22\);

-- Location: FF_X30_Y15_N15
\u_lcd_driver|cnt_h[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[5]~21_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(5));

-- Location: LCCOMB_X30_Y15_N16
\u_lcd_driver|cnt_h[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[6]~23_combout\ = (\u_lcd_driver|cnt_h\(6) & (\u_lcd_driver|cnt_h[5]~22\ $ (GND))) # (!\u_lcd_driver|cnt_h\(6) & (!\u_lcd_driver|cnt_h[5]~22\ & VCC))
-- \u_lcd_driver|cnt_h[6]~24\ = CARRY((\u_lcd_driver|cnt_h\(6) & !\u_lcd_driver|cnt_h[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(6),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[5]~22\,
	combout => \u_lcd_driver|cnt_h[6]~23_combout\,
	cout => \u_lcd_driver|cnt_h[6]~24\);

-- Location: FF_X30_Y15_N17
\u_lcd_driver|cnt_h[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[6]~23_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(6));

-- Location: LCCOMB_X30_Y15_N18
\u_lcd_driver|cnt_h[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[7]~25_combout\ = (\u_lcd_driver|cnt_h\(7) & (!\u_lcd_driver|cnt_h[6]~24\)) # (!\u_lcd_driver|cnt_h\(7) & ((\u_lcd_driver|cnt_h[6]~24\) # (GND)))
-- \u_lcd_driver|cnt_h[7]~26\ = CARRY((!\u_lcd_driver|cnt_h[6]~24\) # (!\u_lcd_driver|cnt_h\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(7),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[6]~24\,
	combout => \u_lcd_driver|cnt_h[7]~25_combout\,
	cout => \u_lcd_driver|cnt_h[7]~26\);

-- Location: FF_X30_Y15_N19
\u_lcd_driver|cnt_h[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[7]~25_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(7));

-- Location: LCCOMB_X30_Y15_N20
\u_lcd_driver|cnt_h[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[8]~27_combout\ = (\u_lcd_driver|cnt_h\(8) & (\u_lcd_driver|cnt_h[7]~26\ $ (GND))) # (!\u_lcd_driver|cnt_h\(8) & (!\u_lcd_driver|cnt_h[7]~26\ & VCC))
-- \u_lcd_driver|cnt_h[8]~28\ = CARRY((\u_lcd_driver|cnt_h\(8) & !\u_lcd_driver|cnt_h[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(8),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[7]~26\,
	combout => \u_lcd_driver|cnt_h[8]~27_combout\,
	cout => \u_lcd_driver|cnt_h[8]~28\);

-- Location: FF_X30_Y15_N21
\u_lcd_driver|cnt_h[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[8]~27_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(8));

-- Location: LCCOMB_X30_Y15_N22
\u_lcd_driver|cnt_h[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[9]~29_combout\ = (\u_lcd_driver|cnt_h\(9) & (!\u_lcd_driver|cnt_h[8]~28\)) # (!\u_lcd_driver|cnt_h\(9) & ((\u_lcd_driver|cnt_h[8]~28\) # (GND)))
-- \u_lcd_driver|cnt_h[9]~30\ = CARRY((!\u_lcd_driver|cnt_h[8]~28\) # (!\u_lcd_driver|cnt_h\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(9),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[8]~28\,
	combout => \u_lcd_driver|cnt_h[9]~29_combout\,
	cout => \u_lcd_driver|cnt_h[9]~30\);

-- Location: FF_X30_Y15_N23
\u_lcd_driver|cnt_h[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[9]~29_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(9));

-- Location: LCCOMB_X30_Y15_N24
\u_lcd_driver|cnt_h[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[10]~31_combout\ = \u_lcd_driver|cnt_h[9]~30\ $ (!\u_lcd_driver|cnt_h\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd_driver|cnt_h\(10),
	cin => \u_lcd_driver|cnt_h[9]~30\,
	combout => \u_lcd_driver|cnt_h[10]~31_combout\);

-- Location: FF_X30_Y15_N25
\u_lcd_driver|cnt_h[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[10]~31_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(10));

-- Location: LCCOMB_X30_Y20_N26
\u_lcd_driver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Equal0~1_combout\ = (!\u_lcd_driver|cnt_h\(6) & (!\u_lcd_driver|cnt_h\(7) & (!\u_lcd_driver|cnt_h\(8) & !\u_lcd_driver|cnt_h\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(6),
	datab => \u_lcd_driver|cnt_h\(7),
	datac => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|cnt_h\(5),
	combout => \u_lcd_driver|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y15_N28
\u_lcd_driver|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan6~0_combout\ = (\u_lcd_driver|cnt_h\(10) & ((\u_lcd_driver|Equal0~0_combout\) # ((\u_lcd_driver|cnt_h\(9)) # (!\u_lcd_driver|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Equal0~0_combout\,
	datab => \u_lcd_driver|cnt_h\(10),
	datac => \u_lcd_driver|cnt_h\(9),
	datad => \u_lcd_driver|Equal0~1_combout\,
	combout => \u_lcd_driver|LessThan6~0_combout\);

-- Location: FF_X30_Y15_N5
\u_lcd_driver|cnt_h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[0]~11_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(0));

-- Location: LCCOMB_X30_Y15_N6
\u_lcd_driver|cnt_h[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[1]~13_combout\ = (\u_lcd_driver|cnt_h\(1) & (!\u_lcd_driver|cnt_h[0]~12\)) # (!\u_lcd_driver|cnt_h\(1) & ((\u_lcd_driver|cnt_h[0]~12\) # (GND)))
-- \u_lcd_driver|cnt_h[1]~14\ = CARRY((!\u_lcd_driver|cnt_h[0]~12\) # (!\u_lcd_driver|cnt_h\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(1),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[0]~12\,
	combout => \u_lcd_driver|cnt_h[1]~13_combout\,
	cout => \u_lcd_driver|cnt_h[1]~14\);

-- Location: FF_X30_Y15_N7
\u_lcd_driver|cnt_h[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[1]~13_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(1));

-- Location: LCCOMB_X30_Y15_N8
\u_lcd_driver|cnt_h[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_h[2]~15_combout\ = (\u_lcd_driver|cnt_h\(2) & (\u_lcd_driver|cnt_h[1]~14\ $ (GND))) # (!\u_lcd_driver|cnt_h\(2) & (!\u_lcd_driver|cnt_h[1]~14\ & VCC))
-- \u_lcd_driver|cnt_h[2]~16\ = CARRY((\u_lcd_driver|cnt_h\(2) & !\u_lcd_driver|cnt_h[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(2),
	datad => VCC,
	cin => \u_lcd_driver|cnt_h[1]~14\,
	combout => \u_lcd_driver|cnt_h[2]~15_combout\,
	cout => \u_lcd_driver|cnt_h[2]~16\);

-- Location: FF_X30_Y15_N9
\u_lcd_driver|cnt_h[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[2]~15_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(2));

-- Location: FF_X30_Y15_N11
\u_lcd_driver|cnt_h[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_h[3]~17_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_h\(3));

-- Location: LCCOMB_X30_Y15_N0
\u_lcd_driver|lcd_de~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~0_combout\ = (\u_lcd_driver|cnt_h\(3) & \u_lcd_driver|cnt_h\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(3),
	datad => \u_lcd_driver|cnt_h\(4),
	combout => \u_lcd_driver|lcd_de~0_combout\);

-- Location: LCCOMB_X30_Y15_N26
\u_lcd_driver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Equal0~0_combout\ = (\u_lcd_driver|lcd_de~0_combout\ & (\u_lcd_driver|cnt_h\(0) & (\u_lcd_driver|cnt_h\(2) & \u_lcd_driver|cnt_h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_de~0_combout\,
	datab => \u_lcd_driver|cnt_h\(0),
	datac => \u_lcd_driver|cnt_h\(2),
	datad => \u_lcd_driver|cnt_h\(1),
	combout => \u_lcd_driver|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y15_N2
\u_lcd_driver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Equal0~2_combout\ = (\u_lcd_driver|Equal0~0_combout\ & (\u_lcd_driver|cnt_h\(10) & (!\u_lcd_driver|cnt_h\(9) & \u_lcd_driver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Equal0~0_combout\,
	datab => \u_lcd_driver|cnt_h\(10),
	datac => \u_lcd_driver|cnt_h\(9),
	datad => \u_lcd_driver|Equal0~1_combout\,
	combout => \u_lcd_driver|Equal0~2_combout\);

-- Location: FF_X21_Y19_N25
\u_lcd_driver|cnt_v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[8]~27_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(8));

-- Location: LCCOMB_X21_Y19_N4
\u_lcd_driver|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan7~0_combout\ = (!\u_lcd_driver|cnt_v\(5) & (!\u_lcd_driver|cnt_v\(6) & (!\u_lcd_driver|cnt_v\(7) & !\u_lcd_driver|cnt_v\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(5),
	datab => \u_lcd_driver|cnt_v\(6),
	datac => \u_lcd_driver|cnt_v\(7),
	datad => \u_lcd_driver|cnt_v\(8),
	combout => \u_lcd_driver|LessThan7~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\u_lcd_driver|cnt_v[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[9]~29_combout\ = (\u_lcd_driver|cnt_v\(9) & (!\u_lcd_driver|cnt_v[8]~28\)) # (!\u_lcd_driver|cnt_v\(9) & ((\u_lcd_driver|cnt_v[8]~28\) # (GND)))
-- \u_lcd_driver|cnt_v[9]~30\ = CARRY((!\u_lcd_driver|cnt_v[8]~28\) # (!\u_lcd_driver|cnt_v\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(9),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[8]~28\,
	combout => \u_lcd_driver|cnt_v[9]~29_combout\,
	cout => \u_lcd_driver|cnt_v[9]~30\);

-- Location: FF_X21_Y19_N27
\u_lcd_driver|cnt_v[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[9]~29_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(9));

-- Location: LCCOMB_X21_Y19_N28
\u_lcd_driver|cnt_v[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[10]~31_combout\ = \u_lcd_driver|cnt_v[9]~30\ $ (!\u_lcd_driver|cnt_v\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd_driver|cnt_v\(10),
	cin => \u_lcd_driver|cnt_v[9]~30\,
	combout => \u_lcd_driver|cnt_v[10]~31_combout\);

-- Location: FF_X21_Y19_N29
\u_lcd_driver|cnt_v[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[10]~31_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(10));

-- Location: LCCOMB_X21_Y19_N30
\u_lcd_driver|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan7~2_combout\ = (\u_lcd_driver|cnt_v\(10)) # ((\u_lcd_driver|cnt_v\(9) & ((!\u_lcd_driver|LessThan7~0_combout\) # (!\u_lcd_driver|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|LessThan7~1_combout\,
	datab => \u_lcd_driver|LessThan7~0_combout\,
	datac => \u_lcd_driver|cnt_v\(9),
	datad => \u_lcd_driver|cnt_v\(10),
	combout => \u_lcd_driver|LessThan7~2_combout\);

-- Location: FF_X21_Y19_N9
\u_lcd_driver|cnt_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[0]~11_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(0));

-- Location: LCCOMB_X21_Y19_N10
\u_lcd_driver|cnt_v[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[1]~13_combout\ = (\u_lcd_driver|cnt_v\(1) & (!\u_lcd_driver|cnt_v[0]~12\)) # (!\u_lcd_driver|cnt_v\(1) & ((\u_lcd_driver|cnt_v[0]~12\) # (GND)))
-- \u_lcd_driver|cnt_v[1]~14\ = CARRY((!\u_lcd_driver|cnt_v[0]~12\) # (!\u_lcd_driver|cnt_v\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(1),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[0]~12\,
	combout => \u_lcd_driver|cnt_v[1]~13_combout\,
	cout => \u_lcd_driver|cnt_v[1]~14\);

-- Location: FF_X21_Y19_N11
\u_lcd_driver|cnt_v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[1]~13_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(1));

-- Location: LCCOMB_X21_Y19_N12
\u_lcd_driver|cnt_v[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[2]~15_combout\ = (\u_lcd_driver|cnt_v\(2) & (\u_lcd_driver|cnt_v[1]~14\ $ (GND))) # (!\u_lcd_driver|cnt_v\(2) & (!\u_lcd_driver|cnt_v[1]~14\ & VCC))
-- \u_lcd_driver|cnt_v[2]~16\ = CARRY((\u_lcd_driver|cnt_v\(2) & !\u_lcd_driver|cnt_v[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(2),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[1]~14\,
	combout => \u_lcd_driver|cnt_v[2]~15_combout\,
	cout => \u_lcd_driver|cnt_v[2]~16\);

-- Location: FF_X21_Y19_N13
\u_lcd_driver|cnt_v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[2]~15_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(2));

-- Location: LCCOMB_X21_Y19_N14
\u_lcd_driver|cnt_v[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[3]~17_combout\ = (\u_lcd_driver|cnt_v\(3) & (!\u_lcd_driver|cnt_v[2]~16\)) # (!\u_lcd_driver|cnt_v\(3) & ((\u_lcd_driver|cnt_v[2]~16\) # (GND)))
-- \u_lcd_driver|cnt_v[3]~18\ = CARRY((!\u_lcd_driver|cnt_v[2]~16\) # (!\u_lcd_driver|cnt_v\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(3),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[2]~16\,
	combout => \u_lcd_driver|cnt_v[3]~17_combout\,
	cout => \u_lcd_driver|cnt_v[3]~18\);

-- Location: FF_X21_Y19_N15
\u_lcd_driver|cnt_v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[3]~17_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(3));

-- Location: LCCOMB_X21_Y19_N16
\u_lcd_driver|cnt_v[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[4]~19_combout\ = (\u_lcd_driver|cnt_v\(4) & (\u_lcd_driver|cnt_v[3]~18\ $ (GND))) # (!\u_lcd_driver|cnt_v\(4) & (!\u_lcd_driver|cnt_v[3]~18\ & VCC))
-- \u_lcd_driver|cnt_v[4]~20\ = CARRY((\u_lcd_driver|cnt_v\(4) & !\u_lcd_driver|cnt_v[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(4),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[3]~18\,
	combout => \u_lcd_driver|cnt_v[4]~19_combout\,
	cout => \u_lcd_driver|cnt_v[4]~20\);

-- Location: FF_X21_Y19_N17
\u_lcd_driver|cnt_v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[4]~19_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(4));

-- Location: LCCOMB_X21_Y19_N18
\u_lcd_driver|cnt_v[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[5]~21_combout\ = (\u_lcd_driver|cnt_v\(5) & (!\u_lcd_driver|cnt_v[4]~20\)) # (!\u_lcd_driver|cnt_v\(5) & ((\u_lcd_driver|cnt_v[4]~20\) # (GND)))
-- \u_lcd_driver|cnt_v[5]~22\ = CARRY((!\u_lcd_driver|cnt_v[4]~20\) # (!\u_lcd_driver|cnt_v\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(5),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[4]~20\,
	combout => \u_lcd_driver|cnt_v[5]~21_combout\,
	cout => \u_lcd_driver|cnt_v[5]~22\);

-- Location: FF_X21_Y19_N19
\u_lcd_driver|cnt_v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[5]~21_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(5));

-- Location: LCCOMB_X21_Y19_N20
\u_lcd_driver|cnt_v[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|cnt_v[6]~23_combout\ = (\u_lcd_driver|cnt_v\(6) & (\u_lcd_driver|cnt_v[5]~22\ $ (GND))) # (!\u_lcd_driver|cnt_v\(6) & (!\u_lcd_driver|cnt_v[5]~22\ & VCC))
-- \u_lcd_driver|cnt_v[6]~24\ = CARRY((\u_lcd_driver|cnt_v\(6) & !\u_lcd_driver|cnt_v[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(6),
	datad => VCC,
	cin => \u_lcd_driver|cnt_v[5]~22\,
	combout => \u_lcd_driver|cnt_v[6]~23_combout\,
	cout => \u_lcd_driver|cnt_v[6]~24\);

-- Location: FF_X21_Y19_N21
\u_lcd_driver|cnt_v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[6]~23_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(6));

-- Location: FF_X21_Y19_N23
\u_lcd_driver|cnt_v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_driver|cnt_v[7]~25_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	sclr => \u_lcd_driver|LessThan7~2_combout\,
	ena => \u_lcd_driver|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_driver|cnt_v\(7));

-- Location: LCCOMB_X21_Y19_N2
\u_lcd_driver|lcd_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_en~1_combout\ = (!\u_lcd_driver|cnt_v\(7) & (!\u_lcd_driver|cnt_v\(6) & (!\u_lcd_driver|cnt_v\(9) & !\u_lcd_driver|cnt_v\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(7),
	datab => \u_lcd_driver|cnt_v\(6),
	datac => \u_lcd_driver|cnt_v\(9),
	datad => \u_lcd_driver|cnt_v\(8),
	combout => \u_lcd_driver|lcd_en~1_combout\);

-- Location: LCCOMB_X21_Y19_N0
\u_lcd_driver|lcd_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_en~0_combout\ = (!\u_lcd_driver|cnt_v\(3) & (!\u_lcd_driver|cnt_v\(2) & ((!\u_lcd_driver|cnt_v\(0)) # (!\u_lcd_driver|cnt_v\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(1),
	datab => \u_lcd_driver|cnt_v\(0),
	datac => \u_lcd_driver|cnt_v\(3),
	datad => \u_lcd_driver|cnt_v\(2),
	combout => \u_lcd_driver|lcd_en~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\u_lcd_driver|data_req~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~0_combout\ = (\u_lcd_driver|lcd_en~0_combout\ & ((\u_lcd_driver|cnt_v\(4) & ((!\u_lcd_driver|LessThan7~0_combout\))) # (!\u_lcd_driver|cnt_v\(4) & (!\u_lcd_driver|lcd_en~1_combout\)))) # (!\u_lcd_driver|lcd_en~0_combout\ & 
-- (((!\u_lcd_driver|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_en~1_combout\,
	datab => \u_lcd_driver|lcd_en~0_combout\,
	datac => \u_lcd_driver|LessThan7~0_combout\,
	datad => \u_lcd_driver|cnt_v\(4),
	combout => \u_lcd_driver|data_req~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\u_lcd_driver|data_req~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~1_combout\ = (!\u_lcd_driver|cnt_v\(10) & !\u_lcd_driver|cnt_h\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd_driver|cnt_v\(10),
	datad => \u_lcd_driver|cnt_h\(10),
	combout => \u_lcd_driver|data_req~1_combout\);

-- Location: LCCOMB_X19_Y19_N2
\u_lcd_driver|data_req~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~2_combout\ = (\u_lcd_driver|data_req~0_combout\ & (\u_lcd_driver|data_req~1_combout\ & ((\u_lcd_driver|LessThan7~0_combout\) # (!\u_lcd_driver|cnt_v\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~0_combout\,
	datab => \u_lcd_driver|data_req~1_combout\,
	datac => \u_lcd_driver|LessThan7~0_combout\,
	datad => \u_lcd_driver|cnt_v\(9),
	combout => \u_lcd_driver|data_req~2_combout\);

-- Location: LCCOMB_X30_Y20_N24
\u_lcd_driver|lcd_de~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~1_combout\ = (\u_lcd_driver|cnt_h\(6) & (\u_lcd_driver|cnt_h\(7) & \u_lcd_driver|cnt_h\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(6),
	datac => \u_lcd_driver|cnt_h\(7),
	datad => \u_lcd_driver|cnt_h\(5),
	combout => \u_lcd_driver|lcd_de~1_combout\);

-- Location: LCCOMB_X30_Y20_N18
\u_lcd_driver|lcd_de~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~2_combout\ = (\u_lcd_driver|cnt_h\(9) & (((!\u_lcd_driver|lcd_de~1_combout\) # (!\u_lcd_driver|cnt_h\(8))) # (!\u_lcd_driver|lcd_de~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_de~0_combout\,
	datab => \u_lcd_driver|cnt_h\(9),
	datac => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|lcd_de~1_combout\,
	combout => \u_lcd_driver|lcd_de~2_combout\);

-- Location: LCCOMB_X30_Y20_N4
\u_lcd_driver|lcd_de~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~3_combout\ = (\u_lcd_driver|cnt_h\(5)) # ((\u_lcd_driver|cnt_h\(3) & \u_lcd_driver|cnt_h\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(5),
	datac => \u_lcd_driver|cnt_h\(3),
	datad => \u_lcd_driver|cnt_h\(4),
	combout => \u_lcd_driver|lcd_de~3_combout\);

-- Location: LCCOMB_X30_Y20_N6
\u_lcd_driver|lcd_de~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~4_combout\ = (\u_lcd_driver|cnt_h\(8)) # ((\u_lcd_driver|cnt_h\(6) & (\u_lcd_driver|cnt_h\(7) & \u_lcd_driver|lcd_de~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(6),
	datab => \u_lcd_driver|cnt_h\(7),
	datac => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|lcd_de~3_combout\,
	combout => \u_lcd_driver|lcd_de~4_combout\);

-- Location: LCCOMB_X30_Y20_N8
\u_lcd_driver|lcd_de~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~5_combout\ = (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|lcd_de~2_combout\) # ((!\u_lcd_driver|cnt_h\(9) & \u_lcd_driver|lcd_de~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~2_combout\,
	datab => \u_lcd_driver|lcd_de~2_combout\,
	datac => \u_lcd_driver|cnt_h\(9),
	datad => \u_lcd_driver|lcd_de~4_combout\,
	combout => \u_lcd_driver|lcd_de~5_combout\);

-- Location: LCCOMB_X30_Y17_N0
\u_lcd_driver|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~1_cout\ = CARRY((\u_lcd_driver|cnt_h\(1) & \u_lcd_driver|cnt_h\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(1),
	datab => \u_lcd_driver|cnt_h\(0),
	datad => VCC,
	cout => \u_lcd_driver|Add0~1_cout\);

-- Location: LCCOMB_X30_Y17_N2
\u_lcd_driver|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~3_cout\ = CARRY((!\u_lcd_driver|Add0~1_cout\) # (!\u_lcd_driver|cnt_h\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(2),
	datad => VCC,
	cin => \u_lcd_driver|Add0~1_cout\,
	cout => \u_lcd_driver|Add0~3_cout\);

-- Location: LCCOMB_X30_Y17_N4
\u_lcd_driver|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~5_cout\ = CARRY((\u_lcd_driver|cnt_h\(3)) # (!\u_lcd_driver|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(3),
	datad => VCC,
	cin => \u_lcd_driver|Add0~3_cout\,
	cout => \u_lcd_driver|Add0~5_cout\);

-- Location: LCCOMB_X30_Y17_N6
\u_lcd_driver|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~7_cout\ = CARRY((!\u_lcd_driver|Add0~5_cout\) # (!\u_lcd_driver|cnt_h\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(4),
	datad => VCC,
	cin => \u_lcd_driver|Add0~5_cout\,
	cout => \u_lcd_driver|Add0~7_cout\);

-- Location: LCCOMB_X30_Y17_N8
\u_lcd_driver|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~8_combout\ = (\u_lcd_driver|cnt_h\(5) & ((GND) # (!\u_lcd_driver|Add0~7_cout\))) # (!\u_lcd_driver|cnt_h\(5) & (\u_lcd_driver|Add0~7_cout\ $ (GND)))
-- \u_lcd_driver|Add0~9\ = CARRY((\u_lcd_driver|cnt_h\(5)) # (!\u_lcd_driver|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(5),
	datad => VCC,
	cin => \u_lcd_driver|Add0~7_cout\,
	combout => \u_lcd_driver|Add0~8_combout\,
	cout => \u_lcd_driver|Add0~9\);

-- Location: LCCOMB_X30_Y17_N10
\u_lcd_driver|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~10_combout\ = (\u_lcd_driver|cnt_h\(6) & (!\u_lcd_driver|Add0~9\)) # (!\u_lcd_driver|cnt_h\(6) & ((\u_lcd_driver|Add0~9\) # (GND)))
-- \u_lcd_driver|Add0~11\ = CARRY((!\u_lcd_driver|Add0~9\) # (!\u_lcd_driver|cnt_h\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(6),
	datad => VCC,
	cin => \u_lcd_driver|Add0~9\,
	combout => \u_lcd_driver|Add0~10_combout\,
	cout => \u_lcd_driver|Add0~11\);

-- Location: LCCOMB_X30_Y17_N12
\u_lcd_driver|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~12_combout\ = (\u_lcd_driver|cnt_h\(7) & (\u_lcd_driver|Add0~11\ $ (GND))) # (!\u_lcd_driver|cnt_h\(7) & (!\u_lcd_driver|Add0~11\ & VCC))
-- \u_lcd_driver|Add0~13\ = CARRY((\u_lcd_driver|cnt_h\(7) & !\u_lcd_driver|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(7),
	datad => VCC,
	cin => \u_lcd_driver|Add0~11\,
	combout => \u_lcd_driver|Add0~12_combout\,
	cout => \u_lcd_driver|Add0~13\);

-- Location: LCCOMB_X30_Y17_N14
\u_lcd_driver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~14_combout\ = (\u_lcd_driver|cnt_h\(8) & (\u_lcd_driver|Add0~13\ & VCC)) # (!\u_lcd_driver|cnt_h\(8) & (!\u_lcd_driver|Add0~13\))
-- \u_lcd_driver|Add0~15\ = CARRY((!\u_lcd_driver|cnt_h\(8) & !\u_lcd_driver|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(8),
	datad => VCC,
	cin => \u_lcd_driver|Add0~13\,
	combout => \u_lcd_driver|Add0~14_combout\,
	cout => \u_lcd_driver|Add0~15\);

-- Location: LCCOMB_X30_Y17_N16
\u_lcd_driver|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~16_combout\ = \u_lcd_driver|Add0~15\ $ (\u_lcd_driver|cnt_h\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd_driver|cnt_h\(9),
	cin => \u_lcd_driver|Add0~15\,
	combout => \u_lcd_driver|Add0~16_combout\);

-- Location: LCCOMB_X30_Y17_N18
\u_lcd_display|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|LessThan2~0_combout\ = (!\u_lcd_driver|Add0~8_combout\ & !\u_lcd_driver|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~10_combout\,
	combout => \u_lcd_display|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y17_N28
\u_lcd_display|pixel_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~2_combout\ = (\u_lcd_driver|Add0~14_combout\) # ((\u_lcd_driver|Add0~12_combout\ & ((\u_lcd_driver|Add0~16_combout\) # (!\u_lcd_display|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~12_combout\,
	datab => \u_lcd_display|LessThan2~0_combout\,
	datac => \u_lcd_driver|Add0~14_combout\,
	datad => \u_lcd_driver|Add0~16_combout\,
	combout => \u_lcd_display|pixel_data~2_combout\);

-- Location: LCCOMB_X30_Y20_N28
\u_lcd_driver|data_req~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~3_combout\ = (\u_lcd_driver|cnt_h\(6) & (\u_lcd_driver|cnt_h\(7) & !\u_lcd_driver|cnt_h\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(6),
	datab => \u_lcd_driver|cnt_h\(7),
	datac => \u_lcd_driver|cnt_h\(8),
	combout => \u_lcd_driver|data_req~3_combout\);

-- Location: LCCOMB_X30_Y15_N30
\u_lcd_driver|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan4~0_combout\ = (!\u_lcd_driver|cnt_h\(3) & (((!\u_lcd_driver|cnt_h\(1)) # (!\u_lcd_driver|cnt_h\(2))) # (!\u_lcd_driver|cnt_h\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(3),
	datab => \u_lcd_driver|cnt_h\(0),
	datac => \u_lcd_driver|cnt_h\(2),
	datad => \u_lcd_driver|cnt_h\(1),
	combout => \u_lcd_driver|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y20_N14
\u_lcd_driver|data_req~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~4_combout\ = (\u_lcd_driver|data_req~3_combout\ & ((\u_lcd_driver|cnt_h\(5)) # ((!\u_lcd_driver|LessThan4~0_combout\ & \u_lcd_driver|cnt_h\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(5),
	datab => \u_lcd_driver|data_req~3_combout\,
	datac => \u_lcd_driver|LessThan4~0_combout\,
	datad => \u_lcd_driver|cnt_h\(4),
	combout => \u_lcd_driver|data_req~4_combout\);

-- Location: LCCOMB_X30_Y20_N0
\u_lcd_driver|data_req~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~5_combout\ = (\u_lcd_driver|cnt_h\(8) & ((\u_lcd_driver|LessThan4~0_combout\) # (!\u_lcd_driver|cnt_h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(8),
	datac => \u_lcd_driver|LessThan4~0_combout\,
	datad => \u_lcd_driver|cnt_h\(4),
	combout => \u_lcd_driver|data_req~5_combout\);

-- Location: LCCOMB_X30_Y20_N10
\u_lcd_driver|data_req~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~6_combout\ = (\u_lcd_driver|data_req~5_combout\) # ((\u_lcd_driver|cnt_h\(9) & (!\u_lcd_driver|lcd_de~1_combout\)) # (!\u_lcd_driver|cnt_h\(9) & ((\u_lcd_driver|cnt_h\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(9),
	datab => \u_lcd_driver|lcd_de~1_combout\,
	datac => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|data_req~5_combout\,
	combout => \u_lcd_driver|data_req~6_combout\);

-- Location: LCCOMB_X30_Y20_N20
\u_lcd_driver|data_req~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~7_combout\ = (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_driver|data_req~4_combout\,
	datad => \u_lcd_driver|data_req~6_combout\,
	combout => \u_lcd_driver|data_req~7_combout\);

-- Location: LCCOMB_X30_Y20_N2
\u_lcd_display|pixel_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~3_combout\ = (\u_lcd_driver|Add0~16_combout\ $ (!\u_lcd_display|pixel_data~2_combout\)) # (!\u_lcd_driver|data_req~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|Add0~16_combout\,
	datac => \u_lcd_display|pixel_data~2_combout\,
	datad => \u_lcd_driver|data_req~7_combout\,
	combout => \u_lcd_display|pixel_data~3_combout\);

-- Location: FF_X30_Y20_N3
\u_lcd_display|pixel_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_display|pixel_data~3_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_display|pixel_data\(0));

-- Location: LCCOMB_X29_Y18_N16
\u_lcd_driver|lcd_rgb[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_rgb[0]~0_combout\ = (\u_lcd_driver|lcd_de~5_combout\ & \u_lcd_display|pixel_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_de~5_combout\,
	datad => \u_lcd_display|pixel_data\(0),
	combout => \u_lcd_driver|lcd_rgb[0]~0_combout\);

-- Location: LCCOMB_X30_Y20_N22
\u_lcd_driver|pixel_xpos[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|pixel_xpos[9]~0_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_driver|Add0~16_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~2_combout\,
	datab => \u_lcd_driver|Add0~16_combout\,
	datac => \u_lcd_driver|data_req~4_combout\,
	datad => \u_lcd_driver|data_req~6_combout\,
	combout => \u_lcd_driver|pixel_xpos[9]~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\u_lcd_display|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|LessThan6~0_combout\ = (!\u_lcd_driver|Add0~10_combout\) # (!\u_lcd_driver|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~10_combout\,
	combout => \u_lcd_display|LessThan6~0_combout\);

-- Location: LCCOMB_X30_Y17_N26
\u_lcd_display|pixel_data[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data[0]~4_combout\ = (\u_lcd_driver|Add0~12_combout\ & (!\u_lcd_display|LessThan6~0_combout\ & (\u_lcd_driver|Add0~14_combout\ & \u_lcd_driver|data_req~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~12_combout\,
	datab => \u_lcd_display|LessThan6~0_combout\,
	datac => \u_lcd_driver|Add0~14_combout\,
	datad => \u_lcd_driver|data_req~7_combout\,
	combout => \u_lcd_display|pixel_data[0]~4_combout\);

-- Location: LCCOMB_X30_Y17_N20
\u_lcd_display|pixel_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~5_combout\ = (\u_lcd_driver|Add0~16_combout\ & (\u_lcd_driver|data_req~7_combout\ & ((\u_lcd_driver|Add0~12_combout\) # (\u_lcd_driver|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~12_combout\,
	datab => \u_lcd_driver|Add0~16_combout\,
	datac => \u_lcd_driver|Add0~14_combout\,
	datad => \u_lcd_driver|data_req~7_combout\,
	combout => \u_lcd_display|pixel_data~5_combout\);

-- Location: LCCOMB_X30_Y17_N22
\u_lcd_display|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|LessThan2~1_combout\ = ((!\u_lcd_driver|Add0~14_combout\ & ((\u_lcd_display|LessThan2~0_combout\) # (!\u_lcd_driver|Add0~12_combout\)))) # (!\u_lcd_driver|data_req~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~12_combout\,
	datab => \u_lcd_display|LessThan2~0_combout\,
	datac => \u_lcd_driver|Add0~14_combout\,
	datad => \u_lcd_driver|data_req~7_combout\,
	combout => \u_lcd_display|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y20_N12
\u_lcd_display|pixel_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~6_combout\ = (\u_lcd_driver|pixel_xpos[9]~0_combout\ & (((!\u_lcd_display|pixel_data~5_combout\)))) # (!\u_lcd_driver|pixel_xpos[9]~0_combout\ & ((\u_lcd_display|pixel_data[0]~4_combout\ & (!\u_lcd_display|pixel_data~5_combout\)) 
-- # (!\u_lcd_display|pixel_data[0]~4_combout\ & ((\u_lcd_display|LessThan2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[9]~0_combout\,
	datab => \u_lcd_display|pixel_data[0]~4_combout\,
	datac => \u_lcd_display|pixel_data~5_combout\,
	datad => \u_lcd_display|LessThan2~1_combout\,
	combout => \u_lcd_display|pixel_data~6_combout\);

-- Location: FF_X30_Y20_N13
\u_lcd_display|pixel_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_display|pixel_data~6_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_display|pixel_data\(10));

-- Location: LCCOMB_X30_Y20_N30
\u_lcd_driver|lcd_rgb[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_rgb[5]~1_combout\ = (\u_lcd_display|pixel_data\(10) & \u_lcd_driver|lcd_de~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|pixel_data\(10),
	datac => \u_lcd_driver|lcd_de~5_combout\,
	combout => \u_lcd_driver|lcd_rgb[5]~1_combout\);

-- Location: LCCOMB_X30_Y17_N30
\u_lcd_display|pixel_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~8_combout\ = (\u_lcd_driver|Add0~14_combout\ & ((\u_lcd_driver|Add0~10_combout\ & ((!\u_lcd_driver|Add0~12_combout\) # (!\u_lcd_driver|Add0~8_combout\))) # (!\u_lcd_driver|Add0~10_combout\ & ((\u_lcd_driver|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~10_combout\,
	datab => \u_lcd_driver|Add0~14_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~12_combout\,
	combout => \u_lcd_display|pixel_data~8_combout\);

-- Location: LCCOMB_X30_Y20_N16
\u_lcd_display|pixel_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~7_combout\ = (!\u_lcd_driver|pixel_xpos[9]~0_combout\ & ((\u_lcd_display|LessThan2~1_combout\) # ((\u_lcd_display|pixel_data~8_combout\ & \u_lcd_driver|data_req~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[9]~0_combout\,
	datab => \u_lcd_display|LessThan2~1_combout\,
	datac => \u_lcd_display|pixel_data~8_combout\,
	datad => \u_lcd_driver|data_req~7_combout\,
	combout => \u_lcd_display|pixel_data~7_combout\);

-- Location: FF_X30_Y20_N17
\u_lcd_display|pixel_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_display|pixel_data~7_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_display|pixel_data\(15));

-- Location: LCCOMB_X29_Y18_N18
\u_lcd_driver|lcd_rgb[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_rgb[11]~2_combout\ = (\u_lcd_driver|lcd_de~5_combout\ & \u_lcd_display|pixel_data\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_de~5_combout\,
	datad => \u_lcd_display|pixel_data\(15),
	combout => \u_lcd_driver|lcd_rgb[11]~2_combout\);
END structure;


