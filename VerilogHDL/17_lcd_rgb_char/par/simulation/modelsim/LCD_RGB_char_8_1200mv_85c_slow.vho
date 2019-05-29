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

-- DATE "09/09/2018 17:02:51"

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

ENTITY 	lcd_rgb_char IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	lcd_hs : BUFFER std_logic;
	lcd_vs : BUFFER std_logic;
	lcd_de : BUFFER std_logic;
	lcd_rgb : BUFFER std_logic_vector(15 DOWNTO 0);
	lcd_bl : BUFFER std_logic;
	lcd_rst : BUFFER std_logic;
	lcd_pclk : BUFFER std_logic
	);
END lcd_rgb_char;

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


ARCHITECTURE structure OF lcd_rgb_char IS
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
SIGNAL \u_lcd_driver|cnt_v[5]~22\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[6]~23_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[0]~11_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[7]~26\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[8]~27_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[8]~28\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[9]~29_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[9]~30\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[10]~31_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|Equal0~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|LessThan6~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[0]~12\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[1]~13_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[1]~14\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[2]~15_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[2]~16\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[3]~17_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[3]~18\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[4]~19_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[4]~20\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[5]~21_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[5]~22\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[6]~23_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[6]~24\ : std_logic;
SIGNAL \u_lcd_driver|cnt_h[7]~25_combout\ : std_logic;
SIGNAL \u_lcd_driver|Equal0~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|Equal0~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[6]~24\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[7]~25_combout\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[7]~26\ : std_logic;
SIGNAL \u_lcd_driver|cnt_v[8]~27_combout\ : std_logic;
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
SIGNAL \u_lcd_driver|LessThan7~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_en~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_en~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_de~5_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|LessThan4~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~5_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~6_combout\ : std_logic;
SIGNAL \u_lcd_driver|data_req~7_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~1\ : std_logic;
SIGNAL \u_lcd_driver|Add1~3\ : std_logic;
SIGNAL \u_lcd_driver|Add1~5\ : std_logic;
SIGNAL \u_lcd_driver|Add1~7\ : std_logic;
SIGNAL \u_lcd_driver|Add1~9\ : std_logic;
SIGNAL \u_lcd_driver|Add1~11\ : std_logic;
SIGNAL \u_lcd_driver|Add1~13\ : std_logic;
SIGNAL \u_lcd_driver|Add1~15\ : std_logic;
SIGNAL \u_lcd_driver|Add1~16_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~12_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~14_combout\ : std_logic;
SIGNAL \u_lcd_display|always1~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~8_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~10_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~1\ : std_logic;
SIGNAL \u_lcd_driver|Add0~3\ : std_logic;
SIGNAL \u_lcd_driver|Add0~5\ : std_logic;
SIGNAL \u_lcd_driver|Add0~7\ : std_logic;
SIGNAL \u_lcd_driver|Add0~9\ : std_logic;
SIGNAL \u_lcd_driver|Add0~11\ : std_logic;
SIGNAL \u_lcd_driver|Add0~13\ : std_logic;
SIGNAL \u_lcd_driver|Add0~15\ : std_logic;
SIGNAL \u_lcd_driver|Add0~16_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~17\ : std_logic;
SIGNAL \u_lcd_driver|Add0~18_combout\ : std_logic;
SIGNAL \u_lcd_display|always1~1_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~12_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~14_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~8_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~10_combout\ : std_logic;
SIGNAL \u_lcd_display|always1~0_combout\ : std_logic;
SIGNAL \u_lcd_display|always1~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|pixel_xpos[4]~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Add0~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~6_combout\ : std_logic;
SIGNAL \u_lcd_driver|pixel_xpos[3]~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~2_combout\ : std_logic;
SIGNAL \u_lcd_driver|pixel_xpos[1]~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|pixel_xpos[0]~3_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add0~4_combout\ : std_logic;
SIGNAL \u_lcd_driver|pixel_xpos[2]~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Add0~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux13~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux13~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux13~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux13~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux13~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux13~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~6_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux1~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux1~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~11_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~10_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~12_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~13_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~14_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux5~15_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux12~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux12~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux12~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux12~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux4~10_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux8~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~28_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~29_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux2~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux10~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux10~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux10~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux6~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux14~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~10_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux3~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux11~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux7~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux15~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux15~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux15~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux15~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux15~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~17_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~18_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~19_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~20_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux28~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~21_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux28~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~22_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~23_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux25~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux27~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux9~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux26~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~15_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux24~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~16_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~24_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux21~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux21~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux21~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux21~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux21~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux20~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux20~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux20~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~10_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~13_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux23~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~11_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~12_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux22~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~14_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~10_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux17~11_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~8_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux19~9_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~25_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux16~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~4_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~5_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~3_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~6_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~0_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~1_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~2_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux18~7_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~26_combout\ : std_logic;
SIGNAL \u_lcd_display|Mux32~27_combout\ : std_logic;
SIGNAL \u_lcd_driver|Add1~6_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_rgb[0]~0_combout\ : std_logic;
SIGNAL \u_lcd_driver|lcd_rgb[11]~1_combout\ : std_logic;
SIGNAL \u_lcd_display|pixel_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_lcd_driver|cnt_h\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_lcd_driver|cnt_v\ : std_logic_vector(10 DOWNTO 0);
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \u_lcd_driver|lcd_rgb[11]~1_combout\,
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
	i => \u_lcd_driver|lcd_rgb[11]~1_combout\,
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
	i => \u_lcd_driver|lcd_rgb[11]~1_combout\,
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
	i => \u_lcd_driver|lcd_rgb[11]~1_combout\,
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
	i => \u_lcd_driver|lcd_rgb[11]~1_combout\,
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

-- Location: LCCOMB_X16_Y20_N8
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

-- Location: LCCOMB_X1_Y11_N0
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

-- Location: FF_X1_Y11_N1
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

-- Location: LCCOMB_X1_Y11_N2
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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X16_Y20_N30
\u_lcd_driver|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan7~1_combout\ = (!\u_lcd_driver|cnt_v\(4) & ((!\u_lcd_driver|cnt_v\(2)) # (!\u_lcd_driver|cnt_v\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(4),
	datac => \u_lcd_driver|cnt_v\(3),
	datad => \u_lcd_driver|cnt_v\(2),
	combout => \u_lcd_driver|LessThan7~1_combout\);

-- Location: LCCOMB_X16_Y20_N18
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

-- Location: LCCOMB_X16_Y20_N20
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

-- Location: LCCOMB_X16_Y19_N4
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

-- Location: LCCOMB_X16_Y19_N18
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

-- Location: LCCOMB_X16_Y19_N20
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

-- Location: FF_X16_Y19_N21
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

-- Location: LCCOMB_X16_Y19_N22
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

-- Location: FF_X16_Y19_N23
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

-- Location: LCCOMB_X16_Y19_N24
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

-- Location: FF_X16_Y19_N25
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

-- Location: LCCOMB_X14_Y19_N24
\u_lcd_driver|lcd_de~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~0_combout\ = (\u_lcd_driver|cnt_h\(4) & \u_lcd_driver|cnt_h\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd_driver|cnt_h\(4),
	datad => \u_lcd_driver|cnt_h\(3),
	combout => \u_lcd_driver|lcd_de~0_combout\);

-- Location: LCCOMB_X14_Y19_N2
\u_lcd_driver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Equal0~0_combout\ = (\u_lcd_driver|cnt_h\(2) & (\u_lcd_driver|lcd_de~0_combout\ & (\u_lcd_driver|cnt_h\(0) & \u_lcd_driver|cnt_h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(2),
	datab => \u_lcd_driver|lcd_de~0_combout\,
	datac => \u_lcd_driver|cnt_h\(0),
	datad => \u_lcd_driver|cnt_h\(1),
	combout => \u_lcd_driver|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y19_N0
\u_lcd_driver|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan6~0_combout\ = (\u_lcd_driver|cnt_h\(10) & (((\u_lcd_driver|Equal0~0_combout\) # (\u_lcd_driver|cnt_h\(9))) # (!\u_lcd_driver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Equal0~1_combout\,
	datab => \u_lcd_driver|cnt_h\(10),
	datac => \u_lcd_driver|Equal0~0_combout\,
	datad => \u_lcd_driver|cnt_h\(9),
	combout => \u_lcd_driver|LessThan6~0_combout\);

-- Location: FF_X16_Y19_N5
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

-- Location: LCCOMB_X16_Y19_N6
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

-- Location: FF_X16_Y19_N7
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

-- Location: LCCOMB_X16_Y19_N8
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

-- Location: FF_X16_Y19_N9
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

-- Location: LCCOMB_X16_Y19_N10
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

-- Location: FF_X16_Y19_N11
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

-- Location: LCCOMB_X16_Y19_N12
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

-- Location: FF_X16_Y19_N13
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

-- Location: LCCOMB_X16_Y19_N14
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

-- Location: FF_X16_Y19_N15
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

-- Location: LCCOMB_X16_Y19_N16
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

-- Location: FF_X16_Y19_N17
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

-- Location: FF_X16_Y19_N19
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

-- Location: LCCOMB_X16_Y19_N2
\u_lcd_driver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Equal0~1_combout\ = (!\u_lcd_driver|cnt_h\(7) & (!\u_lcd_driver|cnt_h\(8) & (!\u_lcd_driver|cnt_h\(5) & !\u_lcd_driver|cnt_h\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(7),
	datab => \u_lcd_driver|cnt_h\(8),
	datac => \u_lcd_driver|cnt_h\(5),
	datad => \u_lcd_driver|cnt_h\(6),
	combout => \u_lcd_driver|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y19_N6
\u_lcd_driver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Equal0~2_combout\ = (\u_lcd_driver|Equal0~1_combout\ & (\u_lcd_driver|cnt_h\(10) & (\u_lcd_driver|Equal0~0_combout\ & !\u_lcd_driver|cnt_h\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Equal0~1_combout\,
	datab => \u_lcd_driver|cnt_h\(10),
	datac => \u_lcd_driver|Equal0~0_combout\,
	datad => \u_lcd_driver|cnt_h\(9),
	combout => \u_lcd_driver|Equal0~2_combout\);

-- Location: FF_X16_Y20_N21
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

-- Location: LCCOMB_X16_Y20_N22
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

-- Location: FF_X16_Y20_N23
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

-- Location: LCCOMB_X16_Y20_N24
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

-- Location: FF_X16_Y20_N25
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

-- Location: LCCOMB_X16_Y20_N26
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

-- Location: FF_X16_Y20_N27
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

-- Location: LCCOMB_X16_Y20_N28
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

-- Location: FF_X16_Y20_N29
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

-- Location: LCCOMB_X17_Y19_N12
\u_lcd_driver|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan7~2_combout\ = (\u_lcd_driver|cnt_v\(10)) # ((\u_lcd_driver|cnt_v\(9) & ((!\u_lcd_driver|LessThan7~1_combout\) # (!\u_lcd_driver|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|LessThan7~0_combout\,
	datab => \u_lcd_driver|LessThan7~1_combout\,
	datac => \u_lcd_driver|cnt_v\(9),
	datad => \u_lcd_driver|cnt_v\(10),
	combout => \u_lcd_driver|LessThan7~2_combout\);

-- Location: FF_X16_Y20_N9
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

-- Location: LCCOMB_X16_Y20_N10
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

-- Location: FF_X16_Y20_N11
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

-- Location: LCCOMB_X16_Y20_N12
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

-- Location: FF_X16_Y20_N13
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

-- Location: LCCOMB_X16_Y20_N14
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

-- Location: FF_X16_Y20_N15
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

-- Location: LCCOMB_X16_Y20_N16
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

-- Location: FF_X16_Y20_N17
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

-- Location: FF_X16_Y20_N19
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

-- Location: LCCOMB_X16_Y20_N4
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

-- Location: LCCOMB_X16_Y20_N0
\u_lcd_driver|lcd_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_en~0_combout\ = (!\u_lcd_driver|cnt_v\(2) & (!\u_lcd_driver|cnt_v\(3) & ((!\u_lcd_driver|cnt_v\(1)) # (!\u_lcd_driver|cnt_v\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(2),
	datab => \u_lcd_driver|cnt_v\(3),
	datac => \u_lcd_driver|cnt_v\(0),
	datad => \u_lcd_driver|cnt_v\(1),
	combout => \u_lcd_driver|lcd_en~0_combout\);

-- Location: LCCOMB_X16_Y20_N2
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

-- Location: LCCOMB_X16_Y20_N6
\u_lcd_driver|data_req~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~0_combout\ = (\u_lcd_driver|lcd_en~0_combout\ & ((\u_lcd_driver|cnt_v\(4) & ((!\u_lcd_driver|LessThan7~0_combout\))) # (!\u_lcd_driver|cnt_v\(4) & (!\u_lcd_driver|lcd_en~1_combout\)))) # (!\u_lcd_driver|lcd_en~0_combout\ & 
-- (((!\u_lcd_driver|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_en~0_combout\,
	datab => \u_lcd_driver|lcd_en~1_combout\,
	datac => \u_lcd_driver|LessThan7~0_combout\,
	datad => \u_lcd_driver|cnt_v\(4),
	combout => \u_lcd_driver|data_req~0_combout\);

-- Location: LCCOMB_X17_Y19_N24
\u_lcd_driver|data_req~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~1_combout\ = (!\u_lcd_driver|cnt_v\(10) & !\u_lcd_driver|cnt_h\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(10),
	datad => \u_lcd_driver|cnt_h\(10),
	combout => \u_lcd_driver|data_req~1_combout\);

-- Location: LCCOMB_X17_Y19_N18
\u_lcd_driver|data_req~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~2_combout\ = (\u_lcd_driver|data_req~0_combout\ & (\u_lcd_driver|data_req~1_combout\ & ((\u_lcd_driver|LessThan7~0_combout\) # (!\u_lcd_driver|cnt_v\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|LessThan7~0_combout\,
	datab => \u_lcd_driver|data_req~0_combout\,
	datac => \u_lcd_driver|cnt_v\(9),
	datad => \u_lcd_driver|data_req~1_combout\,
	combout => \u_lcd_driver|data_req~2_combout\);

-- Location: LCCOMB_X17_Y19_N22
\u_lcd_driver|lcd_de~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~3_combout\ = (\u_lcd_driver|cnt_h\(5)) # ((\u_lcd_driver|cnt_h\(4) & \u_lcd_driver|cnt_h\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(4),
	datac => \u_lcd_driver|cnt_h\(5),
	datad => \u_lcd_driver|cnt_h\(3),
	combout => \u_lcd_driver|lcd_de~3_combout\);

-- Location: LCCOMB_X17_Y19_N16
\u_lcd_driver|lcd_de~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~4_combout\ = (\u_lcd_driver|cnt_h\(8)) # ((\u_lcd_driver|cnt_h\(6) & (\u_lcd_driver|lcd_de~3_combout\ & \u_lcd_driver|cnt_h\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(8),
	datab => \u_lcd_driver|cnt_h\(6),
	datac => \u_lcd_driver|lcd_de~3_combout\,
	datad => \u_lcd_driver|cnt_h\(7),
	combout => \u_lcd_driver|lcd_de~4_combout\);

-- Location: LCCOMB_X16_Y19_N0
\u_lcd_driver|lcd_de~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~1_combout\ = (\u_lcd_driver|cnt_h\(7) & (\u_lcd_driver|cnt_h\(5) & \u_lcd_driver|cnt_h\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(7),
	datac => \u_lcd_driver|cnt_h\(5),
	datad => \u_lcd_driver|cnt_h\(6),
	combout => \u_lcd_driver|lcd_de~1_combout\);

-- Location: LCCOMB_X17_Y19_N4
\u_lcd_driver|lcd_de~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~2_combout\ = (\u_lcd_driver|cnt_h\(9) & (((!\u_lcd_driver|lcd_de~0_combout\) # (!\u_lcd_driver|cnt_h\(8))) # (!\u_lcd_driver|lcd_de~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_de~1_combout\,
	datab => \u_lcd_driver|cnt_h\(8),
	datac => \u_lcd_driver|lcd_de~0_combout\,
	datad => \u_lcd_driver|cnt_h\(9),
	combout => \u_lcd_driver|lcd_de~2_combout\);

-- Location: LCCOMB_X17_Y19_N26
\u_lcd_driver|lcd_de~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_de~5_combout\ = (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|lcd_de~2_combout\) # ((\u_lcd_driver|lcd_de~4_combout\ & !\u_lcd_driver|cnt_h\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~2_combout\,
	datab => \u_lcd_driver|lcd_de~4_combout\,
	datac => \u_lcd_driver|lcd_de~2_combout\,
	datad => \u_lcd_driver|cnt_h\(9),
	combout => \u_lcd_driver|lcd_de~5_combout\);

-- Location: LCCOMB_X16_Y19_N26
\u_lcd_driver|data_req~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~3_combout\ = (\u_lcd_driver|cnt_h\(7) & (!\u_lcd_driver|cnt_h\(8) & \u_lcd_driver|cnt_h\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(7),
	datac => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|cnt_h\(6),
	combout => \u_lcd_driver|data_req~3_combout\);

-- Location: LCCOMB_X16_Y19_N28
\u_lcd_driver|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|LessThan4~0_combout\ = (!\u_lcd_driver|cnt_h\(3) & (((!\u_lcd_driver|cnt_h\(2)) # (!\u_lcd_driver|cnt_h\(0))) # (!\u_lcd_driver|cnt_h\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(1),
	datab => \u_lcd_driver|cnt_h\(0),
	datac => \u_lcd_driver|cnt_h\(2),
	datad => \u_lcd_driver|cnt_h\(3),
	combout => \u_lcd_driver|LessThan4~0_combout\);

-- Location: LCCOMB_X17_Y19_N2
\u_lcd_driver|data_req~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~4_combout\ = (\u_lcd_driver|data_req~3_combout\ & ((\u_lcd_driver|cnt_h\(5)) # ((!\u_lcd_driver|LessThan4~0_combout\ & \u_lcd_driver|cnt_h\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~3_combout\,
	datab => \u_lcd_driver|LessThan4~0_combout\,
	datac => \u_lcd_driver|cnt_h\(5),
	datad => \u_lcd_driver|cnt_h\(4),
	combout => \u_lcd_driver|data_req~4_combout\);

-- Location: LCCOMB_X16_Y19_N30
\u_lcd_driver|data_req~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~5_combout\ = (\u_lcd_driver|cnt_h\(8) & ((\u_lcd_driver|LessThan4~0_combout\) # (!\u_lcd_driver|cnt_h\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(4),
	datab => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|LessThan4~0_combout\,
	combout => \u_lcd_driver|data_req~5_combout\);

-- Location: LCCOMB_X17_Y19_N28
\u_lcd_driver|data_req~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~6_combout\ = (\u_lcd_driver|data_req~5_combout\) # ((\u_lcd_driver|cnt_h\(9) & (!\u_lcd_driver|lcd_de~1_combout\)) # (!\u_lcd_driver|cnt_h\(9) & ((\u_lcd_driver|cnt_h\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|lcd_de~1_combout\,
	datab => \u_lcd_driver|data_req~5_combout\,
	datac => \u_lcd_driver|cnt_h\(8),
	datad => \u_lcd_driver|cnt_h\(9),
	combout => \u_lcd_driver|data_req~6_combout\);

-- Location: LCCOMB_X17_Y19_N30
\u_lcd_driver|data_req~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|data_req~7_combout\ = (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|data_req~4_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_driver|data_req~2_combout\,
	combout => \u_lcd_driver|data_req~7_combout\);

-- Location: LCCOMB_X17_Y20_N4
\u_lcd_driver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~0_combout\ = \u_lcd_driver|cnt_v\(1) $ (VCC)
-- \u_lcd_driver|Add1~1\ = CARRY(\u_lcd_driver|cnt_v\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(1),
	datad => VCC,
	combout => \u_lcd_driver|Add1~0_combout\,
	cout => \u_lcd_driver|Add1~1\);

-- Location: LCCOMB_X17_Y20_N6
\u_lcd_driver|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~2_combout\ = (\u_lcd_driver|cnt_v\(2) & (\u_lcd_driver|Add1~1\ & VCC)) # (!\u_lcd_driver|cnt_v\(2) & (!\u_lcd_driver|Add1~1\))
-- \u_lcd_driver|Add1~3\ = CARRY((!\u_lcd_driver|cnt_v\(2) & !\u_lcd_driver|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(2),
	datad => VCC,
	cin => \u_lcd_driver|Add1~1\,
	combout => \u_lcd_driver|Add1~2_combout\,
	cout => \u_lcd_driver|Add1~3\);

-- Location: LCCOMB_X17_Y20_N8
\u_lcd_driver|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~4_combout\ = (\u_lcd_driver|cnt_v\(3) & ((GND) # (!\u_lcd_driver|Add1~3\))) # (!\u_lcd_driver|cnt_v\(3) & (\u_lcd_driver|Add1~3\ $ (GND)))
-- \u_lcd_driver|Add1~5\ = CARRY((\u_lcd_driver|cnt_v\(3)) # (!\u_lcd_driver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(3),
	datad => VCC,
	cin => \u_lcd_driver|Add1~3\,
	combout => \u_lcd_driver|Add1~4_combout\,
	cout => \u_lcd_driver|Add1~5\);

-- Location: LCCOMB_X17_Y20_N10
\u_lcd_driver|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~6_combout\ = (\u_lcd_driver|cnt_v\(4) & (\u_lcd_driver|Add1~5\ & VCC)) # (!\u_lcd_driver|cnt_v\(4) & (!\u_lcd_driver|Add1~5\))
-- \u_lcd_driver|Add1~7\ = CARRY((!\u_lcd_driver|cnt_v\(4) & !\u_lcd_driver|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(4),
	datad => VCC,
	cin => \u_lcd_driver|Add1~5\,
	combout => \u_lcd_driver|Add1~6_combout\,
	cout => \u_lcd_driver|Add1~7\);

-- Location: LCCOMB_X17_Y20_N12
\u_lcd_driver|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~8_combout\ = (\u_lcd_driver|cnt_v\(5) & (\u_lcd_driver|Add1~7\ $ (GND))) # (!\u_lcd_driver|cnt_v\(5) & (!\u_lcd_driver|Add1~7\ & VCC))
-- \u_lcd_driver|Add1~9\ = CARRY((\u_lcd_driver|cnt_v\(5) & !\u_lcd_driver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(5),
	datad => VCC,
	cin => \u_lcd_driver|Add1~7\,
	combout => \u_lcd_driver|Add1~8_combout\,
	cout => \u_lcd_driver|Add1~9\);

-- Location: LCCOMB_X17_Y20_N14
\u_lcd_driver|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~10_combout\ = (\u_lcd_driver|cnt_v\(6) & (\u_lcd_driver|Add1~9\ & VCC)) # (!\u_lcd_driver|cnt_v\(6) & (!\u_lcd_driver|Add1~9\))
-- \u_lcd_driver|Add1~11\ = CARRY((!\u_lcd_driver|cnt_v\(6) & !\u_lcd_driver|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(6),
	datad => VCC,
	cin => \u_lcd_driver|Add1~9\,
	combout => \u_lcd_driver|Add1~10_combout\,
	cout => \u_lcd_driver|Add1~11\);

-- Location: LCCOMB_X17_Y20_N16
\u_lcd_driver|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~12_combout\ = (\u_lcd_driver|cnt_v\(7) & ((GND) # (!\u_lcd_driver|Add1~11\))) # (!\u_lcd_driver|cnt_v\(7) & (\u_lcd_driver|Add1~11\ $ (GND)))
-- \u_lcd_driver|Add1~13\ = CARRY((\u_lcd_driver|cnt_v\(7)) # (!\u_lcd_driver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(7),
	datad => VCC,
	cin => \u_lcd_driver|Add1~11\,
	combout => \u_lcd_driver|Add1~12_combout\,
	cout => \u_lcd_driver|Add1~13\);

-- Location: LCCOMB_X17_Y20_N18
\u_lcd_driver|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~14_combout\ = (\u_lcd_driver|cnt_v\(8) & (\u_lcd_driver|Add1~13\ & VCC)) # (!\u_lcd_driver|cnt_v\(8) & (!\u_lcd_driver|Add1~13\))
-- \u_lcd_driver|Add1~15\ = CARRY((!\u_lcd_driver|cnt_v\(8) & !\u_lcd_driver|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_v\(8),
	datad => VCC,
	cin => \u_lcd_driver|Add1~13\,
	combout => \u_lcd_driver|Add1~14_combout\,
	cout => \u_lcd_driver|Add1~15\);

-- Location: LCCOMB_X17_Y20_N20
\u_lcd_driver|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add1~16_combout\ = \u_lcd_driver|cnt_v\(9) $ (\u_lcd_driver|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(9),
	cin => \u_lcd_driver|Add1~15\,
	combout => \u_lcd_driver|Add1~16_combout\);

-- Location: LCCOMB_X17_Y20_N0
\u_lcd_display|always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|always1~2_combout\ = (!\u_lcd_driver|Add1~16_combout\ & (\u_lcd_driver|Add1~12_combout\ & !\u_lcd_driver|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|Add1~16_combout\,
	datac => \u_lcd_driver|Add1~12_combout\,
	datad => \u_lcd_driver|Add1~14_combout\,
	combout => \u_lcd_display|always1~2_combout\);

-- Location: LCCOMB_X18_Y19_N0
\u_lcd_driver|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~0_combout\ = \u_lcd_driver|cnt_h\(0) $ (VCC)
-- \u_lcd_driver|Add0~1\ = CARRY(\u_lcd_driver|cnt_h\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(0),
	datad => VCC,
	combout => \u_lcd_driver|Add0~0_combout\,
	cout => \u_lcd_driver|Add0~1\);

-- Location: LCCOMB_X18_Y19_N2
\u_lcd_driver|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~2_combout\ = (\u_lcd_driver|cnt_h\(1) & (!\u_lcd_driver|Add0~1\)) # (!\u_lcd_driver|cnt_h\(1) & ((\u_lcd_driver|Add0~1\) # (GND)))
-- \u_lcd_driver|Add0~3\ = CARRY((!\u_lcd_driver|Add0~1\) # (!\u_lcd_driver|cnt_h\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(1),
	datad => VCC,
	cin => \u_lcd_driver|Add0~1\,
	combout => \u_lcd_driver|Add0~2_combout\,
	cout => \u_lcd_driver|Add0~3\);

-- Location: LCCOMB_X18_Y19_N4
\u_lcd_driver|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~4_combout\ = (\u_lcd_driver|cnt_h\(2) & (\u_lcd_driver|Add0~3\ $ (GND))) # (!\u_lcd_driver|cnt_h\(2) & (!\u_lcd_driver|Add0~3\ & VCC))
-- \u_lcd_driver|Add0~5\ = CARRY((\u_lcd_driver|cnt_h\(2) & !\u_lcd_driver|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(2),
	datad => VCC,
	cin => \u_lcd_driver|Add0~3\,
	combout => \u_lcd_driver|Add0~4_combout\,
	cout => \u_lcd_driver|Add0~5\);

-- Location: LCCOMB_X18_Y19_N6
\u_lcd_driver|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~6_combout\ = (\u_lcd_driver|cnt_h\(3) & (\u_lcd_driver|Add0~5\ & VCC)) # (!\u_lcd_driver|cnt_h\(3) & (!\u_lcd_driver|Add0~5\))
-- \u_lcd_driver|Add0~7\ = CARRY((!\u_lcd_driver|cnt_h\(3) & !\u_lcd_driver|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(3),
	datad => VCC,
	cin => \u_lcd_driver|Add0~5\,
	combout => \u_lcd_driver|Add0~6_combout\,
	cout => \u_lcd_driver|Add0~7\);

-- Location: LCCOMB_X18_Y19_N8
\u_lcd_driver|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~8_combout\ = (\u_lcd_driver|cnt_h\(4) & (\u_lcd_driver|Add0~7\ $ (GND))) # (!\u_lcd_driver|cnt_h\(4) & (!\u_lcd_driver|Add0~7\ & VCC))
-- \u_lcd_driver|Add0~9\ = CARRY((\u_lcd_driver|cnt_h\(4) & !\u_lcd_driver|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(4),
	datad => VCC,
	cin => \u_lcd_driver|Add0~7\,
	combout => \u_lcd_driver|Add0~8_combout\,
	cout => \u_lcd_driver|Add0~9\);

-- Location: LCCOMB_X18_Y19_N10
\u_lcd_driver|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~10_combout\ = (\u_lcd_driver|cnt_h\(5) & (\u_lcd_driver|Add0~9\ & VCC)) # (!\u_lcd_driver|cnt_h\(5) & (!\u_lcd_driver|Add0~9\))
-- \u_lcd_driver|Add0~11\ = CARRY((!\u_lcd_driver|cnt_h\(5) & !\u_lcd_driver|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(5),
	datad => VCC,
	cin => \u_lcd_driver|Add0~9\,
	combout => \u_lcd_driver|Add0~10_combout\,
	cout => \u_lcd_driver|Add0~11\);

-- Location: LCCOMB_X18_Y19_N12
\u_lcd_driver|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~12_combout\ = (\u_lcd_driver|cnt_h\(6) & (\u_lcd_driver|Add0~11\ $ (GND))) # (!\u_lcd_driver|cnt_h\(6) & (!\u_lcd_driver|Add0~11\ & VCC))
-- \u_lcd_driver|Add0~13\ = CARRY((\u_lcd_driver|cnt_h\(6) & !\u_lcd_driver|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(6),
	datad => VCC,
	cin => \u_lcd_driver|Add0~11\,
	combout => \u_lcd_driver|Add0~12_combout\,
	cout => \u_lcd_driver|Add0~13\);

-- Location: LCCOMB_X18_Y19_N14
\u_lcd_driver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~14_combout\ = (\u_lcd_driver|cnt_h\(7) & (!\u_lcd_driver|Add0~13\)) # (!\u_lcd_driver|cnt_h\(7) & ((\u_lcd_driver|Add0~13\) # (GND)))
-- \u_lcd_driver|Add0~15\ = CARRY((!\u_lcd_driver|Add0~13\) # (!\u_lcd_driver|cnt_h\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_h\(7),
	datad => VCC,
	cin => \u_lcd_driver|Add0~13\,
	combout => \u_lcd_driver|Add0~14_combout\,
	cout => \u_lcd_driver|Add0~15\);

-- Location: LCCOMB_X18_Y19_N16
\u_lcd_driver|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~16_combout\ = (\u_lcd_driver|cnt_h\(8) & ((GND) # (!\u_lcd_driver|Add0~15\))) # (!\u_lcd_driver|cnt_h\(8) & (\u_lcd_driver|Add0~15\ $ (GND)))
-- \u_lcd_driver|Add0~17\ = CARRY((\u_lcd_driver|cnt_h\(8)) # (!\u_lcd_driver|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|cnt_h\(8),
	datad => VCC,
	cin => \u_lcd_driver|Add0~15\,
	combout => \u_lcd_driver|Add0~16_combout\,
	cout => \u_lcd_driver|Add0~17\);

-- Location: LCCOMB_X18_Y19_N18
\u_lcd_driver|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|Add0~18_combout\ = \u_lcd_driver|Add0~17\ $ (!\u_lcd_driver|cnt_h\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd_driver|cnt_h\(9),
	cin => \u_lcd_driver|Add0~17\,
	combout => \u_lcd_driver|Add0~18_combout\);

-- Location: LCCOMB_X17_Y20_N30
\u_lcd_display|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|always1~1_combout\ = (\u_lcd_driver|Add1~8_combout\ & (\u_lcd_driver|Add1~10_combout\ & (\u_lcd_driver|Add0~16_combout\ & !\u_lcd_driver|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add1~8_combout\,
	datab => \u_lcd_driver|Add1~10_combout\,
	datac => \u_lcd_driver|Add0~16_combout\,
	datad => \u_lcd_driver|Add0~18_combout\,
	combout => \u_lcd_display|always1~1_combout\);

-- Location: LCCOMB_X18_Y19_N28
\u_lcd_display|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|always1~0_combout\ = \u_lcd_driver|Add0~14_combout\ $ (((\u_lcd_driver|Add0~12_combout\ & ((\u_lcd_driver|Add0~8_combout\) # (\u_lcd_driver|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~12_combout\,
	datab => \u_lcd_driver|Add0~14_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~10_combout\,
	combout => \u_lcd_display|always1~0_combout\);

-- Location: LCCOMB_X17_Y20_N26
\u_lcd_display|always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|always1~3_combout\ = (((!\u_lcd_display|always1~0_combout\) # (!\u_lcd_display|always1~1_combout\)) # (!\u_lcd_display|always1~2_combout\)) # (!\u_lcd_driver|data_req~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~7_combout\,
	datab => \u_lcd_display|always1~2_combout\,
	datac => \u_lcd_display|always1~1_combout\,
	datad => \u_lcd_display|always1~0_combout\,
	combout => \u_lcd_display|always1~3_combout\);

-- Location: LCCOMB_X17_Y18_N16
\u_lcd_driver|pixel_xpos[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|pixel_xpos[4]~0_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_driver|Add0~8_combout\ & ((\u_lcd_driver|data_req~6_combout\) # (\u_lcd_driver|data_req~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~2_combout\,
	datab => \u_lcd_driver|data_req~6_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|data_req~4_combout\,
	combout => \u_lcd_driver|pixel_xpos[4]~0_combout\);

-- Location: LCCOMB_X18_Y18_N24
\u_lcd_display|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Add0~0_combout\ = \u_lcd_driver|pixel_xpos[4]~0_combout\ $ (((\u_lcd_driver|data_req~7_combout\ & \u_lcd_driver|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|data_req~7_combout\,
	datac => \u_lcd_driver|Add0~10_combout\,
	combout => \u_lcd_display|Add0~0_combout\);

-- Location: LCCOMB_X17_Y19_N10
\u_lcd_driver|pixel_xpos[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|pixel_xpos[3]~2_combout\ = (\u_lcd_driver|Add0~6_combout\ & (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~6_combout\,
	datab => \u_lcd_driver|data_req~4_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_driver|data_req~2_combout\,
	combout => \u_lcd_driver|pixel_xpos[3]~2_combout\);

-- Location: LCCOMB_X18_Y17_N2
\u_lcd_driver|pixel_xpos[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|pixel_xpos[1]~4_combout\ = (\u_lcd_driver|Add0~2_combout\ & (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~6_combout\) # (\u_lcd_driver|data_req~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~6_combout\,
	datab => \u_lcd_driver|Add0~2_combout\,
	datac => \u_lcd_driver|data_req~2_combout\,
	datad => \u_lcd_driver|data_req~4_combout\,
	combout => \u_lcd_driver|pixel_xpos[1]~4_combout\);

-- Location: LCCOMB_X17_Y19_N20
\u_lcd_driver|pixel_xpos[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|pixel_xpos[0]~3_combout\ = (\u_lcd_driver|Add0~0_combout\ & (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~6_combout\) # (\u_lcd_driver|data_req~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~6_combout\,
	datab => \u_lcd_driver|data_req~4_combout\,
	datac => \u_lcd_driver|Add0~0_combout\,
	datad => \u_lcd_driver|data_req~2_combout\,
	combout => \u_lcd_driver|pixel_xpos[0]~3_combout\);

-- Location: LCCOMB_X18_Y17_N24
\u_lcd_driver|pixel_xpos[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|pixel_xpos[2]~1_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_driver|Add0~4_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~4_combout\,
	datab => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_driver|Add0~4_combout\,
	combout => \u_lcd_driver|pixel_xpos[2]~1_combout\);

-- Location: LCCOMB_X18_Y17_N20
\u_lcd_display|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~2_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux9~2_combout\);

-- Location: LCCOMB_X14_Y17_N0
\u_lcd_display|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~0_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[4]~0_combout\) # ((\u_lcd_driver|pixel_xpos[3]~2_combout\) # (\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y19_N30
\u_lcd_display|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Add0~1_combout\ = (\u_lcd_driver|data_req~7_combout\ & (\u_lcd_driver|Add0~12_combout\ $ (((\u_lcd_driver|Add0~8_combout\) # (\u_lcd_driver|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~12_combout\,
	datab => \u_lcd_driver|data_req~7_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~10_combout\,
	combout => \u_lcd_display|Add0~1_combout\);

-- Location: LCCOMB_X14_Y17_N2
\u_lcd_display|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~1_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_display|Mux8~0_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (!\u_lcd_display|Mux8~0_combout\ & !\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_display|Mux8~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux8~1_combout\);

-- Location: LCCOMB_X17_Y17_N24
\u_lcd_display|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux13~0_combout\ = (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux8~1_combout\) # ((\u_lcd_display|Mux9~2_combout\ & !\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux9~2_combout\,
	datac => \u_lcd_display|Mux8~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y18_N26
\u_lcd_display|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux13~1_combout\ = ((!\u_lcd_driver|Add0~2_combout\ & !\u_lcd_driver|Add0~4_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|Add0~4_combout\,
	combout => \u_lcd_display|Mux13~1_combout\);

-- Location: LCCOMB_X19_Y16_N24
\u_lcd_display|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~3_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\) # ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux8~3_combout\);

-- Location: LCCOMB_X18_Y17_N14
\u_lcd_display|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~2_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- ((!\u_lcd_driver|pixel_xpos[0]~3_combout\) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux8~2_combout\);

-- Location: LCCOMB_X18_Y17_N0
\u_lcd_display|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux13~2_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Mux8~2_combout\) # (\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_display|Mux8~3_combout\ & 
-- ((!\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux8~3_combout\,
	datab => \u_lcd_display|Mux8~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux13~2_combout\);

-- Location: LCCOMB_X18_Y17_N26
\u_lcd_display|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux13~3_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\))))) # 
-- (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux13~3_combout\);

-- Location: LCCOMB_X18_Y17_N28
\u_lcd_display|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux13~4_combout\ = (\u_lcd_display|Mux13~2_combout\ & (((\u_lcd_display|Mux13~3_combout\) # (!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_display|Mux13~2_combout\ & (\u_lcd_display|Mux13~1_combout\ & ((\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux13~1_combout\,
	datab => \u_lcd_display|Mux13~2_combout\,
	datac => \u_lcd_display|Mux13~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux13~4_combout\);

-- Location: LCCOMB_X17_Y17_N10
\u_lcd_display|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux13~5_combout\ = (\u_lcd_display|Mux13~0_combout\) # ((\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Mux13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux13~0_combout\,
	datad => \u_lcd_display|Mux13~4_combout\,
	combout => \u_lcd_display|Mux13~5_combout\);

-- Location: LCCOMB_X19_Y17_N10
\u_lcd_display|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~1_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux9~1_combout\);

-- Location: LCCOMB_X19_Y17_N24
\u_lcd_display|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~0_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- ((!\u_lcd_driver|pixel_xpos[1]~4_combout\))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y17_N18
\u_lcd_display|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~8_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_display|Mux9~0_combout\ $ (\u_lcd_display|Add0~1_combout\)) # 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Mux9~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux9~8_combout\);

-- Location: LCCOMB_X19_Y17_N4
\u_lcd_display|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~9_combout\ = (\u_lcd_display|Mux9~8_combout\ & (\u_lcd_display|Mux9~1_combout\ $ (((!\u_lcd_display|Mux9~0_combout\ & !\u_lcd_display|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux9~1_combout\,
	datab => \u_lcd_display|Mux9~0_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux9~8_combout\,
	combout => \u_lcd_display|Mux9~9_combout\);

-- Location: LCCOMB_X19_Y17_N22
\u_lcd_display|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux9~4_combout\);

-- Location: LCCOMB_X19_Y17_N12
\u_lcd_display|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~3_combout\ = (\u_lcd_display|Add0~1_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\)) # (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux9~2_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\) # 
-- (\u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Mux9~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux9~3_combout\);

-- Location: LCCOMB_X19_Y17_N0
\u_lcd_display|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~5_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_display|Mux9~4_combout\ & \u_lcd_display|Mux9~3_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & (!\u_lcd_display|Mux9~4_combout\ 
-- & !\u_lcd_display|Mux9~3_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & (((\u_lcd_display|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_display|Mux9~4_combout\,
	datad => \u_lcd_display|Mux9~3_combout\,
	combout => \u_lcd_display|Mux9~5_combout\);

-- Location: LCCOMB_X19_Y17_N26
\u_lcd_display|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~6_combout\ = (\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux9~9_combout\)) # (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux9~9_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux9~5_combout\,
	combout => \u_lcd_display|Mux9~6_combout\);

-- Location: LCCOMB_X17_Y17_N20
\u_lcd_display|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~0_combout\ = (\u_lcd_driver|Add1~2_combout\ & (((\u_lcd_display|Mux9~6_combout\) # (\u_lcd_driver|Add1~4_combout\)))) # (!\u_lcd_driver|Add1~2_combout\ & (\u_lcd_display|Mux13~5_combout\ & ((!\u_lcd_driver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux13~5_combout\,
	datab => \u_lcd_display|Mux9~6_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_driver|Add1~4_combout\,
	combout => \u_lcd_display|Mux32~0_combout\);

-- Location: LCCOMB_X13_Y18_N0
\u_lcd_display|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux1~0_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y18_N2
\u_lcd_display|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux1~1_combout\ = (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_display|Mux1~0_combout\ & (!\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_display|Mux1~0_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y19_N8
\u_lcd_display|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~0_combout\ = (\u_lcd_driver|Add0~2_combout\ & (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~2_combout\,
	datab => \u_lcd_driver|data_req~4_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_driver|data_req~2_combout\,
	combout => \u_lcd_display|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y18_N18
\u_lcd_display|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~1_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((!\u_lcd_display|Mux4~0_combout\) # (!\u_lcd_driver|Add0~0_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|Add0~0_combout\ & \u_lcd_display|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|Add0~0_combout\,
	datad => \u_lcd_display|Mux4~0_combout\,
	combout => \u_lcd_display|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y18_N30
\u_lcd_display|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~11_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & !\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (!\u_lcd_driver|pixel_xpos[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux5~11_combout\);

-- Location: LCCOMB_X18_Y18_N20
\u_lcd_display|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~10_combout\ = ((\u_lcd_driver|Add0~4_combout\ & ((\u_lcd_driver|Add0~2_combout\) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\))) # (!\u_lcd_driver|Add0~4_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\) # 
-- (!\u_lcd_driver|Add0~2_combout\)))) # (!\u_lcd_driver|data_req~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~4_combout\,
	datab => \u_lcd_driver|data_req~7_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|Add0~2_combout\,
	combout => \u_lcd_display|Mux5~10_combout\);

-- Location: LCCOMB_X18_Y18_N0
\u_lcd_display|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~12_combout\ = (\u_lcd_display|Add0~0_combout\ & (((\u_lcd_driver|pixel_xpos[3]~2_combout\)))) # (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((!\u_lcd_display|Mux5~10_combout\))) # 
-- (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_display|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux5~11_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux5~10_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux5~12_combout\);

-- Location: LCCOMB_X18_Y18_N26
\u_lcd_display|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~13_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (((!\u_lcd_driver|pixel_xpos[4]~0_combout\) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux5~13_combout\);

-- Location: LCCOMB_X18_Y18_N12
\u_lcd_display|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~14_combout\ = (\u_lcd_display|Mux5~12_combout\ & (((\u_lcd_display|Mux5~13_combout\) # (!\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_display|Mux5~12_combout\ & (!\u_lcd_display|Mux4~1_combout\ & ((\u_lcd_display|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux4~1_combout\,
	datab => \u_lcd_display|Mux5~12_combout\,
	datac => \u_lcd_display|Mux5~13_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux5~14_combout\);

-- Location: LCCOMB_X18_Y19_N26
\u_lcd_display|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~4_combout\ = (\u_lcd_driver|Add0~6_combout\) # ((\u_lcd_driver|Add0~2_combout\) # ((\u_lcd_driver|Add0~8_combout\) # (\u_lcd_driver|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~6_combout\,
	datab => \u_lcd_driver|Add0~2_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~0_combout\,
	combout => \u_lcd_display|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y18_N4
\u_lcd_display|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~5_combout\ = (((!\u_lcd_driver|data_req~6_combout\ & !\u_lcd_driver|data_req~4_combout\)) # (!\u_lcd_display|Mux5~4_combout\)) # (!\u_lcd_driver|data_req~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~6_combout\,
	datab => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_display|Mux5~4_combout\,
	datad => \u_lcd_driver|data_req~4_combout\,
	combout => \u_lcd_display|Mux5~5_combout\);

-- Location: LCCOMB_X18_Y19_N24
\u_lcd_display|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~2_combout\ = (\u_lcd_driver|Add0~6_combout\ & (\u_lcd_driver|Add0~2_combout\ & (\u_lcd_driver|Add0~8_combout\ & \u_lcd_driver|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~6_combout\,
	datab => \u_lcd_driver|Add0~2_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~0_combout\,
	combout => \u_lcd_display|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y18_N2
\u_lcd_display|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~3_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_display|Mux5~2_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~4_combout\,
	datab => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_display|Mux5~2_combout\,
	combout => \u_lcd_display|Mux5~3_combout\);

-- Location: LCCOMB_X19_Y18_N22
\u_lcd_display|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~6_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_display|Add0~0_combout\) # ((\u_lcd_display|Mux5~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_display|Add0~0_combout\ & 
-- (\u_lcd_display|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux5~5_combout\,
	datad => \u_lcd_display|Mux5~3_combout\,
	combout => \u_lcd_display|Mux5~6_combout\);

-- Location: LCCOMB_X18_Y19_N22
\u_lcd_display|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~0_combout\ = (\u_lcd_driver|Add0~2_combout\ & (\u_lcd_driver|Add0~8_combout\ $ (((\u_lcd_driver|Add0~0_combout\) # (!\u_lcd_driver|Add0~6_combout\))))) # (!\u_lcd_driver|Add0~2_combout\ & (\u_lcd_driver|Add0~6_combout\ & 
-- (\u_lcd_driver|Add0~8_combout\ & \u_lcd_driver|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~6_combout\,
	datab => \u_lcd_driver|Add0~2_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~0_combout\,
	combout => \u_lcd_display|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\u_lcd_display|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~1_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_display|Mux5~0_combout\ & ((\u_lcd_driver|data_req~6_combout\) # (\u_lcd_driver|data_req~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~6_combout\,
	datab => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_display|Mux5~0_combout\,
	datad => \u_lcd_driver|data_req~4_combout\,
	combout => \u_lcd_display|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y19_N20
\u_lcd_display|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~7_combout\ = (!\u_lcd_driver|Add0~2_combout\ & (!\u_lcd_driver|Add0~0_combout\ & (\u_lcd_driver|Add0~6_combout\ $ (\u_lcd_driver|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add0~6_combout\,
	datab => \u_lcd_driver|Add0~2_combout\,
	datac => \u_lcd_driver|Add0~8_combout\,
	datad => \u_lcd_driver|Add0~0_combout\,
	combout => \u_lcd_display|Mux5~7_combout\);

-- Location: LCCOMB_X19_Y18_N16
\u_lcd_display|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~8_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_display|Mux5~7_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~4_combout\,
	datab => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_display|Mux5~7_combout\,
	combout => \u_lcd_display|Mux5~8_combout\);

-- Location: LCCOMB_X19_Y18_N18
\u_lcd_display|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~9_combout\ = (\u_lcd_display|Mux5~6_combout\ & (((\u_lcd_display|Mux5~8_combout\)) # (!\u_lcd_display|Add0~0_combout\))) # (!\u_lcd_display|Mux5~6_combout\ & (\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux5~6_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux5~1_combout\,
	datad => \u_lcd_display|Mux5~8_combout\,
	combout => \u_lcd_display|Mux5~9_combout\);

-- Location: LCCOMB_X19_Y18_N20
\u_lcd_display|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux5~15_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux5~9_combout\))) # (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux5~14_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux5~9_combout\,
	combout => \u_lcd_display|Mux5~15_combout\);

-- Location: LCCOMB_X17_Y17_N14
\u_lcd_display|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~1_combout\ = (\u_lcd_driver|Add1~4_combout\ & ((\u_lcd_display|Mux32~0_combout\ & (\u_lcd_display|Mux1~1_combout\)) # (!\u_lcd_display|Mux32~0_combout\ & ((\u_lcd_display|Mux5~15_combout\))))) # (!\u_lcd_driver|Add1~4_combout\ & 
-- (\u_lcd_display|Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add1~4_combout\,
	datab => \u_lcd_display|Mux32~0_combout\,
	datac => \u_lcd_display|Mux1~1_combout\,
	datad => \u_lcd_display|Mux5~15_combout\,
	combout => \u_lcd_display|Mux32~1_combout\);

-- Location: LCCOMB_X17_Y18_N22
\u_lcd_display|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux12~2_combout\ = (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux12~2_combout\);

-- Location: LCCOMB_X17_Y18_N20
\u_lcd_display|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux12~0_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ (!\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux12~0_combout\);

-- Location: LCCOMB_X16_Y16_N22
\u_lcd_display|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~0_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux23~0_combout\);

-- Location: LCCOMB_X16_Y16_N0
\u_lcd_display|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~0_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ (\u_lcd_driver|pixel_xpos[3]~2_combout\)))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ ((\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux11~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\u_lcd_display|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux12~1_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_display|Mux23~0_combout\) # ((\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((!\u_lcd_display|Mux11~0_combout\ & 
-- !\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux23~0_combout\,
	datab => \u_lcd_display|Mux11~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux12~1_combout\);

-- Location: LCCOMB_X17_Y18_N0
\u_lcd_display|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux12~3_combout\ = (\u_lcd_display|Mux12~1_combout\ & ((\u_lcd_display|Mux12~2_combout\) # ((!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_display|Mux12~1_combout\ & (((\u_lcd_display|Mux12~0_combout\ & \u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux12~2_combout\,
	datab => \u_lcd_display|Mux12~0_combout\,
	datac => \u_lcd_display|Mux12~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux12~3_combout\);

-- Location: LCCOMB_X17_Y17_N22
\u_lcd_display|Mux32~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~7_combout\ = (!\u_lcd_driver|Add1~4_combout\ & ((\u_lcd_display|Mux13~0_combout\) # ((\u_lcd_display|Mux12~3_combout\ & \u_lcd_display|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add1~4_combout\,
	datab => \u_lcd_display|Mux13~0_combout\,
	datac => \u_lcd_display|Mux12~3_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux32~7_combout\);

-- Location: LCCOMB_X13_Y18_N12
\u_lcd_display|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~2_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((!\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[3]~2_combout\) # ((\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux4~2_combout\);

-- Location: LCCOMB_X13_Y18_N14
\u_lcd_display|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~3_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (!\u_lcd_driver|pixel_xpos[1]~4_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ & !\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- !\u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux4~3_combout\);

-- Location: LCCOMB_X13_Y18_N24
\u_lcd_display|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~4_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_display|Mux1~0_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_display|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux1~0_combout\,
	datac => \u_lcd_display|Mux4~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux4~4_combout\);

-- Location: LCCOMB_X13_Y18_N10
\u_lcd_display|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~5_combout\ = (\u_lcd_display|Mux4~4_combout\ & ((\u_lcd_display|Add0~0_combout\ & ((!\u_lcd_driver|pixel_xpos[0]~3_combout\) # (!\u_lcd_display|Mux4~2_combout\))) # (!\u_lcd_display|Add0~0_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[0]~3_combout\))))) # (!\u_lcd_display|Mux4~4_combout\ & (!\u_lcd_display|Mux4~2_combout\ & (\u_lcd_display|Add0~0_combout\ $ (!\u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux4~2_combout\,
	datab => \u_lcd_display|Mux4~4_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux4~5_combout\);

-- Location: LCCOMB_X18_Y18_N16
\u_lcd_display|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~9_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (((!\u_lcd_driver|pixel_xpos[4]~0_combout\) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (\u_lcd_driver|pixel_xpos[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux4~9_combout\);

-- Location: LCCOMB_X18_Y16_N24
\u_lcd_display|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~6_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((!\u_lcd_driver|pixel_xpos[0]~3_combout\) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & !\u_lcd_driver|pixel_xpos[0]~3_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- \u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux4~6_combout\);

-- Location: LCCOMB_X18_Y16_N10
\u_lcd_display|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~7_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (\u_lcd_driver|pixel_xpos[0]~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & !\u_lcd_driver|pixel_xpos[0]~3_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- \u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux4~7_combout\);

-- Location: LCCOMB_X18_Y16_N20
\u_lcd_display|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~8_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_display|Mux4~6_combout\) # ((\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((!\u_lcd_display|Add0~0_combout\ & 
-- \u_lcd_display|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Mux4~6_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux4~7_combout\,
	combout => \u_lcd_display|Mux4~8_combout\);

-- Location: LCCOMB_X18_Y18_N2
\u_lcd_display|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux4~10_combout\ = (\u_lcd_display|Mux4~8_combout\ & (((\u_lcd_display|Mux4~9_combout\) # (!\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_display|Mux4~8_combout\ & (!\u_lcd_display|Mux4~1_combout\ & ((\u_lcd_display|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux4~1_combout\,
	datab => \u_lcd_display|Mux4~9_combout\,
	datac => \u_lcd_display|Mux4~8_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux4~10_combout\);

-- Location: LCCOMB_X17_Y17_N0
\u_lcd_display|Mux32~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~8_combout\ = (\u_lcd_driver|Add1~4_combout\ & ((\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux4~5_combout\)) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux4~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add1~4_combout\,
	datab => \u_lcd_display|Mux4~5_combout\,
	datac => \u_lcd_display|Mux4~10_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux32~8_combout\);

-- Location: LCCOMB_X14_Y18_N8
\u_lcd_display|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux8~4_combout\);

-- Location: LCCOMB_X18_Y17_N4
\u_lcd_display|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~5_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_driver|pixel_xpos[0]~3_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\) # 
-- (\u_lcd_driver|pixel_xpos[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux8~5_combout\);

-- Location: LCCOMB_X18_Y17_N22
\u_lcd_display|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux8~6_combout\ = (\u_lcd_display|Mux13~2_combout\ & (((\u_lcd_display|Mux8~5_combout\) # (!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_display|Mux13~2_combout\ & (\u_lcd_display|Mux8~4_combout\ & ((\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux8~4_combout\,
	datab => \u_lcd_display|Mux13~2_combout\,
	datac => \u_lcd_display|Mux8~5_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux8~6_combout\);

-- Location: LCCOMB_X17_Y17_N28
\u_lcd_display|Mux32~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~28_combout\ = (!\u_lcd_driver|Add1~4_combout\ & ((\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux8~6_combout\)) # (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|Add1~4_combout\,
	datab => \u_lcd_display|Mux8~6_combout\,
	datac => \u_lcd_display|Mux8~1_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux32~28_combout\);

-- Location: LCCOMB_X17_Y17_N30
\u_lcd_display|Mux32~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~29_combout\ = (\u_lcd_driver|Add1~2_combout\ & (((\u_lcd_display|Mux32~28_combout\)))) # (!\u_lcd_driver|Add1~2_combout\ & ((\u_lcd_display|Mux32~7_combout\) # ((\u_lcd_display|Mux32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~7_combout\,
	datab => \u_lcd_display|Mux32~8_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_display|Mux32~28_combout\,
	combout => \u_lcd_display|Mux32~29_combout\);

-- Location: LCCOMB_X14_Y18_N10
\u_lcd_display|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~5_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\)))) # 
-- (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # ((\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux2~5_combout\);

-- Location: LCCOMB_X14_Y18_N22
\u_lcd_display|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~3_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_display|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y18_N0
\u_lcd_display|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~4_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_display|Mux2~3_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ 
-- (\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Mux2~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux2~4_combout\);

-- Location: LCCOMB_X14_Y18_N4
\u_lcd_display|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~2_combout\ = (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_display|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y18_N20
\u_lcd_display|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~6_combout\ = (\u_lcd_display|Mux2~4_combout\ & (((!\u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_display|Mux2~5_combout\))) # (!\u_lcd_display|Mux2~4_combout\ & (((\u_lcd_display|Mux2~2_combout\ & 
-- \u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux2~5_combout\,
	datab => \u_lcd_display|Mux2~4_combout\,
	datac => \u_lcd_display|Mux2~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux2~6_combout\);

-- Location: LCCOMB_X14_Y18_N16
\u_lcd_display|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~0_combout\ = (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_driver|pixel_xpos[0]~3_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- \u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y18_N18
\u_lcd_display|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~1_combout\ = (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_display|Mux2~0_combout\ & (\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Mux2~0_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y18_N30
\u_lcd_display|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux2~7_combout\ = (\u_lcd_display|Mux2~1_combout\) # ((\u_lcd_display|Mux2~6_combout\ & !\u_lcd_display|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux2~6_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux2~1_combout\,
	combout => \u_lcd_display|Mux2~7_combout\);

-- Location: LCCOMB_X18_Y17_N30
\u_lcd_display|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux10~0_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (\u_lcd_driver|pixel_xpos[0]~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y17_N8
\u_lcd_display|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux10~1_combout\ = (\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux10~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (!\u_lcd_display|Mux13~2_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & 
-- (((\u_lcd_display|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux10~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux13~2_combout\,
	combout => \u_lcd_display|Mux10~1_combout\);

-- Location: LCCOMB_X17_Y17_N8
\u_lcd_display|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux10~2_combout\ = (\u_lcd_display|Mux13~0_combout\) # ((\u_lcd_display|Mux10~1_combout\ & \u_lcd_display|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux13~0_combout\,
	datac => \u_lcd_display|Mux10~1_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux10~2_combout\);

-- Location: LCCOMB_X14_Y17_N12
\u_lcd_display|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~3_combout\ = (\u_lcd_display|Add0~1_combout\ & (((!\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\) # ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- \u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux6~3_combout\);

-- Location: LCCOMB_X14_Y17_N10
\u_lcd_display|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~0_combout\ = (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y17_N14
\u_lcd_display|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~4_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_display|Mux3~0_combout\ & \u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_display|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux6~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Mux3~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux6~4_combout\);

-- Location: LCCOMB_X14_Y17_N22
\u_lcd_display|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~1_combout\ = (\u_lcd_display|Add0~1_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & !\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_display|Add0~1_combout\ & 
-- (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (((\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux6~1_combout\);

-- Location: LCCOMB_X14_Y17_N28
\u_lcd_display|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~0_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & \u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y17_N24
\u_lcd_display|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~2_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Mux6~0_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux6~1_combout\ & 
-- ((!\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux6~1_combout\,
	datab => \u_lcd_display|Mux6~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux6~2_combout\);

-- Location: LCCOMB_X14_Y17_N8
\u_lcd_display|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~5_combout\ = (\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux6~4_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\))) # (!\u_lcd_display|Add0~0_combout\ & (((\u_lcd_display|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux6~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux6~2_combout\,
	combout => \u_lcd_display|Mux6~5_combout\);

-- Location: LCCOMB_X14_Y17_N26
\u_lcd_display|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~7_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (\u_lcd_driver|pixel_xpos[3]~2_combout\ $ (\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux6~7_combout\);

-- Location: LCCOMB_X14_Y17_N20
\u_lcd_display|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~8_combout\ = (\u_lcd_display|Mux6~7_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ $ ((\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_display|Mux6~7_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ & !\u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Mux6~7_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux6~8_combout\);

-- Location: LCCOMB_X14_Y17_N18
\u_lcd_display|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux6~6_combout\ = (\u_lcd_display|Mux6~5_combout\) # ((\u_lcd_display|Add0~0_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_display|Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux6~5_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux6~8_combout\,
	combout => \u_lcd_display|Mux6~6_combout\);

-- Location: LCCOMB_X16_Y16_N18
\u_lcd_display|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~3_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- !\u_lcd_driver|pixel_xpos[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux14~3_combout\);

-- Location: LCCOMB_X16_Y16_N12
\u_lcd_display|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~4_combout\ = (\u_lcd_display|Add0~0_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux14~3_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ 
-- (!\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux14~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux14~4_combout\);

-- Location: LCCOMB_X16_Y16_N8
\u_lcd_display|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~5_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux14~4_combout\ & (\u_lcd_display|Mux23~0_combout\)) # (!\u_lcd_display|Mux14~4_combout\ & ((!\u_lcd_display|Mux11~0_combout\))))) # (!\u_lcd_display|Add0~0_combout\ & 
-- (((\u_lcd_display|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux23~0_combout\,
	datab => \u_lcd_display|Mux11~0_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux14~4_combout\,
	combout => \u_lcd_display|Mux14~5_combout\);

-- Location: LCCOMB_X18_Y17_N18
\u_lcd_display|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~0_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_driver|pixel_xpos[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y16_N0
\u_lcd_display|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~1_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	combout => \u_lcd_display|Mux19~1_combout\);

-- Location: LCCOMB_X17_Y19_N14
\u_lcd_display|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~0_combout\ = (\u_lcd_driver|Add0~10_combout\ & (\u_lcd_driver|data_req~2_combout\ & ((\u_lcd_driver|data_req~6_combout\) # (\u_lcd_driver|data_req~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~6_combout\,
	datab => \u_lcd_driver|data_req~4_combout\,
	datac => \u_lcd_driver|Add0~10_combout\,
	datad => \u_lcd_driver|data_req~2_combout\,
	combout => \u_lcd_display|Mux19~0_combout\);

-- Location: LCCOMB_X18_Y16_N2
\u_lcd_display|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~2_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Mux19~1_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)) # (!\u_lcd_display|Mux19~0_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (!\u_lcd_display|Mux19~1_combout\ & (!\u_lcd_display|Mux19~0_combout\ & !\u_lcd_driver|pixel_xpos[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Mux19~1_combout\,
	datac => \u_lcd_display|Mux19~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux19~2_combout\);

-- Location: LCCOMB_X18_Y18_N14
\u_lcd_display|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~1_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux14~1_combout\);

-- Location: LCCOMB_X18_Y16_N12
\u_lcd_display|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~2_combout\ = (\u_lcd_display|Mux19~2_combout\ & (((\u_lcd_display|Mux14~1_combout\) # (!\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_display|Mux19~2_combout\ & (\u_lcd_display|Mux14~0_combout\ & (\u_lcd_display|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux14~0_combout\,
	datab => \u_lcd_display|Mux19~2_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux14~1_combout\,
	combout => \u_lcd_display|Mux14~2_combout\);

-- Location: LCCOMB_X18_Y16_N22
\u_lcd_display|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux14~6_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux14~2_combout\))) # (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_display|Mux14~5_combout\,
	datad => \u_lcd_display|Mux14~2_combout\,
	combout => \u_lcd_display|Mux14~6_combout\);

-- Location: LCCOMB_X17_Y17_N2
\u_lcd_display|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~2_combout\ = (\u_lcd_driver|Add1~2_combout\ & (((\u_lcd_driver|Add1~4_combout\)))) # (!\u_lcd_driver|Add1~2_combout\ & ((\u_lcd_driver|Add1~4_combout\ & (\u_lcd_display|Mux6~6_combout\)) # (!\u_lcd_driver|Add1~4_combout\ & 
-- ((\u_lcd_display|Mux14~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux6~6_combout\,
	datab => \u_lcd_display|Mux14~6_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_driver|Add1~4_combout\,
	combout => \u_lcd_display|Mux32~2_combout\);

-- Location: LCCOMB_X17_Y17_N12
\u_lcd_display|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~3_combout\ = (\u_lcd_driver|Add1~2_combout\ & ((\u_lcd_display|Mux32~2_combout\ & (\u_lcd_display|Mux2~7_combout\)) # (!\u_lcd_display|Mux32~2_combout\ & ((\u_lcd_display|Mux10~2_combout\))))) # (!\u_lcd_driver|Add1~2_combout\ & 
-- (((\u_lcd_display|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux2~7_combout\,
	datab => \u_lcd_display|Mux10~2_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_display|Mux32~2_combout\,
	combout => \u_lcd_display|Mux32~3_combout\);

-- Location: LCCOMB_X13_Y18_N26
\u_lcd_display|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # ((!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- \u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux3~4_combout\);

-- Location: LCCOMB_X13_Y18_N22
\u_lcd_display|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~6_combout\ = (\u_lcd_display|Mux3~4_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ ((\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_display|Mux3~4_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (!\u_lcd_display|Add0~0_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux3~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux3~6_combout\);

-- Location: LCCOMB_X13_Y18_N16
\u_lcd_display|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~3_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\) # ((!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y18_N4
\u_lcd_display|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~5_combout\ = (\u_lcd_display|Mux3~4_combout\ & (((\u_lcd_display|Add0~0_combout\ & !\u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\))) # (!\u_lcd_display|Mux3~4_combout\ & 
-- (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ (((!\u_lcd_display|Add0~0_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux3~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux3~5_combout\);

-- Location: LCCOMB_X13_Y18_N8
\u_lcd_display|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~7_combout\ = (\u_lcd_display|Mux3~3_combout\ & (((\u_lcd_display|Mux3~5_combout\ & !\u_lcd_display|Mux3~0_combout\)) # (!\u_lcd_display|Mux3~6_combout\))) # (!\u_lcd_display|Mux3~3_combout\ & (\u_lcd_display|Mux3~6_combout\ $ 
-- ((\u_lcd_display|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux3~6_combout\,
	datab => \u_lcd_display|Mux3~3_combout\,
	datac => \u_lcd_display|Mux3~5_combout\,
	datad => \u_lcd_display|Mux3~0_combout\,
	combout => \u_lcd_display|Mux3~7_combout\);

-- Location: LCCOMB_X13_Y18_N6
\u_lcd_display|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~2_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (((!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux3~2_combout\);

-- Location: LCCOMB_X13_Y18_N20
\u_lcd_display|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~1_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\) # (\u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y18_N28
\u_lcd_display|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~9_combout\ = (\u_lcd_display|Mux3~2_combout\ & ((\u_lcd_display|Mux3~1_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\))) # (!\u_lcd_display|Mux3~1_combout\ & ((\u_lcd_display|Add0~0_combout\) # 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\))))) # (!\u_lcd_display|Mux3~2_combout\ & ((\u_lcd_display|Mux3~1_combout\) # ((\u_lcd_display|Add0~0_combout\ & !\u_lcd_driver|pixel_xpos[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux3~2_combout\,
	datab => \u_lcd_display|Mux3~1_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	combout => \u_lcd_display|Mux3~9_combout\);

-- Location: LCCOMB_X13_Y18_N30
\u_lcd_display|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~10_combout\ = (\u_lcd_display|Mux3~2_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_display|Mux3~9_combout\)) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_display|Add0~0_combout\))))) # 
-- (!\u_lcd_display|Mux3~2_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_display|Add0~0_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_display|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux3~2_combout\,
	datab => \u_lcd_display|Mux3~9_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux3~10_combout\);

-- Location: LCCOMB_X13_Y18_N18
\u_lcd_display|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux3~8_combout\ = (\u_lcd_display|Add0~1_combout\ & (!\u_lcd_display|Mux3~7_combout\)) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux3~7_combout\,
	datac => \u_lcd_display|Mux3~10_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux3~8_combout\);

-- Location: LCCOMB_X17_Y18_N28
\u_lcd_display|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_driver|pixel_xpos[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux11~4_combout\);

-- Location: LCCOMB_X19_Y16_N10
\u_lcd_display|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~3_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((!\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_driver|pixel_xpos[1]~4_combout\) # 
-- (!\u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux11~3_combout\);

-- Location: LCCOMB_X16_Y16_N26
\u_lcd_display|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~5_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_display|Add0~0_combout\) # (!\u_lcd_display|Mux11~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_display|Mux11~4_combout\ & 
-- (!\u_lcd_display|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux11~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux11~3_combout\,
	combout => \u_lcd_display|Mux11~5_combout\);

-- Location: LCCOMB_X16_Y16_N20
\u_lcd_display|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~6_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux11~5_combout\ & (\u_lcd_display|Mux23~0_combout\)) # (!\u_lcd_display|Mux11~5_combout\ & ((!\u_lcd_display|Mux11~0_combout\))))) # (!\u_lcd_display|Add0~0_combout\ & 
-- (((\u_lcd_display|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux23~0_combout\,
	datab => \u_lcd_display|Mux11~0_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux11~5_combout\,
	combout => \u_lcd_display|Mux11~6_combout\);

-- Location: LCCOMB_X17_Y16_N16
\u_lcd_display|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~0_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux27~0_combout\);

-- Location: LCCOMB_X17_Y16_N2
\u_lcd_display|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~1_combout\ = (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux27~0_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_display|Mux27~0_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux27~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux27~1_combout\);

-- Location: LCCOMB_X17_Y16_N28
\u_lcd_display|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~1_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_display|Mux19~0_combout\ & !\u_lcd_driver|pixel_xpos[0]~3_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_display|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Mux19~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux11~1_combout\);

-- Location: LCCOMB_X17_Y16_N30
\u_lcd_display|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~2_combout\ = (\u_lcd_display|Mux27~1_combout\) # ((\u_lcd_display|Mux11~1_combout\ & (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux27~1_combout\,
	datab => \u_lcd_display|Mux11~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux11~2_combout\);

-- Location: LCCOMB_X17_Y16_N0
\u_lcd_display|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux11~7_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux11~2_combout\))) # (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux11~6_combout\,
	datac => \u_lcd_display|Mux11~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux11~7_combout\);

-- Location: LCCOMB_X16_Y16_N16
\u_lcd_display|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~6_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_display|Add0~1_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ $ (!\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux7~6_combout\);

-- Location: LCCOMB_X16_Y16_N6
\u_lcd_display|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~5_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux7~5_combout\);

-- Location: LCCOMB_X16_Y16_N2
\u_lcd_display|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~7_combout\ = (\u_lcd_display|Mux7~6_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_display|Mux23~0_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((!\u_lcd_display|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux23~0_combout\,
	datab => \u_lcd_display|Mux7~6_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Mux7~5_combout\,
	combout => \u_lcd_display|Mux7~7_combout\);

-- Location: LCCOMB_X17_Y18_N30
\u_lcd_display|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~0_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Add0~1_combout\ $ (((!\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\u_lcd_display|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~1_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (((\u_lcd_display|Add0~1_combout\))))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux7~1_combout\);

-- Location: LCCOMB_X14_Y17_N6
\u_lcd_display|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~2_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux7~1_combout\ & 
-- \u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_display|Mux7~1_combout\ & !\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_display|Mux7~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux7~2_combout\);

-- Location: LCCOMB_X17_Y18_N24
\u_lcd_display|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~3_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_display|Add0~1_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_display|Add0~1_combout\ & 
-- (\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux7~3_combout\);

-- Location: LCCOMB_X17_Y18_N18
\u_lcd_display|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~4_combout\ = (\u_lcd_display|Mux7~2_combout\ & (((\u_lcd_display|Mux7~3_combout\) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\)))) # (!\u_lcd_display|Mux7~2_combout\ & (\u_lcd_display|Mux7~0_combout\ & 
-- (\u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux7~0_combout\,
	datab => \u_lcd_display|Mux7~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Mux7~3_combout\,
	combout => \u_lcd_display|Mux7~4_combout\);

-- Location: LCCOMB_X17_Y17_N6
\u_lcd_display|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux7~8_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux7~4_combout\))) # (!\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux7~7_combout\,
	datac => \u_lcd_display|Mux7~4_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux7~8_combout\);

-- Location: LCCOMB_X18_Y17_N16
\u_lcd_display|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux15~2_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ $ (\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ $ (\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux15~2_combout\);

-- Location: LCCOMB_X18_Y17_N12
\u_lcd_display|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux15~0_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_driver|pixel_xpos[1]~4_combout\) # (\u_lcd_driver|pixel_xpos[0]~3_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- (\u_lcd_driver|pixel_xpos[3]~2_combout\ $ (((\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux15~0_combout\);

-- Location: LCCOMB_X18_Y17_N6
\u_lcd_display|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux15~1_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Mux8~2_combout\) # (\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_display|Mux15~0_combout\ & 
-- ((!\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux15~0_combout\,
	datab => \u_lcd_display|Mux8~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux15~1_combout\);

-- Location: LCCOMB_X18_Y17_N10
\u_lcd_display|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux15~3_combout\ = (\u_lcd_display|Mux15~1_combout\ & ((\u_lcd_display|Mux15~2_combout\) # ((!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_display|Mux15~1_combout\ & (((\u_lcd_display|Mux14~0_combout\ & \u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux15~2_combout\,
	datab => \u_lcd_display|Mux14~0_combout\,
	datac => \u_lcd_display|Mux15~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux15~3_combout\);

-- Location: LCCOMB_X17_Y17_N16
\u_lcd_display|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux15~4_combout\ = (\u_lcd_display|Mux13~0_combout\) # ((\u_lcd_display|Mux15~3_combout\ & \u_lcd_display|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux13~0_combout\,
	datac => \u_lcd_display|Mux15~3_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux15~4_combout\);

-- Location: LCCOMB_X17_Y17_N18
\u_lcd_display|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~4_combout\ = (\u_lcd_driver|Add1~2_combout\ & (((\u_lcd_driver|Add1~4_combout\)))) # (!\u_lcd_driver|Add1~2_combout\ & ((\u_lcd_driver|Add1~4_combout\ & (\u_lcd_display|Mux7~8_combout\)) # (!\u_lcd_driver|Add1~4_combout\ & 
-- ((\u_lcd_display|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux7~8_combout\,
	datab => \u_lcd_display|Mux15~4_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_driver|Add1~4_combout\,
	combout => \u_lcd_display|Mux32~4_combout\);

-- Location: LCCOMB_X17_Y17_N4
\u_lcd_display|Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~5_combout\ = (\u_lcd_driver|Add1~2_combout\ & ((\u_lcd_display|Mux32~4_combout\ & (\u_lcd_display|Mux3~8_combout\)) # (!\u_lcd_display|Mux32~4_combout\ & ((\u_lcd_display|Mux11~7_combout\))))) # (!\u_lcd_driver|Add1~2_combout\ & 
-- (((\u_lcd_display|Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux3~8_combout\,
	datab => \u_lcd_display|Mux11~7_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_display|Mux32~4_combout\,
	combout => \u_lcd_display|Mux32~5_combout\);

-- Location: LCCOMB_X17_Y20_N2
\u_lcd_display|Mux32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~6_combout\ = (\u_lcd_driver|cnt_v\(0) & ((\u_lcd_display|Mux32~3_combout\) # ((\u_lcd_driver|Add1~0_combout\)))) # (!\u_lcd_driver|cnt_v\(0) & (((!\u_lcd_driver|Add1~0_combout\ & \u_lcd_display|Mux32~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_display|Mux32~3_combout\,
	datac => \u_lcd_driver|Add1~0_combout\,
	datad => \u_lcd_display|Mux32~5_combout\,
	combout => \u_lcd_display|Mux32~6_combout\);

-- Location: LCCOMB_X17_Y20_N28
\u_lcd_display|Mux32~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~9_combout\ = (\u_lcd_driver|Add1~0_combout\ & ((\u_lcd_display|Mux32~6_combout\ & ((\u_lcd_display|Mux32~29_combout\))) # (!\u_lcd_display|Mux32~6_combout\ & (\u_lcd_display|Mux32~1_combout\)))) # (!\u_lcd_driver|Add1~0_combout\ & 
-- (((\u_lcd_display|Mux32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~1_combout\,
	datab => \u_lcd_display|Mux32~29_combout\,
	datac => \u_lcd_driver|Add1~0_combout\,
	datad => \u_lcd_display|Mux32~6_combout\,
	combout => \u_lcd_display|Mux32~9_combout\);

-- Location: LCCOMB_X16_Y17_N12
\u_lcd_display|Mux32~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~17_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\) # 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux32~17_combout\);

-- Location: LCCOMB_X16_Y17_N14
\u_lcd_display|Mux32~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~18_combout\ = (\u_lcd_display|Mux32~17_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (!\u_lcd_display|Add0~0_combout\ & !\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_display|Mux32~17_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~17_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux32~18_combout\);

-- Location: LCCOMB_X16_Y18_N18
\u_lcd_display|Mux32~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~19_combout\ = (!\u_lcd_driver|cnt_v\(0) & (\u_lcd_display|Mux32~18_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_display|Mux32~18_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux32~19_combout\);

-- Location: LCCOMB_X14_Y18_N12
\u_lcd_display|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~0_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux16~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\u_lcd_display|Mux32~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~20_combout\ = (\u_lcd_display|Mux2~2_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_display|Add0~0_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & !\u_lcd_display|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Mux2~2_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux32~20_combout\);

-- Location: LCCOMB_X14_Y18_N26
\u_lcd_display|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux28~1_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_display|Add0~0_combout\)) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # 
-- (!\u_lcd_display|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux28~1_combout\);

-- Location: LCCOMB_X14_Y18_N28
\u_lcd_display|Mux32~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~21_combout\ = (\u_lcd_display|Mux32~20_combout\) # ((\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_display|Mux28~1_combout\ & !\u_lcd_driver|pixel_xpos[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Mux32~20_combout\,
	datac => \u_lcd_display|Mux28~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux32~21_combout\);

-- Location: LCCOMB_X14_Y18_N6
\u_lcd_display|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux28~0_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_display|Add0~0_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & !\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_display|Add0~0_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux28~0_combout\);

-- Location: LCCOMB_X14_Y18_N14
\u_lcd_display|Mux32~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~22_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux16~0_combout\ & ((\u_lcd_display|Mux28~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Mux32~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux16~0_combout\,
	datab => \u_lcd_display|Mux32~21_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux28~0_combout\,
	combout => \u_lcd_display|Mux32~22_combout\);

-- Location: LCCOMB_X16_Y18_N12
\u_lcd_display|Mux32~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~23_combout\ = (\u_lcd_driver|Add1~0_combout\ & ((\u_lcd_display|Mux32~19_combout\) # ((\u_lcd_driver|cnt_v\(0) & \u_lcd_display|Mux32~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_display|Mux32~19_combout\,
	datac => \u_lcd_display|Mux32~22_combout\,
	datad => \u_lcd_driver|Add1~0_combout\,
	combout => \u_lcd_display|Mux32~23_combout\);

-- Location: LCCOMB_X18_Y18_N8
\u_lcd_display|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~5_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ $ 
-- (\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux25~5_combout\);

-- Location: LCCOMB_X19_Y18_N6
\u_lcd_display|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~8_combout\ = (\u_lcd_driver|data_req~2_combout\ & (\u_lcd_driver|Add0~6_combout\ & ((\u_lcd_driver|data_req~4_combout\) # (\u_lcd_driver|data_req~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|data_req~4_combout\,
	datab => \u_lcd_driver|data_req~2_combout\,
	datac => \u_lcd_driver|data_req~6_combout\,
	datad => \u_lcd_driver|Add0~6_combout\,
	combout => \u_lcd_display|Mux25~8_combout\);

-- Location: LCCOMB_X18_Y18_N10
\u_lcd_display|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~6_combout\ = (\u_lcd_display|Add0~1_combout\ & (((\u_lcd_display|Add0~0_combout\ & !\u_lcd_display|Mux25~8_combout\)) # (!\u_lcd_display|Mux25~5_combout\))) # (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux25~8_combout\ $ 
-- (((\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Mux25~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux25~5_combout\,
	datad => \u_lcd_display|Mux25~8_combout\,
	combout => \u_lcd_display|Mux25~6_combout\);

-- Location: LCCOMB_X18_Y18_N22
\u_lcd_display|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~4_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\) # ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux25~4_combout\);

-- Location: LCCOMB_X16_Y17_N26
\u_lcd_display|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~2_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_display|Add0~0_combout\))) # 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux19~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	combout => \u_lcd_display|Mux25~2_combout\);

-- Location: LCCOMB_X18_Y18_N28
\u_lcd_display|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~3_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_display|Mux25~2_combout\ & !\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (((!\u_lcd_display|Mux25~2_combout\ & \u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_display|Mux25~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux25~3_combout\);

-- Location: LCCOMB_X18_Y18_N4
\u_lcd_display|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux25~7_combout\ = (\u_lcd_display|Mux25~4_combout\ & (((\u_lcd_display|Mux25~5_combout\ & \u_lcd_display|Mux25~3_combout\)))) # (!\u_lcd_display|Mux25~4_combout\ & (\u_lcd_display|Mux25~6_combout\ $ ((!\u_lcd_display|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux25~6_combout\,
	datab => \u_lcd_display|Mux25~5_combout\,
	datac => \u_lcd_display|Mux25~4_combout\,
	datad => \u_lcd_display|Mux25~3_combout\,
	combout => \u_lcd_display|Mux25~7_combout\);

-- Location: LCCOMB_X17_Y18_N12
\u_lcd_display|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~2_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|Add0~4_combout\,
	combout => \u_lcd_display|Mux27~2_combout\);

-- Location: LCCOMB_X18_Y18_N6
\u_lcd_display|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~3_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & !\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_display|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~0_combout\,
	combout => \u_lcd_display|Mux27~3_combout\);

-- Location: LCCOMB_X17_Y18_N6
\u_lcd_display|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~4_combout\ = (\u_lcd_display|Mux27~2_combout\) # ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_display|Mux27~3_combout\) # 
-- (!\u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux27~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Mux27~3_combout\,
	combout => \u_lcd_display|Mux27~4_combout\);

-- Location: LCCOMB_X14_Y18_N2
\u_lcd_display|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~5_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_driver|pixel_xpos[2]~1_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux27~5_combout\);

-- Location: LCCOMB_X17_Y18_N8
\u_lcd_display|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~6_combout\ = (\u_lcd_display|Mux27~5_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & !\u_lcd_driver|pixel_xpos[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux27~5_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	combout => \u_lcd_display|Mux27~6_combout\);

-- Location: LCCOMB_X17_Y18_N10
\u_lcd_display|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux27~7_combout\ = (\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux27~4_combout\)) # (!\u_lcd_display|Add0~1_combout\ & (((\u_lcd_display|Mux27~6_combout\) # (\u_lcd_display|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux27~4_combout\,
	datab => \u_lcd_display|Mux27~6_combout\,
	datac => \u_lcd_display|Mux27~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux27~7_combout\);

-- Location: LCCOMB_X19_Y16_N12
\u_lcd_display|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux9~7_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux9~7_combout\);

-- Location: LCCOMB_X19_Y18_N30
\u_lcd_display|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~4_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (!\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_display|Add0~1_combout\ & 
-- \u_lcd_driver|pixel_xpos[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux26~4_combout\);

-- Location: LCCOMB_X19_Y18_N24
\u_lcd_display|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~5_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_display|Mux26~4_combout\ & !\u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- ((\u_lcd_display|Mux26~4_combout\ & (!\u_lcd_display|Add0~1_combout\)) # (!\u_lcd_display|Mux26~4_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_display|Mux26~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux26~5_combout\);

-- Location: LCCOMB_X19_Y18_N26
\u_lcd_display|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~6_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Add0~1_combout\)) # (!\u_lcd_display|Mux9~7_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_display|Add0~1_combout\ $ 
-- (\u_lcd_display|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux9~7_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux26~5_combout\,
	combout => \u_lcd_display|Mux26~6_combout\);

-- Location: LCCOMB_X19_Y18_N14
\u_lcd_display|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~0_combout\ = (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (((!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux26~0_combout\);

-- Location: LCCOMB_X19_Y18_N0
\u_lcd_display|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~1_combout\ = (\u_lcd_driver|data_req~7_combout\ & ((\u_lcd_driver|Add0~4_combout\) # (\u_lcd_driver|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|data_req~7_combout\,
	datac => \u_lcd_driver|Add0~4_combout\,
	datad => \u_lcd_driver|Add0~6_combout\,
	combout => \u_lcd_display|Mux26~1_combout\);

-- Location: LCCOMB_X19_Y18_N10
\u_lcd_display|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~2_combout\ = (\u_lcd_display|Add0~1_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_display|Mux26~1_combout\))) # 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux9~7_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux26~1_combout\,
	combout => \u_lcd_display|Mux26~2_combout\);

-- Location: LCCOMB_X19_Y18_N12
\u_lcd_display|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~3_combout\ = (\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux26~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (!\u_lcd_display|Mux26~2_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & 
-- (((!\u_lcd_display|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datab => \u_lcd_display|Mux26~0_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux26~2_combout\,
	combout => \u_lcd_display|Mux26~3_combout\);

-- Location: LCCOMB_X19_Y18_N28
\u_lcd_display|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux26~7_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux26~3_combout\))) # (!\u_lcd_display|Add0~0_combout\ & (!\u_lcd_display|Mux26~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux26~6_combout\,
	datad => \u_lcd_display|Mux26~3_combout\,
	combout => \u_lcd_display|Mux26~7_combout\);

-- Location: LCCOMB_X16_Y18_N24
\u_lcd_display|Mux32~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~15_combout\ = (\u_lcd_driver|cnt_v\(0) & ((\u_lcd_driver|Add1~0_combout\) # ((\u_lcd_display|Mux26~7_combout\)))) # (!\u_lcd_driver|cnt_v\(0) & (!\u_lcd_driver|Add1~0_combout\ & (\u_lcd_display|Mux27~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_driver|Add1~0_combout\,
	datac => \u_lcd_display|Mux27~7_combout\,
	datad => \u_lcd_display|Mux26~7_combout\,
	combout => \u_lcd_display|Mux32~15_combout\);

-- Location: LCCOMB_X16_Y18_N0
\u_lcd_display|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~3_combout\ = (\u_lcd_display|Add0~0_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_display|Add0~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- (\u_lcd_driver|pixel_xpos[1]~4_combout\ $ (\u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux24~3_combout\);

-- Location: LCCOMB_X16_Y18_N10
\u_lcd_display|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~4_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux24~4_combout\);

-- Location: LCCOMB_X16_Y18_N20
\u_lcd_display|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~5_combout\ = (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux24~3_combout\)) # (!\u_lcd_display|Add0~1_combout\ & ((!\u_lcd_display|Mux24~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Mux24~3_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux24~4_combout\,
	combout => \u_lcd_display|Mux24~5_combout\);

-- Location: LCCOMB_X16_Y18_N30
\u_lcd_display|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~2_combout\ = (!\u_lcd_display|Add0~0_combout\ & (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_display|Add0~1_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux24~2_combout\);

-- Location: LCCOMB_X16_Y18_N2
\u_lcd_display|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~0_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_display|Add0~1_combout\ & 
-- (\u_lcd_display|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux24~0_combout\);

-- Location: LCCOMB_X16_Y18_N4
\u_lcd_display|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~1_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_display|Mux24~0_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_display|Mux24~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux24~1_combout\);

-- Location: LCCOMB_X16_Y18_N14
\u_lcd_display|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux24~6_combout\ = (\u_lcd_display|Mux24~1_combout\) # ((!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_display|Mux24~5_combout\) # (\u_lcd_display|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Mux24~5_combout\,
	datac => \u_lcd_display|Mux24~2_combout\,
	datad => \u_lcd_display|Mux24~1_combout\,
	combout => \u_lcd_display|Mux24~6_combout\);

-- Location: LCCOMB_X16_Y18_N8
\u_lcd_display|Mux32~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~16_combout\ = (\u_lcd_display|Mux32~15_combout\ & (((\u_lcd_display|Mux24~6_combout\) # (!\u_lcd_driver|Add1~0_combout\)))) # (!\u_lcd_display|Mux32~15_combout\ & (\u_lcd_display|Mux25~7_combout\ & ((\u_lcd_driver|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux25~7_combout\,
	datab => \u_lcd_display|Mux32~15_combout\,
	datac => \u_lcd_display|Mux24~6_combout\,
	datad => \u_lcd_driver|Add1~0_combout\,
	combout => \u_lcd_display|Mux32~16_combout\);

-- Location: LCCOMB_X16_Y18_N22
\u_lcd_display|Mux32~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~24_combout\ = (\u_lcd_driver|Add1~2_combout\ & (((\u_lcd_display|Mux32~16_combout\) # (\u_lcd_driver|Add1~4_combout\)))) # (!\u_lcd_driver|Add1~2_combout\ & (\u_lcd_display|Mux32~23_combout\ & ((!\u_lcd_driver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~23_combout\,
	datab => \u_lcd_display|Mux32~16_combout\,
	datac => \u_lcd_driver|Add1~2_combout\,
	datad => \u_lcd_driver|Add1~4_combout\,
	combout => \u_lcd_display|Mux32~24_combout\);

-- Location: LCCOMB_X16_Y17_N2
\u_lcd_display|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux21~2_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\) # ((\u_lcd_driver|pixel_xpos[4]~0_combout\) # (\u_lcd_driver|pixel_xpos[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux21~2_combout\);

-- Location: LCCOMB_X16_Y17_N20
\u_lcd_display|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux21~3_combout\ = (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_display|Mux21~2_combout\ & ((\u_lcd_display|Add0~1_combout\) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Mux21~2_combout\,
	combout => \u_lcd_display|Mux21~3_combout\);

-- Location: LCCOMB_X16_Y17_N6
\u_lcd_display|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux21~4_combout\ = (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux21~3_combout\) # ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_display|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux9~7_combout\,
	datad => \u_lcd_display|Mux21~3_combout\,
	combout => \u_lcd_display|Mux21~4_combout\);

-- Location: LCCOMB_X19_Y16_N4
\u_lcd_display|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux21~0_combout\ = (\u_lcd_display|Add0~1_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux9~7_combout\)) # 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_display|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux9~7_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux8~3_combout\,
	combout => \u_lcd_display|Mux21~0_combout\);

-- Location: LCCOMB_X18_Y16_N30
\u_lcd_display|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux21~1_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux21~0_combout\ & ((\u_lcd_display|Mux15~2_combout\))) # (!\u_lcd_display|Mux21~0_combout\ & (\u_lcd_display|Mux14~0_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & 
-- (((\u_lcd_display|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux14~0_combout\,
	datab => \u_lcd_display|Mux15~2_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux21~0_combout\,
	combout => \u_lcd_display|Mux21~1_combout\);

-- Location: LCCOMB_X18_Y16_N16
\u_lcd_display|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux20~0_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((\u_lcd_driver|pixel_xpos[1]~4_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & !\u_lcd_driver|pixel_xpos[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	combout => \u_lcd_display|Mux20~0_combout\);

-- Location: LCCOMB_X18_Y16_N18
\u_lcd_display|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux20~1_combout\ = (\u_lcd_display|Add0~1_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux20~0_combout\)) # 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_display|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_display|Mux20~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux8~3_combout\,
	combout => \u_lcd_display|Mux20~1_combout\);

-- Location: LCCOMB_X18_Y16_N4
\u_lcd_display|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux20~2_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux20~1_combout\ & ((\u_lcd_display|Mux15~2_combout\))) # (!\u_lcd_display|Mux20~1_combout\ & (\u_lcd_display|Mux14~0_combout\)))) # (!\u_lcd_display|Add0~1_combout\ & 
-- (((\u_lcd_display|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux14~0_combout\,
	datab => \u_lcd_display|Mux15~2_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux20~1_combout\,
	combout => \u_lcd_display|Mux20~2_combout\);

-- Location: LCCOMB_X17_Y20_N22
\u_lcd_display|Mux32~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~10_combout\ = (\u_lcd_driver|cnt_v\(0) & (((\u_lcd_display|Mux20~2_combout\)) # (!\u_lcd_driver|Add1~0_combout\))) # (!\u_lcd_driver|cnt_v\(0) & (\u_lcd_driver|Add1~0_combout\ & (\u_lcd_display|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_driver|Add1~0_combout\,
	datac => \u_lcd_display|Mux21~1_combout\,
	datad => \u_lcd_display|Mux20~2_combout\,
	combout => \u_lcd_display|Mux32~10_combout\);

-- Location: LCCOMB_X16_Y17_N22
\u_lcd_display|Mux32~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~13_combout\ = (\u_lcd_driver|Add1~0_combout\ & (\u_lcd_display|Mux21~4_combout\)) # (!\u_lcd_driver|Add1~0_combout\ & ((\u_lcd_display|Mux32~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux21~4_combout\,
	datac => \u_lcd_display|Mux32~10_combout\,
	datad => \u_lcd_driver|Add1~0_combout\,
	combout => \u_lcd_display|Mux32~13_combout\);

-- Location: LCCOMB_X17_Y16_N12
\u_lcd_display|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~0_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & !\u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux17~0_combout\);

-- Location: LCCOMB_X17_Y16_N18
\u_lcd_display|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~3_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux19~0_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_display|Mux19~0_combout\ & 
-- !\u_lcd_driver|pixel_xpos[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Mux19~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux22~3_combout\);

-- Location: LCCOMB_X17_Y16_N6
\u_lcd_display|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~1_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (!\u_lcd_display|Add0~1_combout\)) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux23~1_combout\);

-- Location: LCCOMB_X17_Y16_N8
\u_lcd_display|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~2_combout\ = (\u_lcd_display|Mux22~3_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux17~0_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((!\u_lcd_display|Mux23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux17~0_combout\,
	datab => \u_lcd_display|Mux22~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux23~1_combout\,
	combout => \u_lcd_display|Mux23~2_combout\);

-- Location: LCCOMB_X16_Y17_N8
\u_lcd_display|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~3_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_display|Add0~1_combout\) # ((!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[0]~3_combout\)))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux23~3_combout\);

-- Location: LCCOMB_X16_Y17_N10
\u_lcd_display|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux23~3_combout\ & 
-- \u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_display|Mux23~3_combout\ & !\u_lcd_driver|pixel_xpos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_display|Mux23~3_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux23~4_combout\);

-- Location: LCCOMB_X16_Y17_N28
\u_lcd_display|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~5_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- \u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux23~5_combout\);

-- Location: LCCOMB_X16_Y17_N30
\u_lcd_display|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux23~6_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_display|Mux23~5_combout\ & (\u_lcd_display|Mux23~4_combout\ $ (\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (\u_lcd_display|Mux23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux23~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_display|Mux23~5_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux23~6_combout\);

-- Location: LCCOMB_X16_Y17_N16
\u_lcd_display|Mux32~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~11_combout\ = (\u_lcd_display|Mux32~10_combout\ & (((\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_display|Mux32~10_combout\ & ((\u_lcd_display|Mux23~2_combout\) # ((\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~10_combout\,
	datab => \u_lcd_display|Mux23~2_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux23~6_combout\,
	combout => \u_lcd_display|Mux32~11_combout\);

-- Location: LCCOMB_X17_Y18_N2
\u_lcd_display|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~5_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\)))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux22~5_combout\);

-- Location: LCCOMB_X16_Y17_N24
\u_lcd_display|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_display|Mux19~0_combout\ & \u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_display|Mux19~0_combout\) # 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_display|Mux19~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux22~4_combout\);

-- Location: LCCOMB_X16_Y17_N18
\u_lcd_display|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~6_combout\ = (\u_lcd_display|Mux22~5_combout\ & (\u_lcd_display|Mux22~4_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_display|Mux22~5_combout\ & 
-- (!\u_lcd_display|Mux22~4_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & !\u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux22~5_combout\,
	datab => \u_lcd_display|Mux22~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux22~6_combout\);

-- Location: LCCOMB_X16_Y17_N4
\u_lcd_display|Mux32~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~12_combout\ = (\u_lcd_display|Mux32~10_combout\ & (((!\u_lcd_display|Mux22~6_combout\ & !\u_lcd_driver|Add1~0_combout\)))) # (!\u_lcd_display|Mux32~10_combout\ & (!\u_lcd_display|Mux21~4_combout\ & ((\u_lcd_driver|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux21~4_combout\,
	datab => \u_lcd_display|Mux22~6_combout\,
	datac => \u_lcd_display|Mux32~10_combout\,
	datad => \u_lcd_driver|Add1~0_combout\,
	combout => \u_lcd_display|Mux32~12_combout\);

-- Location: LCCOMB_X19_Y16_N22
\u_lcd_display|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~0_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- (((\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux22~0_combout\);

-- Location: LCCOMB_X19_Y16_N16
\u_lcd_display|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~1_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((!\u_lcd_display|Mux22~0_combout\)) # (!\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Add0~1_combout\ & 
-- (\u_lcd_display|Mux22~0_combout\ & \u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_display|Mux22~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux22~1_combout\);

-- Location: LCCOMB_X19_Y16_N2
\u_lcd_display|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux22~2_combout\ = (\u_lcd_display|Mux22~1_combout\ & (\u_lcd_display|Mux9~7_combout\ & (!\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_display|Mux22~1_combout\ & (((\u_lcd_display|Add0~1_combout\) # (!\u_lcd_display|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux9~7_combout\,
	datab => \u_lcd_display|Mux22~1_combout\,
	datac => \u_lcd_display|Add0~1_combout\,
	datad => \u_lcd_display|Mux8~3_combout\,
	combout => \u_lcd_display|Mux22~2_combout\);

-- Location: LCCOMB_X16_Y17_N0
\u_lcd_display|Mux32~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~14_combout\ = (\u_lcd_display|Mux32~13_combout\ & (((\u_lcd_display|Mux32~11_combout\ & \u_lcd_display|Mux22~2_combout\)) # (!\u_lcd_display|Mux32~12_combout\))) # (!\u_lcd_display|Mux32~13_combout\ & (\u_lcd_display|Mux32~11_combout\ 
-- & (!\u_lcd_display|Mux32~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~13_combout\,
	datab => \u_lcd_display|Mux32~11_combout\,
	datac => \u_lcd_display|Mux32~12_combout\,
	datad => \u_lcd_display|Mux22~2_combout\,
	combout => \u_lcd_display|Mux32~14_combout\);

-- Location: LCCOMB_X16_Y16_N24
\u_lcd_display|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~2_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_driver|pixel_xpos[0]~3_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux17~2_combout\);

-- Location: LCCOMB_X16_Y16_N10
\u_lcd_display|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~3_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_display|Mux23~0_combout\) # ((\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (((!\u_lcd_display|Mux17~2_combout\ & 
-- !\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux23~0_combout\,
	datab => \u_lcd_display|Mux17~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux17~3_combout\);

-- Location: LCCOMB_X16_Y16_N14
\u_lcd_display|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~1_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\ $ (!\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux17~1_combout\);

-- Location: LCCOMB_X14_Y17_N16
\u_lcd_display|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~4_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((!\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- \u_lcd_driver|pixel_xpos[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	combout => \u_lcd_display|Mux17~4_combout\);

-- Location: LCCOMB_X16_Y16_N4
\u_lcd_display|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~5_combout\ = (\u_lcd_display|Mux17~3_combout\ & (((\u_lcd_display|Mux17~4_combout\) # (!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_display|Mux17~3_combout\ & (\u_lcd_display|Mux17~1_combout\ & ((\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux17~3_combout\,
	datab => \u_lcd_display|Mux17~1_combout\,
	datac => \u_lcd_display|Mux17~4_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux17~5_combout\);

-- Location: LCCOMB_X17_Y16_N10
\u_lcd_display|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~6_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (!\u_lcd_display|Add0~1_combout\)))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # 
-- (\u_lcd_driver|pixel_xpos[2]~1_combout\ $ (\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux17~6_combout\);

-- Location: LCCOMB_X17_Y16_N24
\u_lcd_display|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~9_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (((!\u_lcd_display|Add0~1_combout\) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\)) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (\u_lcd_display|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux17~9_combout\);

-- Location: LCCOMB_X17_Y16_N20
\u_lcd_display|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~7_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & !\u_lcd_display|Add0~1_combout\))) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & \u_lcd_display|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datab => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux17~7_combout\);

-- Location: LCCOMB_X17_Y16_N22
\u_lcd_display|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~8_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_driver|pixel_xpos[3]~2_combout\) # (\u_lcd_display|Mux17~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (\u_lcd_display|Mux17~7_combout\ & 
-- (!\u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Mux17~7_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Mux17~0_combout\,
	combout => \u_lcd_display|Mux17~8_combout\);

-- Location: LCCOMB_X17_Y16_N26
\u_lcd_display|Mux17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~10_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_display|Mux17~8_combout\ & ((!\u_lcd_display|Mux17~9_combout\))) # (!\u_lcd_display|Mux17~8_combout\ & (!\u_lcd_display|Mux17~6_combout\)))) # 
-- (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((\u_lcd_display|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux17~6_combout\,
	datab => \u_lcd_display|Mux17~9_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Mux17~8_combout\,
	combout => \u_lcd_display|Mux17~10_combout\);

-- Location: LCCOMB_X16_Y16_N30
\u_lcd_display|Mux17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux17~11_combout\ = (\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux17~5_combout\)) # (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux17~5_combout\,
	datac => \u_lcd_display|Mux17~10_combout\,
	combout => \u_lcd_display|Mux17~11_combout\);

-- Location: LCCOMB_X18_Y16_N14
\u_lcd_display|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~3_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux19~2_combout\ & ((\u_lcd_display|Mux15~2_combout\))) # (!\u_lcd_display|Mux19~2_combout\ & (\u_lcd_display|Mux14~0_combout\)))) # (!\u_lcd_display|Add0~0_combout\ & 
-- (((\u_lcd_display|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux14~0_combout\,
	datab => \u_lcd_display|Mux15~2_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux19~2_combout\,
	combout => \u_lcd_display|Mux19~3_combout\);

-- Location: LCCOMB_X19_Y17_N28
\u_lcd_display|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~5_combout\ = (\u_lcd_driver|pixel_xpos[0]~3_combout\ & ((!\u_lcd_driver|pixel_xpos[2]~1_combout\) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	combout => \u_lcd_display|Mux19~5_combout\);

-- Location: LCCOMB_X19_Y17_N6
\u_lcd_display|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~6_combout\ = (\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_display|Add0~0_combout\) # (!\u_lcd_display|Mux19~5_combout\))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- ((\u_lcd_display|Mux19~5_combout\) # (!\u_lcd_display|Add0~0_combout\))))) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((!\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux19~5_combout\,
	combout => \u_lcd_display|Mux19~6_combout\);

-- Location: LCCOMB_X17_Y16_N4
\u_lcd_display|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~4_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|Add0~0_combout\)) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((\u_lcd_driver|pixel_xpos[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|Add0~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux19~4_combout\);

-- Location: LCCOMB_X19_Y17_N16
\u_lcd_display|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~7_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\ & (\u_lcd_driver|pixel_xpos[1]~4_combout\ & ((\u_lcd_display|Add0~0_combout\) # (!\u_lcd_display|Mux19~5_combout\)))) # (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- (\u_lcd_display|Add0~0_combout\ & ((!\u_lcd_display|Mux19~5_combout\) # (!\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux19~5_combout\,
	combout => \u_lcd_display|Mux19~7_combout\);

-- Location: LCCOMB_X19_Y17_N2
\u_lcd_display|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~8_combout\ = (\u_lcd_display|Mux19~4_combout\ & ((\u_lcd_display|Mux19~7_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\))) # (!\u_lcd_display|Mux19~7_combout\ & (!\u_lcd_display|Mux19~6_combout\)))) # 
-- (!\u_lcd_display|Mux19~4_combout\ & (!\u_lcd_display|Mux19~6_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux19~6_combout\,
	datab => \u_lcd_display|Mux19~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux19~7_combout\,
	combout => \u_lcd_display|Mux19~8_combout\);

-- Location: LCCOMB_X19_Y17_N20
\u_lcd_display|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux19~9_combout\ = (\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux19~3_combout\)) # (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux19~3_combout\,
	datab => \u_lcd_display|Mux19~8_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux19~9_combout\);

-- Location: LCCOMB_X16_Y18_N16
\u_lcd_display|Mux32~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~25_combout\ = (\u_lcd_driver|cnt_v\(0) & (\u_lcd_driver|Add1~0_combout\)) # (!\u_lcd_driver|cnt_v\(0) & ((\u_lcd_driver|Add1~0_combout\ & (\u_lcd_display|Mux17~11_combout\)) # (!\u_lcd_driver|Add1~0_combout\ & 
-- ((\u_lcd_display|Mux19~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_driver|Add1~0_combout\,
	datac => \u_lcd_display|Mux17~11_combout\,
	datad => \u_lcd_display|Mux19~9_combout\,
	combout => \u_lcd_display|Mux32~25_combout\);

-- Location: LCCOMB_X18_Y16_N8
\u_lcd_display|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~3_combout\ = (\u_lcd_display|Mux19~0_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\) # (\u_lcd_driver|pixel_xpos[3]~2_combout\))) # (!\u_lcd_display|Mux19~0_combout\ & (\u_lcd_driver|pixel_xpos[2]~1_combout\ & 
-- \u_lcd_driver|pixel_xpos[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux19~0_combout\,
	datab => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	combout => \u_lcd_display|Mux16~3_combout\);

-- Location: LCCOMB_X18_Y16_N26
\u_lcd_display|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~4_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & ((\u_lcd_display|Mux16~3_combout\) # ((\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_display|Mux19~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & 
-- (!\u_lcd_display|Mux19~0_combout\ & ((!\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_display|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_display|Mux16~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	datad => \u_lcd_display|Mux19~0_combout\,
	combout => \u_lcd_display|Mux16~4_combout\);

-- Location: LCCOMB_X18_Y16_N28
\u_lcd_display|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~5_combout\ = (\u_lcd_display|Mux16~4_combout\ & ((\u_lcd_display|Mux15~2_combout\) # ((!\u_lcd_display|Add0~0_combout\)))) # (!\u_lcd_display|Mux16~4_combout\ & (((\u_lcd_display|Add0~0_combout\ & \u_lcd_display|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux16~4_combout\,
	datab => \u_lcd_display|Mux15~2_combout\,
	datac => \u_lcd_display|Add0~0_combout\,
	datad => \u_lcd_display|Mux14~0_combout\,
	combout => \u_lcd_display|Mux16~5_combout\);

-- Location: LCCOMB_X19_Y17_N14
\u_lcd_display|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~1_combout\ = (\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((\u_lcd_display|Mux8~2_combout\)))) # (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & (((!\u_lcd_driver|pixel_xpos[3]~2_combout\)) # (!\u_lcd_driver|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datab => \u_lcd_driver|Add0~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datad => \u_lcd_display|Mux8~2_combout\,
	combout => \u_lcd_display|Mux16~1_combout\);

-- Location: LCCOMB_X19_Y17_N8
\u_lcd_display|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~2_combout\ = (!\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Add0~0_combout\ & (\u_lcd_display|Mux16~1_combout\)) # (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~1_combout\,
	datab => \u_lcd_display|Add0~0_combout\,
	datac => \u_lcd_display|Mux16~1_combout\,
	datad => \u_lcd_display|Mux9~2_combout\,
	combout => \u_lcd_display|Mux16~2_combout\);

-- Location: LCCOMB_X17_Y17_N26
\u_lcd_display|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux16~6_combout\ = (\u_lcd_display|Mux16~2_combout\) # ((\u_lcd_display|Mux16~5_combout\ & \u_lcd_display|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Mux16~5_combout\,
	datac => \u_lcd_display|Mux16~2_combout\,
	datad => \u_lcd_display|Add0~1_combout\,
	combout => \u_lcd_display|Mux16~6_combout\);

-- Location: LCCOMB_X19_Y16_N14
\u_lcd_display|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~4_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (!\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_driver|pixel_xpos[1]~4_combout\)) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & (\u_lcd_driver|pixel_xpos[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux18~4_combout\);

-- Location: LCCOMB_X19_Y16_N0
\u_lcd_display|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~5_combout\ = (\u_lcd_display|Add0~0_combout\ & (((\u_lcd_driver|pixel_xpos[2]~1_combout\)))) # (!\u_lcd_display|Add0~0_combout\ & ((\u_lcd_driver|pixel_xpos[2]~1_combout\ & ((!\u_lcd_display|Mux11~3_combout\))) # 
-- (!\u_lcd_driver|pixel_xpos[2]~1_combout\ & (!\u_lcd_display|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux18~4_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_display|Mux11~3_combout\,
	combout => \u_lcd_display|Mux18~5_combout\);

-- Location: LCCOMB_X19_Y16_N28
\u_lcd_display|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~3_combout\ = (\u_lcd_driver|pixel_xpos[3]~2_combout\ & (((!\u_lcd_driver|pixel_xpos[4]~0_combout\)))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((\u_lcd_driver|pixel_xpos[4]~0_combout\) # ((\u_lcd_driver|pixel_xpos[0]~3_combout\ & 
-- \u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux18~3_combout\);

-- Location: LCCOMB_X19_Y16_N26
\u_lcd_display|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~6_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux18~5_combout\ & (\u_lcd_display|Mux23~0_combout\)) # (!\u_lcd_display|Mux18~5_combout\ & ((!\u_lcd_display|Mux18~3_combout\))))) # (!\u_lcd_display|Add0~0_combout\ & 
-- (\u_lcd_display|Mux18~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux18~5_combout\,
	datac => \u_lcd_display|Mux23~0_combout\,
	datad => \u_lcd_display|Mux18~3_combout\,
	combout => \u_lcd_display|Mux18~6_combout\);

-- Location: LCCOMB_X19_Y16_N6
\u_lcd_display|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~0_combout\ = (\u_lcd_driver|pixel_xpos[2]~1_combout\) # ((\u_lcd_driver|pixel_xpos[3]~2_combout\ & ((!\u_lcd_driver|pixel_xpos[1]~4_combout\) # (!\u_lcd_driver|pixel_xpos[0]~3_combout\))) # (!\u_lcd_driver|pixel_xpos[3]~2_combout\ & 
-- ((\u_lcd_driver|pixel_xpos[0]~3_combout\) # (\u_lcd_driver|pixel_xpos[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|pixel_xpos[3]~2_combout\,
	datab => \u_lcd_driver|pixel_xpos[0]~3_combout\,
	datac => \u_lcd_driver|pixel_xpos[2]~1_combout\,
	datad => \u_lcd_driver|pixel_xpos[1]~4_combout\,
	combout => \u_lcd_display|Mux18~0_combout\);

-- Location: LCCOMB_X19_Y16_N8
\u_lcd_display|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~1_combout\ = (\u_lcd_display|Mux19~0_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\ & \u_lcd_display|Mux9~7_combout\)))) # (!\u_lcd_display|Mux19~0_combout\ & (((\u_lcd_driver|pixel_xpos[4]~0_combout\)) # 
-- (!\u_lcd_display|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux18~0_combout\,
	datab => \u_lcd_display|Mux19~0_combout\,
	datac => \u_lcd_driver|pixel_xpos[4]~0_combout\,
	datad => \u_lcd_display|Mux9~7_combout\,
	combout => \u_lcd_display|Mux18~1_combout\);

-- Location: LCCOMB_X19_Y16_N18
\u_lcd_display|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~2_combout\ = (\u_lcd_display|Add0~0_combout\ & ((\u_lcd_display|Mux18~1_combout\ & (\u_lcd_display|Mux22~0_combout\)) # (!\u_lcd_display|Mux18~1_combout\ & ((\u_lcd_display|Mux13~1_combout\))))) # (!\u_lcd_display|Add0~0_combout\ & 
-- (\u_lcd_display|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Add0~0_combout\,
	datab => \u_lcd_display|Mux18~1_combout\,
	datac => \u_lcd_display|Mux22~0_combout\,
	datad => \u_lcd_display|Mux13~1_combout\,
	combout => \u_lcd_display|Mux18~2_combout\);

-- Location: LCCOMB_X19_Y16_N20
\u_lcd_display|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux18~7_combout\ = (\u_lcd_display|Add0~1_combout\ & ((\u_lcd_display|Mux18~2_combout\))) # (!\u_lcd_display|Add0~1_combout\ & (\u_lcd_display|Mux18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_display|Add0~1_combout\,
	datac => \u_lcd_display|Mux18~6_combout\,
	datad => \u_lcd_display|Mux18~2_combout\,
	combout => \u_lcd_display|Mux18~7_combout\);

-- Location: LCCOMB_X16_Y18_N26
\u_lcd_display|Mux32~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~26_combout\ = (\u_lcd_driver|cnt_v\(0) & ((\u_lcd_display|Mux32~25_combout\ & (\u_lcd_display|Mux16~6_combout\)) # (!\u_lcd_display|Mux32~25_combout\ & ((\u_lcd_display|Mux18~7_combout\))))) # (!\u_lcd_driver|cnt_v\(0) & 
-- (\u_lcd_display|Mux32~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_driver|cnt_v\(0),
	datab => \u_lcd_display|Mux32~25_combout\,
	datac => \u_lcd_display|Mux16~6_combout\,
	datad => \u_lcd_display|Mux18~7_combout\,
	combout => \u_lcd_display|Mux32~26_combout\);

-- Location: LCCOMB_X16_Y18_N28
\u_lcd_display|Mux32~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|Mux32~27_combout\ = (\u_lcd_display|Mux32~24_combout\ & (((\u_lcd_display|Mux32~26_combout\) # (!\u_lcd_driver|Add1~4_combout\)))) # (!\u_lcd_display|Mux32~24_combout\ & (\u_lcd_display|Mux32~14_combout\ & 
-- ((\u_lcd_driver|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|Mux32~24_combout\,
	datab => \u_lcd_display|Mux32~14_combout\,
	datac => \u_lcd_display|Mux32~26_combout\,
	datad => \u_lcd_driver|Add1~4_combout\,
	combout => \u_lcd_display|Mux32~27_combout\);

-- Location: LCCOMB_X17_Y20_N24
\u_lcd_display|pixel_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_display|pixel_data~0_combout\ = (!\u_lcd_display|always1~3_combout\ & ((\u_lcd_driver|Add1~6_combout\ & (\u_lcd_display|Mux32~9_combout\)) # (!\u_lcd_driver|Add1~6_combout\ & ((\u_lcd_display|Mux32~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|always1~3_combout\,
	datab => \u_lcd_display|Mux32~9_combout\,
	datac => \u_lcd_display|Mux32~27_combout\,
	datad => \u_lcd_driver|Add1~6_combout\,
	combout => \u_lcd_display|pixel_data~0_combout\);

-- Location: FF_X17_Y20_N25
\u_lcd_display|pixel_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_display|pixel_data~0_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_display|pixel_data\(0));

-- Location: LCCOMB_X17_Y4_N24
\u_lcd_driver|lcd_rgb[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_rgb[0]~0_combout\ = (\u_lcd_display|pixel_data\(0) & \u_lcd_driver|lcd_de~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd_display|pixel_data\(0),
	datad => \u_lcd_driver|lcd_de~5_combout\,
	combout => \u_lcd_driver|lcd_rgb[0]~0_combout\);

-- Location: FF_X17_Y20_N27
\u_lcd_display|pixel_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_lcd_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_lcd_display|always1~3_combout\,
	clrn => \ALT_INV_rst_n_w~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd_display|pixel_data\(15));

-- Location: LCCOMB_X17_Y4_N18
\u_lcd_driver|lcd_rgb[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_lcd_driver|lcd_rgb[11]~1_combout\ = (\u_lcd_driver|lcd_de~5_combout\ & \u_lcd_display|pixel_data\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd_driver|lcd_de~5_combout\,
	datad => \u_lcd_display|pixel_data\(15),
	combout => \u_lcd_driver|lcd_rgb[11]~1_combout\);
END structure;


