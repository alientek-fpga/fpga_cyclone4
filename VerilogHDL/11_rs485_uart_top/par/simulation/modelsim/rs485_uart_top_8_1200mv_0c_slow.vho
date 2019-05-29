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

-- DATE "09/09/2018 14:12:58"

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

ENTITY 	rs485_uart_top IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0);
	rs485_uart_rxd : IN std_logic;
	rs485_uart_txd : OUT std_logic;
	rs485_tx_en : OUT std_logic
	);
END rs485_uart_top;

-- Design Ports Information
-- led[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs485_uart_txd	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs485_tx_en	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst_n	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs485_uart_rxd	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rs485_uart_top IS
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
SIGNAL ww_rs485_uart_rxd : std_logic;
SIGNAL ww_rs485_uart_txd : std_logic;
SIGNAL ww_rs485_tx_en : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \rs485_uart_txd~output_o\ : std_logic;
SIGNAL \rs485_tx_en~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rs485_uart_rxd~input_o\ : std_logic;
SIGNAL \sys_rst_n~input_o\ : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_uart_recv|uart_rxd_d0~q\ : std_logic;
SIGNAL \u_uart_recv|uart_rxd_d1~q\ : std_logic;
SIGNAL \u_uart_recv|start_flag~combout\ : std_logic;
SIGNAL \u_uart_recv|rx_cnt~0_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[0]~16_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[0]~17\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[1]~18_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[1]~19\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[2]~20_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[2]~21\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[3]~22_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[3]~23\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[4]~24_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[4]~25\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[5]~26_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[5]~27\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[6]~28_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[6]~29\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[7]~30_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[7]~31\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[8]~32_combout\ : std_logic;
SIGNAL \u_uart_recv|LessThan0~2_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[8]~33\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[9]~34_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[9]~35\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[10]~36_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[10]~37\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[11]~38_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[11]~39\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[12]~40_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[12]~41\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[13]~42_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[13]~43\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[14]~44_combout\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[14]~45\ : std_logic;
SIGNAL \u_uart_recv|clk_cnt[15]~46_combout\ : std_logic;
SIGNAL \u_uart_recv|Equal0~0_combout\ : std_logic;
SIGNAL \u_uart_recv|Equal0~1_combout\ : std_logic;
SIGNAL \u_uart_recv|LessThan0~0_combout\ : std_logic;
SIGNAL \u_uart_recv|LessThan0~1_combout\ : std_logic;
SIGNAL \u_uart_recv|rx_cnt[0]~1_combout\ : std_logic;
SIGNAL \u_uart_recv|rx_cnt~3_combout\ : std_logic;
SIGNAL \u_uart_recv|rx_cnt~4_combout\ : std_logic;
SIGNAL \u_uart_recv|Add1~0_combout\ : std_logic;
SIGNAL \u_uart_recv|rx_cnt~2_combout\ : std_logic;
SIGNAL \u_uart_recv|Equal1~0_combout\ : std_logic;
SIGNAL \u_uart_recv|Equal0~3_combout\ : std_logic;
SIGNAL \u_uart_recv|Equal0~2_combout\ : std_logic;
SIGNAL \u_uart_recv|Equal0~5_combout\ : std_logic;
SIGNAL \u_uart_recv|rx_flag~0_combout\ : std_logic;
SIGNAL \u_uart_recv|rx_flag~q\ : std_logic;
SIGNAL \u_uart_recv|Equal0~4_combout\ : std_logic;
SIGNAL \u_uart_recv|Decoder0~0_combout\ : std_logic;
SIGNAL \u_uart_recv|Decoder0~1_combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~9_combout\ : std_logic;
SIGNAL \u_uart_recv|uart_data~0_combout\ : std_logic;
SIGNAL \u_led_ctrl|led[0]~0_combout\ : std_logic;
SIGNAL \u_uart_recv|uart_done~q\ : std_logic;
SIGNAL \u_led_ctrl|led_en_d0~feeder_combout\ : std_logic;
SIGNAL \u_led_ctrl|led_en_d0~q\ : std_logic;
SIGNAL \u_led_ctrl|led_en_d1~q\ : std_logic;
SIGNAL \u_led_ctrl|led_en_flag~combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~5_combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~4_combout\ : std_logic;
SIGNAL \u_uart_recv|Decoder0~2_combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~6_combout\ : std_logic;
SIGNAL \u_uart_recv|uart_data~1_combout\ : std_logic;
SIGNAL \u_led_ctrl|led[1]~1_combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~7_combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~8_combout\ : std_logic;
SIGNAL \u_uart_recv|uart_data~2_combout\ : std_logic;
SIGNAL \u_led_ctrl|led[2]~2_combout\ : std_logic;
SIGNAL \u_uart_recv|Decoder0~3_combout\ : std_logic;
SIGNAL \u_uart_recv|rxdata~10_combout\ : std_logic;
SIGNAL \u_uart_recv|uart_data~3_combout\ : std_logic;
SIGNAL \u_led_ctrl|led[3]~3_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \u_key_debounce|key_reg[2]~2_combout\ : std_logic;
SIGNAL \u_key_debounce|key_reg[3]~3_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \u_key_debounce|key_reg[1]~0_combout\ : std_logic;
SIGNAL \u_key_debounce|key_reg[0]~1_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[0]~33\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[1]~35_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[1]~36\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[2]~37_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[2]~38\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[3]~39_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[3]~40\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[4]~41_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[4]~42\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[5]~43_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[5]~44\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[6]~45_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[6]~46\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[7]~47_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[7]~48\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[8]~49_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[8]~50\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[9]~51_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[9]~52\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[10]~53_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[10]~54\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[11]~55_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[11]~56\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[12]~57_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[12]~58\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[13]~59_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[13]~60\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[14]~61_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[14]~62\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[15]~63_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[15]~64\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[16]~65_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[16]~66\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[17]~67_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[17]~feeder_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[17]~68\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[18]~69_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[18]~feeder_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[18]~70\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[19]~71_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[19]~72\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[20]~73_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[20]~74\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[21]~75_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[21]~76\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[22]~77_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[22]~78\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[23]~79_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[23]~80\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[24]~81_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~6_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~5_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[24]~82\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[25]~83_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[25]~84\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[26]~85_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[26]~86\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[27]~87_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[27]~88\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[28]~89_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[28]~90\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[29]~91_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[29]~92\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[30]~93_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[30]~94\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[31]~95_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~7_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~8_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~1_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~2_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~3_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~4_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~9_combout\ : std_logic;
SIGNAL \u_key_debounce|delay_cnt[20]~34_combout\ : std_logic;
SIGNAL \u_key_debounce|Equal1~10_combout\ : std_logic;
SIGNAL \u_key_debounce|key_flag~q\ : std_logic;
SIGNAL \u_uart_send|uart_en_d0~feeder_combout\ : std_logic;
SIGNAL \u_uart_send|uart_en_d0~q\ : std_logic;
SIGNAL \u_uart_send|uart_en_d1~feeder_combout\ : std_logic;
SIGNAL \u_uart_send|uart_en_d1~q\ : std_logic;
SIGNAL \u_key_debounce|key_value[3]~0_combout\ : std_logic;
SIGNAL \u_uart_send|tx_data~0_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[0]~16_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[8]~33\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[9]~34_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[9]~35\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[10]~36_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[10]~37\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[11]~38_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[11]~39\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[12]~40_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[12]~41\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[13]~42_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[13]~43\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[14]~44_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[14]~45\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[15]~46_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt[3]~0_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt[3]~1_combout\ : std_logic;
SIGNAL \u_uart_send|tx_flag~0_combout\ : std_logic;
SIGNAL \u_uart_send|tx_flag~q\ : std_logic;
SIGNAL \u_uart_send|LessThan0~2_combout\ : std_logic;
SIGNAL \u_uart_send|LessThan0~0_combout\ : std_logic;
SIGNAL \u_uart_send|LessThan0~1_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt[3]~3_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[0]~17\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[1]~18_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[1]~19\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[2]~20_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[2]~21\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[3]~22_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[3]~23\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[4]~24_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[4]~25\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[5]~26_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[5]~27\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[6]~28_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[6]~29\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[7]~30_combout\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[7]~31\ : std_logic;
SIGNAL \u_uart_send|clk_cnt[8]~32_combout\ : std_logic;
SIGNAL \u_uart_send|always1~3_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt~6_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt~5_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt~2_combout\ : std_logic;
SIGNAL \u_uart_send|Add1~0_combout\ : std_logic;
SIGNAL \u_uart_send|tx_cnt~4_combout\ : std_logic;
SIGNAL \u_uart_send|always1~1_combout\ : std_logic;
SIGNAL \u_uart_send|always1~0_combout\ : std_logic;
SIGNAL \u_uart_send|always1~2_combout\ : std_logic;
SIGNAL \u_uart_send|always1~4_combout\ : std_logic;
SIGNAL \u_uart_send|tx_data[3]~1_combout\ : std_logic;
SIGNAL \u_key_debounce|key_value[0]~1_combout\ : std_logic;
SIGNAL \u_uart_send|tx_data~2_combout\ : std_logic;
SIGNAL \u_uart_send|uart_txd~0_combout\ : std_logic;
SIGNAL \u_key_debounce|key_value[2]~2_combout\ : std_logic;
SIGNAL \u_uart_send|tx_data~3_combout\ : std_logic;
SIGNAL \u_key_debounce|key_value[1]~3_combout\ : std_logic;
SIGNAL \u_uart_send|tx_data~4_combout\ : std_logic;
SIGNAL \u_uart_send|uart_txd~1_combout\ : std_logic;
SIGNAL \u_uart_send|uart_txd~2_combout\ : std_logic;
SIGNAL \u_uart_send|uart_txd~3_combout\ : std_logic;
SIGNAL \u_uart_send|uart_txd~4_combout\ : std_logic;
SIGNAL \u_uart_send|uart_txd~q\ : std_logic;
SIGNAL \u_uart_send|clk_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_key_debounce|key_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_key_debounce|key_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_key_debounce|delay_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_led_ctrl|led\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_send|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_recv|uart_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_recv|clk_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart_recv|rx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_recv|rxdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_send|tx_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart_send|ALT_INV_uart_txd~q\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst_n <= sys_rst_n;
ww_key <= key;
led <= ww_led;
ww_rs485_uart_rxd <= rs485_uart_rxd;
rs485_uart_txd <= ww_rs485_uart_txd;
rs485_tx_en <= ww_rs485_tx_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~input_o\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\u_uart_send|ALT_INV_uart_txd~q\ <= NOT \u_uart_send|uart_txd~q\;

-- Location: IOOBUF_X32_Y24_N23
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_led_ctrl|led\(0),
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
	i => \u_led_ctrl|led\(1),
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
	i => \u_led_ctrl|led\(2),
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
	i => \u_led_ctrl|led\(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\rs485_uart_txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_uart_send|ALT_INV_uart_txd~q\,
	devoe => ww_devoe,
	o => \rs485_uart_txd~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\rs485_tx_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_uart_send|tx_flag~q\,
	devoe => ww_devoe,
	o => \rs485_tx_en~output_o\);

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

-- Location: IOIBUF_X25_Y24_N1
\rs485_uart_rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs485_uart_rxd,
	o => \rs485_uart_rxd~input_o\);

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

-- Location: FF_X26_Y21_N5
\u_uart_recv|uart_rxd_d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \rs485_uart_rxd~input_o\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_rxd_d0~q\);

-- Location: FF_X26_Y21_N27
\u_uart_recv|uart_rxd_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_uart_recv|uart_rxd_d0~q\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_rxd_d1~q\);

-- Location: LCCOMB_X26_Y21_N4
\u_uart_recv|start_flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|start_flag~combout\ = (!\u_uart_recv|uart_rxd_d0~q\ & \u_uart_recv|uart_rxd_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|uart_rxd_d0~q\,
	datad => \u_uart_recv|uart_rxd_d1~q\,
	combout => \u_uart_recv|start_flag~combout\);

-- Location: LCCOMB_X25_Y21_N24
\u_uart_recv|rx_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rx_cnt~0_combout\ = (\u_uart_recv|rx_flag~q\ & !\u_uart_recv|rx_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datac => \u_uart_recv|rx_cnt\(0),
	combout => \u_uart_recv|rx_cnt~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\u_uart_recv|clk_cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[0]~16_combout\ = \u_uart_recv|clk_cnt\(0) $ (VCC)
-- \u_uart_recv|clk_cnt[0]~17\ = CARRY(\u_uart_recv|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(0),
	datad => VCC,
	combout => \u_uart_recv|clk_cnt[0]~16_combout\,
	cout => \u_uart_recv|clk_cnt[0]~17\);

-- Location: FF_X24_Y21_N1
\u_uart_recv|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[0]~16_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(0));

-- Location: LCCOMB_X24_Y21_N2
\u_uart_recv|clk_cnt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[1]~18_combout\ = (\u_uart_recv|clk_cnt\(1) & (!\u_uart_recv|clk_cnt[0]~17\)) # (!\u_uart_recv|clk_cnt\(1) & ((\u_uart_recv|clk_cnt[0]~17\) # (GND)))
-- \u_uart_recv|clk_cnt[1]~19\ = CARRY((!\u_uart_recv|clk_cnt[0]~17\) # (!\u_uart_recv|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(1),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[0]~17\,
	combout => \u_uart_recv|clk_cnt[1]~18_combout\,
	cout => \u_uart_recv|clk_cnt[1]~19\);

-- Location: FF_X24_Y21_N3
\u_uart_recv|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[1]~18_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(1));

-- Location: LCCOMB_X24_Y21_N4
\u_uart_recv|clk_cnt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[2]~20_combout\ = (\u_uart_recv|clk_cnt\(2) & (\u_uart_recv|clk_cnt[1]~19\ $ (GND))) # (!\u_uart_recv|clk_cnt\(2) & (!\u_uart_recv|clk_cnt[1]~19\ & VCC))
-- \u_uart_recv|clk_cnt[2]~21\ = CARRY((\u_uart_recv|clk_cnt\(2) & !\u_uart_recv|clk_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(2),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[1]~19\,
	combout => \u_uart_recv|clk_cnt[2]~20_combout\,
	cout => \u_uart_recv|clk_cnt[2]~21\);

-- Location: FF_X24_Y21_N5
\u_uart_recv|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[2]~20_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(2));

-- Location: LCCOMB_X24_Y21_N6
\u_uart_recv|clk_cnt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[3]~22_combout\ = (\u_uart_recv|clk_cnt\(3) & (!\u_uart_recv|clk_cnt[2]~21\)) # (!\u_uart_recv|clk_cnt\(3) & ((\u_uart_recv|clk_cnt[2]~21\) # (GND)))
-- \u_uart_recv|clk_cnt[3]~23\ = CARRY((!\u_uart_recv|clk_cnt[2]~21\) # (!\u_uart_recv|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(3),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[2]~21\,
	combout => \u_uart_recv|clk_cnt[3]~22_combout\,
	cout => \u_uart_recv|clk_cnt[3]~23\);

-- Location: FF_X24_Y21_N7
\u_uart_recv|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[3]~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(3));

-- Location: LCCOMB_X24_Y21_N8
\u_uart_recv|clk_cnt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[4]~24_combout\ = (\u_uart_recv|clk_cnt\(4) & (\u_uart_recv|clk_cnt[3]~23\ $ (GND))) # (!\u_uart_recv|clk_cnt\(4) & (!\u_uart_recv|clk_cnt[3]~23\ & VCC))
-- \u_uart_recv|clk_cnt[4]~25\ = CARRY((\u_uart_recv|clk_cnt\(4) & !\u_uart_recv|clk_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(4),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[3]~23\,
	combout => \u_uart_recv|clk_cnt[4]~24_combout\,
	cout => \u_uart_recv|clk_cnt[4]~25\);

-- Location: FF_X24_Y21_N9
\u_uart_recv|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[4]~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(4));

-- Location: LCCOMB_X24_Y21_N10
\u_uart_recv|clk_cnt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[5]~26_combout\ = (\u_uart_recv|clk_cnt\(5) & (!\u_uart_recv|clk_cnt[4]~25\)) # (!\u_uart_recv|clk_cnt\(5) & ((\u_uart_recv|clk_cnt[4]~25\) # (GND)))
-- \u_uart_recv|clk_cnt[5]~27\ = CARRY((!\u_uart_recv|clk_cnt[4]~25\) # (!\u_uart_recv|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(5),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[4]~25\,
	combout => \u_uart_recv|clk_cnt[5]~26_combout\,
	cout => \u_uart_recv|clk_cnt[5]~27\);

-- Location: FF_X24_Y21_N11
\u_uart_recv|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[5]~26_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(5));

-- Location: LCCOMB_X24_Y21_N12
\u_uart_recv|clk_cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[6]~28_combout\ = (\u_uart_recv|clk_cnt\(6) & (\u_uart_recv|clk_cnt[5]~27\ $ (GND))) # (!\u_uart_recv|clk_cnt\(6) & (!\u_uart_recv|clk_cnt[5]~27\ & VCC))
-- \u_uart_recv|clk_cnt[6]~29\ = CARRY((\u_uart_recv|clk_cnt\(6) & !\u_uart_recv|clk_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(6),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[5]~27\,
	combout => \u_uart_recv|clk_cnt[6]~28_combout\,
	cout => \u_uart_recv|clk_cnt[6]~29\);

-- Location: FF_X24_Y21_N13
\u_uart_recv|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[6]~28_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(6));

-- Location: LCCOMB_X24_Y21_N14
\u_uart_recv|clk_cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[7]~30_combout\ = (\u_uart_recv|clk_cnt\(7) & (!\u_uart_recv|clk_cnt[6]~29\)) # (!\u_uart_recv|clk_cnt\(7) & ((\u_uart_recv|clk_cnt[6]~29\) # (GND)))
-- \u_uart_recv|clk_cnt[7]~31\ = CARRY((!\u_uart_recv|clk_cnt[6]~29\) # (!\u_uart_recv|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(7),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[6]~29\,
	combout => \u_uart_recv|clk_cnt[7]~30_combout\,
	cout => \u_uart_recv|clk_cnt[7]~31\);

-- Location: FF_X24_Y21_N15
\u_uart_recv|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[7]~30_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(7));

-- Location: LCCOMB_X24_Y21_N16
\u_uart_recv|clk_cnt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[8]~32_combout\ = (\u_uart_recv|clk_cnt\(8) & (\u_uart_recv|clk_cnt[7]~31\ $ (GND))) # (!\u_uart_recv|clk_cnt\(8) & (!\u_uart_recv|clk_cnt[7]~31\ & VCC))
-- \u_uart_recv|clk_cnt[8]~33\ = CARRY((\u_uart_recv|clk_cnt\(8) & !\u_uart_recv|clk_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(8),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[7]~31\,
	combout => \u_uart_recv|clk_cnt[8]~32_combout\,
	cout => \u_uart_recv|clk_cnt[8]~33\);

-- Location: FF_X24_Y21_N17
\u_uart_recv|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[8]~32_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(8));

-- Location: LCCOMB_X25_Y21_N4
\u_uart_recv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|LessThan0~2_combout\ = (!\u_uart_recv|clk_cnt\(7)) # (!\u_uart_recv|clk_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|clk_cnt\(8),
	datad => \u_uart_recv|clk_cnt\(7),
	combout => \u_uart_recv|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y21_N18
\u_uart_recv|clk_cnt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[9]~34_combout\ = (\u_uart_recv|clk_cnt\(9) & (!\u_uart_recv|clk_cnt[8]~33\)) # (!\u_uart_recv|clk_cnt\(9) & ((\u_uart_recv|clk_cnt[8]~33\) # (GND)))
-- \u_uart_recv|clk_cnt[9]~35\ = CARRY((!\u_uart_recv|clk_cnt[8]~33\) # (!\u_uart_recv|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(9),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[8]~33\,
	combout => \u_uart_recv|clk_cnt[9]~34_combout\,
	cout => \u_uart_recv|clk_cnt[9]~35\);

-- Location: FF_X24_Y21_N19
\u_uart_recv|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[9]~34_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(9));

-- Location: LCCOMB_X24_Y21_N20
\u_uart_recv|clk_cnt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[10]~36_combout\ = (\u_uart_recv|clk_cnt\(10) & (\u_uart_recv|clk_cnt[9]~35\ $ (GND))) # (!\u_uart_recv|clk_cnt\(10) & (!\u_uart_recv|clk_cnt[9]~35\ & VCC))
-- \u_uart_recv|clk_cnt[10]~37\ = CARRY((\u_uart_recv|clk_cnt\(10) & !\u_uart_recv|clk_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(10),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[9]~35\,
	combout => \u_uart_recv|clk_cnt[10]~36_combout\,
	cout => \u_uart_recv|clk_cnt[10]~37\);

-- Location: FF_X24_Y21_N21
\u_uart_recv|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[10]~36_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(10));

-- Location: LCCOMB_X24_Y21_N22
\u_uart_recv|clk_cnt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[11]~38_combout\ = (\u_uart_recv|clk_cnt\(11) & (!\u_uart_recv|clk_cnt[10]~37\)) # (!\u_uart_recv|clk_cnt\(11) & ((\u_uart_recv|clk_cnt[10]~37\) # (GND)))
-- \u_uart_recv|clk_cnt[11]~39\ = CARRY((!\u_uart_recv|clk_cnt[10]~37\) # (!\u_uart_recv|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(11),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[10]~37\,
	combout => \u_uart_recv|clk_cnt[11]~38_combout\,
	cout => \u_uart_recv|clk_cnt[11]~39\);

-- Location: FF_X24_Y21_N23
\u_uart_recv|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[11]~38_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(11));

-- Location: LCCOMB_X24_Y21_N24
\u_uart_recv|clk_cnt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[12]~40_combout\ = (\u_uart_recv|clk_cnt\(12) & (\u_uart_recv|clk_cnt[11]~39\ $ (GND))) # (!\u_uart_recv|clk_cnt\(12) & (!\u_uart_recv|clk_cnt[11]~39\ & VCC))
-- \u_uart_recv|clk_cnt[12]~41\ = CARRY((\u_uart_recv|clk_cnt\(12) & !\u_uart_recv|clk_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(12),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[11]~39\,
	combout => \u_uart_recv|clk_cnt[12]~40_combout\,
	cout => \u_uart_recv|clk_cnt[12]~41\);

-- Location: FF_X24_Y21_N25
\u_uart_recv|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[12]~40_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(12));

-- Location: LCCOMB_X24_Y21_N26
\u_uart_recv|clk_cnt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[13]~42_combout\ = (\u_uart_recv|clk_cnt\(13) & (!\u_uart_recv|clk_cnt[12]~41\)) # (!\u_uart_recv|clk_cnt\(13) & ((\u_uart_recv|clk_cnt[12]~41\) # (GND)))
-- \u_uart_recv|clk_cnt[13]~43\ = CARRY((!\u_uart_recv|clk_cnt[12]~41\) # (!\u_uart_recv|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(13),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[12]~41\,
	combout => \u_uart_recv|clk_cnt[13]~42_combout\,
	cout => \u_uart_recv|clk_cnt[13]~43\);

-- Location: FF_X24_Y21_N27
\u_uart_recv|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[13]~42_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(13));

-- Location: LCCOMB_X24_Y21_N28
\u_uart_recv|clk_cnt[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[14]~44_combout\ = (\u_uart_recv|clk_cnt\(14) & (\u_uart_recv|clk_cnt[13]~43\ $ (GND))) # (!\u_uart_recv|clk_cnt\(14) & (!\u_uart_recv|clk_cnt[13]~43\ & VCC))
-- \u_uart_recv|clk_cnt[14]~45\ = CARRY((\u_uart_recv|clk_cnt\(14) & !\u_uart_recv|clk_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|clk_cnt\(14),
	datad => VCC,
	cin => \u_uart_recv|clk_cnt[13]~43\,
	combout => \u_uart_recv|clk_cnt[14]~44_combout\,
	cout => \u_uart_recv|clk_cnt[14]~45\);

-- Location: FF_X24_Y21_N29
\u_uart_recv|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[14]~44_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(14));

-- Location: LCCOMB_X24_Y21_N30
\u_uart_recv|clk_cnt[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|clk_cnt[15]~46_combout\ = \u_uart_recv|clk_cnt\(15) $ (\u_uart_recv|clk_cnt[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(15),
	cin => \u_uart_recv|clk_cnt[14]~45\,
	combout => \u_uart_recv|clk_cnt[15]~46_combout\);

-- Location: FF_X24_Y21_N31
\u_uart_recv|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|clk_cnt[15]~46_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|clk_cnt\(15));

-- Location: LCCOMB_X25_Y21_N28
\u_uart_recv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal0~0_combout\ = (!\u_uart_recv|clk_cnt\(11) & (!\u_uart_recv|clk_cnt\(9) & (!\u_uart_recv|clk_cnt\(10) & !\u_uart_recv|clk_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(11),
	datab => \u_uart_recv|clk_cnt\(9),
	datac => \u_uart_recv|clk_cnt\(10),
	datad => \u_uart_recv|clk_cnt\(12),
	combout => \u_uart_recv|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y21_N30
\u_uart_recv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal0~1_combout\ = (!\u_uart_recv|clk_cnt\(14) & (!\u_uart_recv|clk_cnt\(15) & (!\u_uart_recv|clk_cnt\(13) & \u_uart_recv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(14),
	datab => \u_uart_recv|clk_cnt\(15),
	datac => \u_uart_recv|clk_cnt\(13),
	datad => \u_uart_recv|Equal0~0_combout\,
	combout => \u_uart_recv|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y21_N12
\u_uart_recv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|LessThan0~0_combout\ = (!\u_uart_recv|clk_cnt\(0) & (!\u_uart_recv|clk_cnt\(3) & (!\u_uart_recv|clk_cnt\(2) & !\u_uart_recv|clk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(0),
	datab => \u_uart_recv|clk_cnt\(3),
	datac => \u_uart_recv|clk_cnt\(2),
	datad => \u_uart_recv|clk_cnt\(1),
	combout => \u_uart_recv|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y21_N18
\u_uart_recv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|LessThan0~1_combout\ = (!\u_uart_recv|clk_cnt\(6) & (((\u_uart_recv|LessThan0~0_combout\) # (!\u_uart_recv|clk_cnt\(4))) # (!\u_uart_recv|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(5),
	datab => \u_uart_recv|clk_cnt\(4),
	datac => \u_uart_recv|clk_cnt\(6),
	datad => \u_uart_recv|LessThan0~0_combout\,
	combout => \u_uart_recv|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y21_N26
\u_uart_recv|rx_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rx_cnt[0]~1_combout\ = (((!\u_uart_recv|LessThan0~2_combout\ & !\u_uart_recv|LessThan0~1_combout\)) # (!\u_uart_recv|Equal0~1_combout\)) # (!\u_uart_recv|rx_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datab => \u_uart_recv|LessThan0~2_combout\,
	datac => \u_uart_recv|Equal0~1_combout\,
	datad => \u_uart_recv|LessThan0~1_combout\,
	combout => \u_uart_recv|rx_cnt[0]~1_combout\);

-- Location: FF_X25_Y21_N25
\u_uart_recv|rx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rx_cnt~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rx_cnt\(0));

-- Location: LCCOMB_X25_Y21_N16
\u_uart_recv|rx_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rx_cnt~3_combout\ = (\u_uart_recv|rx_flag~q\ & (\u_uart_recv|rx_cnt\(0) $ (\u_uart_recv|rx_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datab => \u_uart_recv|rx_cnt\(0),
	datac => \u_uart_recv|rx_cnt\(1),
	combout => \u_uart_recv|rx_cnt~3_combout\);

-- Location: FF_X25_Y21_N17
\u_uart_recv|rx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rx_cnt~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rx_cnt\(1));

-- Location: LCCOMB_X25_Y21_N6
\u_uart_recv|rx_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rx_cnt~4_combout\ = (\u_uart_recv|rx_flag~q\ & (\u_uart_recv|rx_cnt\(2) $ (((\u_uart_recv|rx_cnt\(1) & \u_uart_recv|rx_cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datab => \u_uart_recv|rx_cnt\(1),
	datac => \u_uart_recv|rx_cnt\(2),
	datad => \u_uart_recv|rx_cnt\(0),
	combout => \u_uart_recv|rx_cnt~4_combout\);

-- Location: FF_X25_Y21_N7
\u_uart_recv|rx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rx_cnt~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rx_cnt\(2));

-- Location: LCCOMB_X25_Y21_N8
\u_uart_recv|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Add1~0_combout\ = \u_uart_recv|rx_cnt\(3) $ (((\u_uart_recv|rx_cnt\(1) & (\u_uart_recv|rx_cnt\(2) & \u_uart_recv|rx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_cnt\(3),
	datab => \u_uart_recv|rx_cnt\(1),
	datac => \u_uart_recv|rx_cnt\(2),
	datad => \u_uart_recv|rx_cnt\(0),
	combout => \u_uart_recv|Add1~0_combout\);

-- Location: LCCOMB_X25_Y21_N10
\u_uart_recv|rx_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rx_cnt~2_combout\ = (\u_uart_recv|rx_flag~q\ & \u_uart_recv|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datac => \u_uart_recv|Add1~0_combout\,
	combout => \u_uart_recv|rx_cnt~2_combout\);

-- Location: FF_X25_Y21_N11
\u_uart_recv|rx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rx_cnt~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_recv|rx_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rx_cnt\(3));

-- Location: LCCOMB_X26_Y21_N18
\u_uart_recv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal1~0_combout\ = (\u_uart_recv|rx_cnt\(3) & (!\u_uart_recv|rx_cnt\(2) & (!\u_uart_recv|rx_cnt\(1) & \u_uart_recv|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_cnt\(3),
	datab => \u_uart_recv|rx_cnt\(2),
	datac => \u_uart_recv|rx_cnt\(1),
	datad => \u_uart_recv|rx_cnt\(0),
	combout => \u_uart_recv|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y21_N22
\u_uart_recv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal0~3_combout\ = (!\u_uart_recv|clk_cnt\(5) & (\u_uart_recv|clk_cnt\(4) & (\u_uart_recv|clk_cnt\(6) & \u_uart_recv|clk_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(5),
	datab => \u_uart_recv|clk_cnt\(4),
	datac => \u_uart_recv|clk_cnt\(6),
	datad => \u_uart_recv|clk_cnt\(7),
	combout => \u_uart_recv|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y21_N20
\u_uart_recv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal0~2_combout\ = (\u_uart_recv|clk_cnt\(0) & (\u_uart_recv|clk_cnt\(3) & (!\u_uart_recv|clk_cnt\(2) & !\u_uart_recv|clk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(0),
	datab => \u_uart_recv|clk_cnt\(3),
	datac => \u_uart_recv|clk_cnt\(2),
	datad => \u_uart_recv|clk_cnt\(1),
	combout => \u_uart_recv|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y21_N2
\u_uart_recv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal0~5_combout\ = (\u_uart_recv|Equal0~3_combout\ & (\u_uart_recv|Equal0~2_combout\ & (\u_uart_recv|Equal0~1_combout\ & !\u_uart_recv|clk_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|Equal0~3_combout\,
	datab => \u_uart_recv|Equal0~2_combout\,
	datac => \u_uart_recv|Equal0~1_combout\,
	datad => \u_uart_recv|clk_cnt\(8),
	combout => \u_uart_recv|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y21_N30
\u_uart_recv|rx_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rx_flag~0_combout\ = (\u_uart_recv|start_flag~combout\) # ((\u_uart_recv|rx_flag~q\ & ((!\u_uart_recv|Equal0~5_combout\) # (!\u_uart_recv|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|start_flag~combout\,
	datab => \u_uart_recv|Equal1~0_combout\,
	datac => \u_uart_recv|rx_flag~q\,
	datad => \u_uart_recv|Equal0~5_combout\,
	combout => \u_uart_recv|rx_flag~0_combout\);

-- Location: FF_X26_Y21_N31
\u_uart_recv|rx_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rx_flag~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rx_flag~q\);

-- Location: LCCOMB_X25_Y21_N0
\u_uart_recv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Equal0~4_combout\ = (\u_uart_recv|Equal0~3_combout\ & \u_uart_recv|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|Equal0~3_combout\,
	datad => \u_uart_recv|Equal0~2_combout\,
	combout => \u_uart_recv|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y21_N14
\u_uart_recv|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Decoder0~0_combout\ = (!\u_uart_recv|clk_cnt\(8) & (!\u_uart_recv|rx_cnt\(3) & (\u_uart_recv|Equal0~1_combout\ & \u_uart_recv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|clk_cnt\(8),
	datab => \u_uart_recv|rx_cnt\(3),
	datac => \u_uart_recv|Equal0~1_combout\,
	datad => \u_uart_recv|Equal0~4_combout\,
	combout => \u_uart_recv|Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y21_N24
\u_uart_recv|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Decoder0~1_combout\ = (!\u_uart_recv|rx_cnt\(1) & (\u_uart_recv|rx_cnt\(0) & (!\u_uart_recv|rx_cnt\(2) & \u_uart_recv|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_cnt\(1),
	datab => \u_uart_recv|rx_cnt\(0),
	datac => \u_uart_recv|rx_cnt\(2),
	datad => \u_uart_recv|Decoder0~0_combout\,
	combout => \u_uart_recv|Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y21_N6
\u_uart_recv|rxdata~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~9_combout\ = (\u_uart_recv|rx_flag~q\ & ((\u_uart_recv|Decoder0~1_combout\ & (\u_uart_recv|uart_rxd_d1~q\)) # (!\u_uart_recv|Decoder0~1_combout\ & ((\u_uart_recv|rxdata\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datab => \u_uart_recv|uart_rxd_d1~q\,
	datac => \u_uart_recv|rxdata\(0),
	datad => \u_uart_recv|Decoder0~1_combout\,
	combout => \u_uart_recv|rxdata~9_combout\);

-- Location: FF_X26_Y21_N7
\u_uart_recv|rxdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rxdata~9_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rxdata\(0));

-- Location: LCCOMB_X28_Y21_N2
\u_uart_recv|uart_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|uart_data~0_combout\ = (\u_uart_recv|rxdata\(0) & \u_uart_recv|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|rxdata\(0),
	datad => \u_uart_recv|Equal1~0_combout\,
	combout => \u_uart_recv|uart_data~0_combout\);

-- Location: FF_X28_Y21_N3
\u_uart_recv|uart_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|uart_data~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_data\(0));

-- Location: LCCOMB_X28_Y21_N28
\u_led_ctrl|led[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_ctrl|led[0]~0_combout\ = !\u_uart_recv|uart_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_recv|uart_data\(0),
	combout => \u_led_ctrl|led[0]~0_combout\);

-- Location: FF_X26_Y21_N19
\u_uart_recv|uart_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|Equal1~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_done~q\);

-- Location: LCCOMB_X28_Y21_N4
\u_led_ctrl|led_en_d0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_ctrl|led_en_d0~feeder_combout\ = \u_uart_recv|uart_done~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_recv|uart_done~q\,
	combout => \u_led_ctrl|led_en_d0~feeder_combout\);

-- Location: FF_X28_Y21_N5
\u_led_ctrl|led_en_d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_led_ctrl|led_en_d0~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_ctrl|led_en_d0~q\);

-- Location: FF_X28_Y21_N11
\u_led_ctrl|led_en_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_led_ctrl|led_en_d0~q\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_ctrl|led_en_d1~q\);

-- Location: LCCOMB_X28_Y21_N10
\u_led_ctrl|led_en_flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_ctrl|led_en_flag~combout\ = (\u_led_ctrl|led_en_d0~q\ & !\u_led_ctrl|led_en_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_led_ctrl|led_en_d0~q\,
	datac => \u_led_ctrl|led_en_d1~q\,
	combout => \u_led_ctrl|led_en_flag~combout\);

-- Location: FF_X28_Y21_N29
\u_led_ctrl|led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_led_ctrl|led[0]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_led_ctrl|led_en_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_ctrl|led\(0));

-- Location: LCCOMB_X26_Y21_N12
\u_uart_recv|rxdata~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~5_combout\ = (\u_uart_recv|rxdata\(1) & \u_uart_recv|rx_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|rxdata\(1),
	datad => \u_uart_recv|rx_flag~q\,
	combout => \u_uart_recv|rxdata~5_combout\);

-- Location: LCCOMB_X26_Y21_N26
\u_uart_recv|rxdata~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~4_combout\ = (\u_uart_recv|uart_rxd_d1~q\ & \u_uart_recv|rx_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|uart_rxd_d1~q\,
	datad => \u_uart_recv|rx_flag~q\,
	combout => \u_uart_recv|rxdata~4_combout\);

-- Location: LCCOMB_X26_Y21_N28
\u_uart_recv|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Decoder0~2_combout\ = (!\u_uart_recv|rx_cnt\(3) & (!\u_uart_recv|rx_cnt\(2) & (\u_uart_recv|rx_cnt\(1) & \u_uart_recv|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_cnt\(3),
	datab => \u_uart_recv|rx_cnt\(2),
	datac => \u_uart_recv|rx_cnt\(1),
	datad => \u_uart_recv|Equal0~5_combout\,
	combout => \u_uart_recv|Decoder0~2_combout\);

-- Location: LCCOMB_X26_Y21_N22
\u_uart_recv|rxdata~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~6_combout\ = (\u_uart_recv|rx_cnt\(0) & (\u_uart_recv|rxdata~5_combout\)) # (!\u_uart_recv|rx_cnt\(0) & ((\u_uart_recv|Decoder0~2_combout\ & ((\u_uart_recv|rxdata~4_combout\))) # (!\u_uart_recv|Decoder0~2_combout\ & 
-- (\u_uart_recv|rxdata~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rxdata~5_combout\,
	datab => \u_uart_recv|rx_cnt\(0),
	datac => \u_uart_recv|rxdata~4_combout\,
	datad => \u_uart_recv|Decoder0~2_combout\,
	combout => \u_uart_recv|rxdata~6_combout\);

-- Location: FF_X26_Y21_N23
\u_uart_recv|rxdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rxdata~6_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rxdata\(1));

-- Location: LCCOMB_X26_Y21_N16
\u_uart_recv|uart_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|uart_data~1_combout\ = (\u_uart_recv|rxdata\(1) & \u_uart_recv|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|rxdata\(1),
	datad => \u_uart_recv|Equal1~0_combout\,
	combout => \u_uart_recv|uart_data~1_combout\);

-- Location: FF_X26_Y21_N17
\u_uart_recv|uart_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|uart_data~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_data\(1));

-- Location: LCCOMB_X28_Y21_N6
\u_led_ctrl|led[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_ctrl|led[1]~1_combout\ = !\u_uart_recv|uart_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_recv|uart_data\(1),
	combout => \u_led_ctrl|led[1]~1_combout\);

-- Location: FF_X28_Y21_N7
\u_led_ctrl|led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_led_ctrl|led[1]~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_led_ctrl|led_en_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_ctrl|led\(1));

-- Location: LCCOMB_X26_Y21_N10
\u_uart_recv|rxdata~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~7_combout\ = (\u_uart_recv|rx_flag~q\ & \u_uart_recv|rxdata\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_recv|rx_flag~q\,
	datad => \u_uart_recv|rxdata\(2),
	combout => \u_uart_recv|rxdata~7_combout\);

-- Location: LCCOMB_X26_Y21_N20
\u_uart_recv|rxdata~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~8_combout\ = (\u_uart_recv|rx_cnt\(0) & ((\u_uart_recv|Decoder0~2_combout\ & ((\u_uart_recv|rxdata~4_combout\))) # (!\u_uart_recv|Decoder0~2_combout\ & (\u_uart_recv|rxdata~7_combout\)))) # (!\u_uart_recv|rx_cnt\(0) & 
-- (\u_uart_recv|rxdata~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rxdata~7_combout\,
	datab => \u_uart_recv|rx_cnt\(0),
	datac => \u_uart_recv|rxdata~4_combout\,
	datad => \u_uart_recv|Decoder0~2_combout\,
	combout => \u_uart_recv|rxdata~8_combout\);

-- Location: FF_X26_Y21_N21
\u_uart_recv|rxdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rxdata~8_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rxdata\(2));

-- Location: LCCOMB_X28_Y21_N24
\u_uart_recv|uart_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|uart_data~2_combout\ = (\u_uart_recv|rxdata\(2) & \u_uart_recv|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|rxdata\(2),
	datad => \u_uart_recv|Equal1~0_combout\,
	combout => \u_uart_recv|uart_data~2_combout\);

-- Location: FF_X28_Y21_N25
\u_uart_recv|uart_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|uart_data~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_data\(2));

-- Location: LCCOMB_X28_Y21_N12
\u_led_ctrl|led[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_ctrl|led[2]~2_combout\ = !\u_uart_recv|uart_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_recv|uart_data\(2),
	combout => \u_led_ctrl|led[2]~2_combout\);

-- Location: FF_X28_Y21_N13
\u_led_ctrl|led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_led_ctrl|led[2]~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_led_ctrl|led_en_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_ctrl|led\(2));

-- Location: LCCOMB_X26_Y21_N0
\u_uart_recv|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|Decoder0~3_combout\ = (!\u_uart_recv|rx_cnt\(1) & (!\u_uart_recv|rx_cnt\(0) & (\u_uart_recv|rx_cnt\(2) & \u_uart_recv|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_cnt\(1),
	datab => \u_uart_recv|rx_cnt\(0),
	datac => \u_uart_recv|rx_cnt\(2),
	datad => \u_uart_recv|Decoder0~0_combout\,
	combout => \u_uart_recv|Decoder0~3_combout\);

-- Location: LCCOMB_X26_Y21_N8
\u_uart_recv|rxdata~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|rxdata~10_combout\ = (\u_uart_recv|rx_flag~q\ & ((\u_uart_recv|Decoder0~3_combout\ & (\u_uart_recv|uart_rxd_d1~q\)) # (!\u_uart_recv|Decoder0~3_combout\ & ((\u_uart_recv|rxdata\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_recv|rx_flag~q\,
	datab => \u_uart_recv|uart_rxd_d1~q\,
	datac => \u_uart_recv|rxdata\(3),
	datad => \u_uart_recv|Decoder0~3_combout\,
	combout => \u_uart_recv|rxdata~10_combout\);

-- Location: FF_X26_Y21_N9
\u_uart_recv|rxdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|rxdata~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|rxdata\(3));

-- Location: LCCOMB_X26_Y21_N2
\u_uart_recv|uart_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_recv|uart_data~3_combout\ = (\u_uart_recv|rxdata\(3) & \u_uart_recv|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_recv|rxdata\(3),
	datad => \u_uart_recv|Equal1~0_combout\,
	combout => \u_uart_recv|uart_data~3_combout\);

-- Location: FF_X26_Y21_N3
\u_uart_recv|uart_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_recv|uart_data~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_recv|uart_data\(3));

-- Location: LCCOMB_X26_Y21_N14
\u_led_ctrl|led[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_ctrl|led[3]~3_combout\ = !\u_uart_recv|uart_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_recv|uart_data\(3),
	combout => \u_led_ctrl|led[3]~3_combout\);

-- Location: FF_X26_Y21_N15
\u_led_ctrl|led[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_led_ctrl|led[3]~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_led_ctrl|led_en_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_ctrl|led\(3));

-- Location: LCCOMB_X24_Y17_N0
\u_key_debounce|delay_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[0]~32_combout\ = \u_key_debounce|delay_cnt\(0) $ (VCC)
-- \u_key_debounce|delay_cnt[0]~33\ = CARRY(\u_key_debounce|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(0),
	datad => VCC,
	combout => \u_key_debounce|delay_cnt[0]~32_combout\,
	cout => \u_key_debounce|delay_cnt[0]~33\);

-- Location: LCCOMB_X25_Y16_N0
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

-- Location: LCCOMB_X26_Y17_N8
\u_key_debounce|key_reg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_reg[2]~2_combout\ = !\key[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[2]~input_o\,
	combout => \u_key_debounce|key_reg[2]~2_combout\);

-- Location: FF_X26_Y17_N25
\u_key_debounce|key_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_key_debounce|key_reg[2]~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_reg\(2));

-- Location: LCCOMB_X26_Y17_N18
\u_key_debounce|key_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_reg[3]~3_combout\ = !\key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[3]~input_o\,
	combout => \u_key_debounce|key_reg[3]~3_combout\);

-- Location: FF_X26_Y17_N19
\u_key_debounce|key_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|key_reg[3]~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_reg\(3));

-- Location: LCCOMB_X26_Y17_N24
\u_key_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal0~1_combout\ = (\key[2]~input_o\ & (!\u_key_debounce|key_reg\(2) & (\key[3]~input_o\ $ (\u_key_debounce|key_reg\(3))))) # (!\key[2]~input_o\ & (\u_key_debounce|key_reg\(2) & (\key[3]~input_o\ $ (\u_key_debounce|key_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \key[3]~input_o\,
	datac => \u_key_debounce|key_reg\(2),
	datad => \u_key_debounce|key_reg\(3),
	combout => \u_key_debounce|Equal0~1_combout\);

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

-- Location: LCCOMB_X26_Y17_N22
\u_key_debounce|key_reg[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_reg[1]~0_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \u_key_debounce|key_reg[1]~0_combout\);

-- Location: FF_X26_Y17_N21
\u_key_debounce|key_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_key_debounce|key_reg[1]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_reg\(1));

-- Location: LCCOMB_X26_Y17_N10
\u_key_debounce|key_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_reg[0]~1_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[0]~input_o\,
	combout => \u_key_debounce|key_reg[0]~1_combout\);

-- Location: FF_X26_Y17_N11
\u_key_debounce|key_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|key_reg[0]~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_reg\(0));

-- Location: LCCOMB_X26_Y17_N20
\u_key_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal0~0_combout\ = (\key[0]~input_o\ & (!\u_key_debounce|key_reg\(0) & (\key[1]~input_o\ $ (\u_key_debounce|key_reg\(1))))) # (!\key[0]~input_o\ & (\u_key_debounce|key_reg\(0) & (\key[1]~input_o\ $ (\u_key_debounce|key_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[1]~input_o\,
	datac => \u_key_debounce|key_reg\(1),
	datad => \u_key_debounce|key_reg\(0),
	combout => \u_key_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y17_N12
\u_key_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal0~2_combout\ = (!\u_key_debounce|Equal0~0_combout\) # (!\u_key_debounce|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|Equal0~1_combout\,
	datad => \u_key_debounce|Equal0~0_combout\,
	combout => \u_key_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\u_key_debounce|delay_cnt[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[1]~35_combout\ = (\u_key_debounce|delay_cnt\(1) & (\u_key_debounce|delay_cnt[0]~33\ & VCC)) # (!\u_key_debounce|delay_cnt\(1) & (!\u_key_debounce|delay_cnt[0]~33\))
-- \u_key_debounce|delay_cnt[1]~36\ = CARRY((!\u_key_debounce|delay_cnt\(1) & !\u_key_debounce|delay_cnt[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(1),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[0]~33\,
	combout => \u_key_debounce|delay_cnt[1]~35_combout\,
	cout => \u_key_debounce|delay_cnt[1]~36\);

-- Location: FF_X24_Y17_N3
\u_key_debounce|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[1]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(1));

-- Location: LCCOMB_X24_Y17_N4
\u_key_debounce|delay_cnt[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[2]~37_combout\ = (\u_key_debounce|delay_cnt\(2) & ((GND) # (!\u_key_debounce|delay_cnt[1]~36\))) # (!\u_key_debounce|delay_cnt\(2) & (\u_key_debounce|delay_cnt[1]~36\ $ (GND)))
-- \u_key_debounce|delay_cnt[2]~38\ = CARRY((\u_key_debounce|delay_cnt\(2)) # (!\u_key_debounce|delay_cnt[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(2),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[1]~36\,
	combout => \u_key_debounce|delay_cnt[2]~37_combout\,
	cout => \u_key_debounce|delay_cnt[2]~38\);

-- Location: FF_X24_Y17_N5
\u_key_debounce|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[2]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(2));

-- Location: LCCOMB_X24_Y17_N6
\u_key_debounce|delay_cnt[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[3]~39_combout\ = (\u_key_debounce|delay_cnt\(3) & (\u_key_debounce|delay_cnt[2]~38\ & VCC)) # (!\u_key_debounce|delay_cnt\(3) & (!\u_key_debounce|delay_cnt[2]~38\))
-- \u_key_debounce|delay_cnt[3]~40\ = CARRY((!\u_key_debounce|delay_cnt\(3) & !\u_key_debounce|delay_cnt[2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(3),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[2]~38\,
	combout => \u_key_debounce|delay_cnt[3]~39_combout\,
	cout => \u_key_debounce|delay_cnt[3]~40\);

-- Location: FF_X24_Y17_N7
\u_key_debounce|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[3]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(3));

-- Location: LCCOMB_X24_Y17_N8
\u_key_debounce|delay_cnt[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[4]~41_combout\ = (\u_key_debounce|delay_cnt\(4) & ((GND) # (!\u_key_debounce|delay_cnt[3]~40\))) # (!\u_key_debounce|delay_cnt\(4) & (\u_key_debounce|delay_cnt[3]~40\ $ (GND)))
-- \u_key_debounce|delay_cnt[4]~42\ = CARRY((\u_key_debounce|delay_cnt\(4)) # (!\u_key_debounce|delay_cnt[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(4),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[3]~40\,
	combout => \u_key_debounce|delay_cnt[4]~41_combout\,
	cout => \u_key_debounce|delay_cnt[4]~42\);

-- Location: FF_X24_Y17_N9
\u_key_debounce|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[4]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(4));

-- Location: LCCOMB_X24_Y17_N10
\u_key_debounce|delay_cnt[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[5]~43_combout\ = (\u_key_debounce|delay_cnt\(5) & (\u_key_debounce|delay_cnt[4]~42\ & VCC)) # (!\u_key_debounce|delay_cnt\(5) & (!\u_key_debounce|delay_cnt[4]~42\))
-- \u_key_debounce|delay_cnt[5]~44\ = CARRY((!\u_key_debounce|delay_cnt\(5) & !\u_key_debounce|delay_cnt[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(5),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[4]~42\,
	combout => \u_key_debounce|delay_cnt[5]~43_combout\,
	cout => \u_key_debounce|delay_cnt[5]~44\);

-- Location: FF_X24_Y17_N11
\u_key_debounce|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[5]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(5));

-- Location: LCCOMB_X24_Y17_N12
\u_key_debounce|delay_cnt[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[6]~45_combout\ = (\u_key_debounce|delay_cnt\(6) & ((GND) # (!\u_key_debounce|delay_cnt[5]~44\))) # (!\u_key_debounce|delay_cnt\(6) & (\u_key_debounce|delay_cnt[5]~44\ $ (GND)))
-- \u_key_debounce|delay_cnt[6]~46\ = CARRY((\u_key_debounce|delay_cnt\(6)) # (!\u_key_debounce|delay_cnt[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(6),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[5]~44\,
	combout => \u_key_debounce|delay_cnt[6]~45_combout\,
	cout => \u_key_debounce|delay_cnt[6]~46\);

-- Location: FF_X24_Y17_N13
\u_key_debounce|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[6]~45_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(6));

-- Location: LCCOMB_X24_Y17_N14
\u_key_debounce|delay_cnt[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[7]~47_combout\ = (\u_key_debounce|delay_cnt\(7) & (\u_key_debounce|delay_cnt[6]~46\ & VCC)) # (!\u_key_debounce|delay_cnt\(7) & (!\u_key_debounce|delay_cnt[6]~46\))
-- \u_key_debounce|delay_cnt[7]~48\ = CARRY((!\u_key_debounce|delay_cnt\(7) & !\u_key_debounce|delay_cnt[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(7),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[6]~46\,
	combout => \u_key_debounce|delay_cnt[7]~47_combout\,
	cout => \u_key_debounce|delay_cnt[7]~48\);

-- Location: FF_X24_Y17_N15
\u_key_debounce|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[7]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(7));

-- Location: LCCOMB_X24_Y17_N16
\u_key_debounce|delay_cnt[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[8]~49_combout\ = (\u_key_debounce|delay_cnt\(8) & ((GND) # (!\u_key_debounce|delay_cnt[7]~48\))) # (!\u_key_debounce|delay_cnt\(8) & (\u_key_debounce|delay_cnt[7]~48\ $ (GND)))
-- \u_key_debounce|delay_cnt[8]~50\ = CARRY((\u_key_debounce|delay_cnt\(8)) # (!\u_key_debounce|delay_cnt[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(8),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[7]~48\,
	combout => \u_key_debounce|delay_cnt[8]~49_combout\,
	cout => \u_key_debounce|delay_cnt[8]~50\);

-- Location: FF_X24_Y17_N17
\u_key_debounce|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[8]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(8));

-- Location: LCCOMB_X24_Y17_N18
\u_key_debounce|delay_cnt[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[9]~51_combout\ = (\u_key_debounce|delay_cnt\(9) & (\u_key_debounce|delay_cnt[8]~50\ & VCC)) # (!\u_key_debounce|delay_cnt\(9) & (!\u_key_debounce|delay_cnt[8]~50\))
-- \u_key_debounce|delay_cnt[9]~52\ = CARRY((!\u_key_debounce|delay_cnt\(9) & !\u_key_debounce|delay_cnt[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(9),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[8]~50\,
	combout => \u_key_debounce|delay_cnt[9]~51_combout\,
	cout => \u_key_debounce|delay_cnt[9]~52\);

-- Location: FF_X24_Y17_N19
\u_key_debounce|delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[9]~51_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(9));

-- Location: LCCOMB_X24_Y17_N20
\u_key_debounce|delay_cnt[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[10]~53_combout\ = (\u_key_debounce|delay_cnt\(10) & ((GND) # (!\u_key_debounce|delay_cnt[9]~52\))) # (!\u_key_debounce|delay_cnt\(10) & (\u_key_debounce|delay_cnt[9]~52\ $ (GND)))
-- \u_key_debounce|delay_cnt[10]~54\ = CARRY((\u_key_debounce|delay_cnt\(10)) # (!\u_key_debounce|delay_cnt[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(10),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[9]~52\,
	combout => \u_key_debounce|delay_cnt[10]~53_combout\,
	cout => \u_key_debounce|delay_cnt[10]~54\);

-- Location: FF_X24_Y17_N21
\u_key_debounce|delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[10]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(10));

-- Location: LCCOMB_X24_Y17_N22
\u_key_debounce|delay_cnt[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[11]~55_combout\ = (\u_key_debounce|delay_cnt\(11) & (\u_key_debounce|delay_cnt[10]~54\ & VCC)) # (!\u_key_debounce|delay_cnt\(11) & (!\u_key_debounce|delay_cnt[10]~54\))
-- \u_key_debounce|delay_cnt[11]~56\ = CARRY((!\u_key_debounce|delay_cnt\(11) & !\u_key_debounce|delay_cnt[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(11),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[10]~54\,
	combout => \u_key_debounce|delay_cnt[11]~55_combout\,
	cout => \u_key_debounce|delay_cnt[11]~56\);

-- Location: FF_X24_Y17_N23
\u_key_debounce|delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[11]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(11));

-- Location: LCCOMB_X24_Y17_N24
\u_key_debounce|delay_cnt[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[12]~57_combout\ = (\u_key_debounce|delay_cnt\(12) & ((GND) # (!\u_key_debounce|delay_cnt[11]~56\))) # (!\u_key_debounce|delay_cnt\(12) & (\u_key_debounce|delay_cnt[11]~56\ $ (GND)))
-- \u_key_debounce|delay_cnt[12]~58\ = CARRY((\u_key_debounce|delay_cnt\(12)) # (!\u_key_debounce|delay_cnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(12),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[11]~56\,
	combout => \u_key_debounce|delay_cnt[12]~57_combout\,
	cout => \u_key_debounce|delay_cnt[12]~58\);

-- Location: FF_X24_Y17_N25
\u_key_debounce|delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[12]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(12));

-- Location: LCCOMB_X24_Y17_N26
\u_key_debounce|delay_cnt[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[13]~59_combout\ = (\u_key_debounce|delay_cnt\(13) & (\u_key_debounce|delay_cnt[12]~58\ & VCC)) # (!\u_key_debounce|delay_cnt\(13) & (!\u_key_debounce|delay_cnt[12]~58\))
-- \u_key_debounce|delay_cnt[13]~60\ = CARRY((!\u_key_debounce|delay_cnt\(13) & !\u_key_debounce|delay_cnt[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(13),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[12]~58\,
	combout => \u_key_debounce|delay_cnt[13]~59_combout\,
	cout => \u_key_debounce|delay_cnt[13]~60\);

-- Location: FF_X24_Y17_N27
\u_key_debounce|delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[13]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(13));

-- Location: LCCOMB_X24_Y17_N28
\u_key_debounce|delay_cnt[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[14]~61_combout\ = (\u_key_debounce|delay_cnt\(14) & ((GND) # (!\u_key_debounce|delay_cnt[13]~60\))) # (!\u_key_debounce|delay_cnt\(14) & (\u_key_debounce|delay_cnt[13]~60\ $ (GND)))
-- \u_key_debounce|delay_cnt[14]~62\ = CARRY((\u_key_debounce|delay_cnt\(14)) # (!\u_key_debounce|delay_cnt[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(14),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[13]~60\,
	combout => \u_key_debounce|delay_cnt[14]~61_combout\,
	cout => \u_key_debounce|delay_cnt[14]~62\);

-- Location: FF_X24_Y17_N29
\u_key_debounce|delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[14]~61_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(14));

-- Location: LCCOMB_X24_Y17_N30
\u_key_debounce|delay_cnt[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[15]~63_combout\ = (\u_key_debounce|delay_cnt\(15) & (\u_key_debounce|delay_cnt[14]~62\ & VCC)) # (!\u_key_debounce|delay_cnt\(15) & (!\u_key_debounce|delay_cnt[14]~62\))
-- \u_key_debounce|delay_cnt[15]~64\ = CARRY((!\u_key_debounce|delay_cnt\(15) & !\u_key_debounce|delay_cnt[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(15),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[14]~62\,
	combout => \u_key_debounce|delay_cnt[15]~63_combout\,
	cout => \u_key_debounce|delay_cnt[15]~64\);

-- Location: FF_X24_Y17_N31
\u_key_debounce|delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[15]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(15));

-- Location: LCCOMB_X24_Y16_N0
\u_key_debounce|delay_cnt[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[16]~65_combout\ = (\u_key_debounce|delay_cnt\(16) & ((GND) # (!\u_key_debounce|delay_cnt[15]~64\))) # (!\u_key_debounce|delay_cnt\(16) & (\u_key_debounce|delay_cnt[15]~64\ $ (GND)))
-- \u_key_debounce|delay_cnt[16]~66\ = CARRY((\u_key_debounce|delay_cnt\(16)) # (!\u_key_debounce|delay_cnt[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(16),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[15]~64\,
	combout => \u_key_debounce|delay_cnt[16]~65_combout\,
	cout => \u_key_debounce|delay_cnt[16]~66\);

-- Location: FF_X24_Y16_N1
\u_key_debounce|delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[16]~65_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(16));

-- Location: LCCOMB_X24_Y16_N2
\u_key_debounce|delay_cnt[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[17]~67_combout\ = (\u_key_debounce|delay_cnt\(17) & (\u_key_debounce|delay_cnt[16]~66\ & VCC)) # (!\u_key_debounce|delay_cnt\(17) & (!\u_key_debounce|delay_cnt[16]~66\))
-- \u_key_debounce|delay_cnt[17]~68\ = CARRY((!\u_key_debounce|delay_cnt\(17) & !\u_key_debounce|delay_cnt[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(17),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[16]~66\,
	combout => \u_key_debounce|delay_cnt[17]~67_combout\,
	cout => \u_key_debounce|delay_cnt[17]~68\);

-- Location: LCCOMB_X23_Y17_N28
\u_key_debounce|delay_cnt[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[17]~feeder_combout\ = \u_key_debounce|delay_cnt[17]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_key_debounce|delay_cnt[17]~67_combout\,
	combout => \u_key_debounce|delay_cnt[17]~feeder_combout\);

-- Location: FF_X23_Y17_N29
\u_key_debounce|delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[17]~feeder_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(17));

-- Location: LCCOMB_X24_Y16_N4
\u_key_debounce|delay_cnt[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[18]~69_combout\ = (\u_key_debounce|delay_cnt\(18) & ((GND) # (!\u_key_debounce|delay_cnt[17]~68\))) # (!\u_key_debounce|delay_cnt\(18) & (\u_key_debounce|delay_cnt[17]~68\ $ (GND)))
-- \u_key_debounce|delay_cnt[18]~70\ = CARRY((\u_key_debounce|delay_cnt\(18)) # (!\u_key_debounce|delay_cnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(18),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[17]~68\,
	combout => \u_key_debounce|delay_cnt[18]~69_combout\,
	cout => \u_key_debounce|delay_cnt[18]~70\);

-- Location: LCCOMB_X23_Y17_N22
\u_key_debounce|delay_cnt[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[18]~feeder_combout\ = \u_key_debounce|delay_cnt[18]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_key_debounce|delay_cnt[18]~69_combout\,
	combout => \u_key_debounce|delay_cnt[18]~feeder_combout\);

-- Location: FF_X23_Y17_N23
\u_key_debounce|delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[18]~feeder_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(18));

-- Location: LCCOMB_X24_Y16_N6
\u_key_debounce|delay_cnt[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[19]~71_combout\ = (\u_key_debounce|delay_cnt\(19) & (\u_key_debounce|delay_cnt[18]~70\ & VCC)) # (!\u_key_debounce|delay_cnt\(19) & (!\u_key_debounce|delay_cnt[18]~70\))
-- \u_key_debounce|delay_cnt[19]~72\ = CARRY((!\u_key_debounce|delay_cnt\(19) & !\u_key_debounce|delay_cnt[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(19),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[18]~70\,
	combout => \u_key_debounce|delay_cnt[19]~71_combout\,
	cout => \u_key_debounce|delay_cnt[19]~72\);

-- Location: LCCOMB_X23_Y17_N12
\u_key_debounce|delay_cnt[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[19]~feeder_combout\ = \u_key_debounce|delay_cnt[19]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_key_debounce|delay_cnt[19]~71_combout\,
	combout => \u_key_debounce|delay_cnt[19]~feeder_combout\);

-- Location: FF_X23_Y17_N13
\u_key_debounce|delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[19]~feeder_combout\,
	asdata => VCC,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(19));

-- Location: LCCOMB_X24_Y16_N8
\u_key_debounce|delay_cnt[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[20]~73_combout\ = (\u_key_debounce|delay_cnt\(20) & ((GND) # (!\u_key_debounce|delay_cnt[19]~72\))) # (!\u_key_debounce|delay_cnt\(20) & (\u_key_debounce|delay_cnt[19]~72\ $ (GND)))
-- \u_key_debounce|delay_cnt[20]~74\ = CARRY((\u_key_debounce|delay_cnt\(20)) # (!\u_key_debounce|delay_cnt[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(20),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[19]~72\,
	combout => \u_key_debounce|delay_cnt[20]~73_combout\,
	cout => \u_key_debounce|delay_cnt[20]~74\);

-- Location: LCCOMB_X23_Y17_N2
\u_key_debounce|delay_cnt[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[20]~feeder_combout\ = \u_key_debounce|delay_cnt[20]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_key_debounce|delay_cnt[20]~73_combout\,
	combout => \u_key_debounce|delay_cnt[20]~feeder_combout\);

-- Location: FF_X23_Y17_N3
\u_key_debounce|delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[20]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(20));

-- Location: LCCOMB_X24_Y16_N10
\u_key_debounce|delay_cnt[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[21]~75_combout\ = (\u_key_debounce|delay_cnt\(21) & (\u_key_debounce|delay_cnt[20]~74\ & VCC)) # (!\u_key_debounce|delay_cnt\(21) & (!\u_key_debounce|delay_cnt[20]~74\))
-- \u_key_debounce|delay_cnt[21]~76\ = CARRY((!\u_key_debounce|delay_cnt\(21) & !\u_key_debounce|delay_cnt[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(21),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[20]~74\,
	combout => \u_key_debounce|delay_cnt[21]~75_combout\,
	cout => \u_key_debounce|delay_cnt[21]~76\);

-- Location: FF_X24_Y16_N11
\u_key_debounce|delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[21]~75_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(21));

-- Location: LCCOMB_X24_Y16_N12
\u_key_debounce|delay_cnt[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[22]~77_combout\ = (\u_key_debounce|delay_cnt\(22) & ((GND) # (!\u_key_debounce|delay_cnt[21]~76\))) # (!\u_key_debounce|delay_cnt\(22) & (\u_key_debounce|delay_cnt[21]~76\ $ (GND)))
-- \u_key_debounce|delay_cnt[22]~78\ = CARRY((\u_key_debounce|delay_cnt\(22)) # (!\u_key_debounce|delay_cnt[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(22),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[21]~76\,
	combout => \u_key_debounce|delay_cnt[22]~77_combout\,
	cout => \u_key_debounce|delay_cnt[22]~78\);

-- Location: FF_X24_Y16_N13
\u_key_debounce|delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[22]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(22));

-- Location: LCCOMB_X24_Y16_N14
\u_key_debounce|delay_cnt[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[23]~79_combout\ = (\u_key_debounce|delay_cnt\(23) & (\u_key_debounce|delay_cnt[22]~78\ & VCC)) # (!\u_key_debounce|delay_cnt\(23) & (!\u_key_debounce|delay_cnt[22]~78\))
-- \u_key_debounce|delay_cnt[23]~80\ = CARRY((!\u_key_debounce|delay_cnt\(23) & !\u_key_debounce|delay_cnt[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(23),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[22]~78\,
	combout => \u_key_debounce|delay_cnt[23]~79_combout\,
	cout => \u_key_debounce|delay_cnt[23]~80\);

-- Location: FF_X24_Y16_N15
\u_key_debounce|delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[23]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(23));

-- Location: LCCOMB_X24_Y16_N16
\u_key_debounce|delay_cnt[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[24]~81_combout\ = (\u_key_debounce|delay_cnt\(24) & ((GND) # (!\u_key_debounce|delay_cnt[23]~80\))) # (!\u_key_debounce|delay_cnt\(24) & (\u_key_debounce|delay_cnt[23]~80\ $ (GND)))
-- \u_key_debounce|delay_cnt[24]~82\ = CARRY((\u_key_debounce|delay_cnt\(24)) # (!\u_key_debounce|delay_cnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(24),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[23]~80\,
	combout => \u_key_debounce|delay_cnt[24]~81_combout\,
	cout => \u_key_debounce|delay_cnt[24]~82\);

-- Location: FF_X24_Y16_N17
\u_key_debounce|delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[24]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(24));

-- Location: LCCOMB_X25_Y17_N26
\u_key_debounce|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~6_combout\ = (!\u_key_debounce|delay_cnt\(23) & (!\u_key_debounce|delay_cnt\(22) & (!\u_key_debounce|delay_cnt\(24) & !\u_key_debounce|delay_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(23),
	datab => \u_key_debounce|delay_cnt\(22),
	datac => \u_key_debounce|delay_cnt\(24),
	datad => \u_key_debounce|delay_cnt\(21),
	combout => \u_key_debounce|Equal1~6_combout\);

-- Location: LCCOMB_X23_Y17_N6
\u_key_debounce|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~5_combout\ = (!\u_key_debounce|delay_cnt\(19) & (!\u_key_debounce|delay_cnt\(20) & (!\u_key_debounce|delay_cnt\(18) & !\u_key_debounce|delay_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(19),
	datab => \u_key_debounce|delay_cnt\(20),
	datac => \u_key_debounce|delay_cnt\(18),
	datad => \u_key_debounce|delay_cnt\(17),
	combout => \u_key_debounce|Equal1~5_combout\);

-- Location: LCCOMB_X24_Y16_N18
\u_key_debounce|delay_cnt[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[25]~83_combout\ = (\u_key_debounce|delay_cnt\(25) & (\u_key_debounce|delay_cnt[24]~82\ & VCC)) # (!\u_key_debounce|delay_cnt\(25) & (!\u_key_debounce|delay_cnt[24]~82\))
-- \u_key_debounce|delay_cnt[25]~84\ = CARRY((!\u_key_debounce|delay_cnt\(25) & !\u_key_debounce|delay_cnt[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(25),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[24]~82\,
	combout => \u_key_debounce|delay_cnt[25]~83_combout\,
	cout => \u_key_debounce|delay_cnt[25]~84\);

-- Location: FF_X24_Y16_N19
\u_key_debounce|delay_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[25]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(25));

-- Location: LCCOMB_X24_Y16_N20
\u_key_debounce|delay_cnt[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[26]~85_combout\ = (\u_key_debounce|delay_cnt\(26) & ((GND) # (!\u_key_debounce|delay_cnt[25]~84\))) # (!\u_key_debounce|delay_cnt\(26) & (\u_key_debounce|delay_cnt[25]~84\ $ (GND)))
-- \u_key_debounce|delay_cnt[26]~86\ = CARRY((\u_key_debounce|delay_cnt\(26)) # (!\u_key_debounce|delay_cnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(26),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[25]~84\,
	combout => \u_key_debounce|delay_cnt[26]~85_combout\,
	cout => \u_key_debounce|delay_cnt[26]~86\);

-- Location: FF_X24_Y16_N21
\u_key_debounce|delay_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[26]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(26));

-- Location: LCCOMB_X24_Y16_N22
\u_key_debounce|delay_cnt[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[27]~87_combout\ = (\u_key_debounce|delay_cnt\(27) & (\u_key_debounce|delay_cnt[26]~86\ & VCC)) # (!\u_key_debounce|delay_cnt\(27) & (!\u_key_debounce|delay_cnt[26]~86\))
-- \u_key_debounce|delay_cnt[27]~88\ = CARRY((!\u_key_debounce|delay_cnt\(27) & !\u_key_debounce|delay_cnt[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(27),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[26]~86\,
	combout => \u_key_debounce|delay_cnt[27]~87_combout\,
	cout => \u_key_debounce|delay_cnt[27]~88\);

-- Location: FF_X24_Y16_N23
\u_key_debounce|delay_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[27]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(27));

-- Location: LCCOMB_X24_Y16_N24
\u_key_debounce|delay_cnt[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[28]~89_combout\ = (\u_key_debounce|delay_cnt\(28) & ((GND) # (!\u_key_debounce|delay_cnt[27]~88\))) # (!\u_key_debounce|delay_cnt\(28) & (\u_key_debounce|delay_cnt[27]~88\ $ (GND)))
-- \u_key_debounce|delay_cnt[28]~90\ = CARRY((\u_key_debounce|delay_cnt\(28)) # (!\u_key_debounce|delay_cnt[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(28),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[27]~88\,
	combout => \u_key_debounce|delay_cnt[28]~89_combout\,
	cout => \u_key_debounce|delay_cnt[28]~90\);

-- Location: FF_X24_Y16_N25
\u_key_debounce|delay_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[28]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(28));

-- Location: LCCOMB_X24_Y16_N26
\u_key_debounce|delay_cnt[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[29]~91_combout\ = (\u_key_debounce|delay_cnt\(29) & (\u_key_debounce|delay_cnt[28]~90\ & VCC)) # (!\u_key_debounce|delay_cnt\(29) & (!\u_key_debounce|delay_cnt[28]~90\))
-- \u_key_debounce|delay_cnt[29]~92\ = CARRY((!\u_key_debounce|delay_cnt\(29) & !\u_key_debounce|delay_cnt[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(29),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[28]~90\,
	combout => \u_key_debounce|delay_cnt[29]~91_combout\,
	cout => \u_key_debounce|delay_cnt[29]~92\);

-- Location: FF_X24_Y16_N27
\u_key_debounce|delay_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[29]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(29));

-- Location: LCCOMB_X24_Y16_N28
\u_key_debounce|delay_cnt[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[30]~93_combout\ = (\u_key_debounce|delay_cnt\(30) & ((GND) # (!\u_key_debounce|delay_cnt[29]~92\))) # (!\u_key_debounce|delay_cnt\(30) & (\u_key_debounce|delay_cnt[29]~92\ $ (GND)))
-- \u_key_debounce|delay_cnt[30]~94\ = CARRY((\u_key_debounce|delay_cnt\(30)) # (!\u_key_debounce|delay_cnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_key_debounce|delay_cnt\(30),
	datad => VCC,
	cin => \u_key_debounce|delay_cnt[29]~92\,
	combout => \u_key_debounce|delay_cnt[30]~93_combout\,
	cout => \u_key_debounce|delay_cnt[30]~94\);

-- Location: FF_X24_Y16_N29
\u_key_debounce|delay_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[30]~93_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(30));

-- Location: LCCOMB_X24_Y16_N30
\u_key_debounce|delay_cnt[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[31]~95_combout\ = \u_key_debounce|delay_cnt\(31) $ (!\u_key_debounce|delay_cnt[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(31),
	cin => \u_key_debounce|delay_cnt[30]~94\,
	combout => \u_key_debounce|delay_cnt[31]~95_combout\);

-- Location: FF_X24_Y16_N31
\u_key_debounce|delay_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[31]~95_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(31));

-- Location: LCCOMB_X25_Y17_N12
\u_key_debounce|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~7_combout\ = (!\u_key_debounce|delay_cnt\(28) & (!\u_key_debounce|delay_cnt\(25) & (!\u_key_debounce|delay_cnt\(27) & !\u_key_debounce|delay_cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(28),
	datab => \u_key_debounce|delay_cnt\(25),
	datac => \u_key_debounce|delay_cnt\(27),
	datad => \u_key_debounce|delay_cnt\(26),
	combout => \u_key_debounce|Equal1~7_combout\);

-- Location: LCCOMB_X25_Y17_N14
\u_key_debounce|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~8_combout\ = (!\u_key_debounce|delay_cnt\(31) & (!\u_key_debounce|delay_cnt\(30) & (!\u_key_debounce|delay_cnt\(29) & \u_key_debounce|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(31),
	datab => \u_key_debounce|delay_cnt\(30),
	datac => \u_key_debounce|delay_cnt\(29),
	datad => \u_key_debounce|Equal1~7_combout\,
	combout => \u_key_debounce|Equal1~8_combout\);

-- Location: LCCOMB_X25_Y17_N10
\u_key_debounce|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~1_combout\ = (!\u_key_debounce|delay_cnt\(7) & (!\u_key_debounce|delay_cnt\(5) & (!\u_key_debounce|delay_cnt\(8) & !\u_key_debounce|delay_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(7),
	datab => \u_key_debounce|delay_cnt\(5),
	datac => \u_key_debounce|delay_cnt\(8),
	datad => \u_key_debounce|delay_cnt\(6),
	combout => \u_key_debounce|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y17_N24
\u_key_debounce|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~2_combout\ = (!\u_key_debounce|delay_cnt\(12) & (!\u_key_debounce|delay_cnt\(9) & (!\u_key_debounce|delay_cnt\(11) & !\u_key_debounce|delay_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(12),
	datab => \u_key_debounce|delay_cnt\(9),
	datac => \u_key_debounce|delay_cnt\(11),
	datad => \u_key_debounce|delay_cnt\(10),
	combout => \u_key_debounce|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y17_N22
\u_key_debounce|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~3_combout\ = (!\u_key_debounce|delay_cnt\(13) & (!\u_key_debounce|delay_cnt\(15) & (!\u_key_debounce|delay_cnt\(14) & !\u_key_debounce|delay_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(13),
	datab => \u_key_debounce|delay_cnt\(15),
	datac => \u_key_debounce|delay_cnt\(14),
	datad => \u_key_debounce|delay_cnt\(16),
	combout => \u_key_debounce|Equal1~3_combout\);

-- Location: LCCOMB_X23_Y17_N0
\u_key_debounce|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~0_combout\ = (!\u_key_debounce|delay_cnt\(2) & (!\u_key_debounce|delay_cnt\(3) & (!\u_key_debounce|delay_cnt\(4) & !\u_key_debounce|delay_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(2),
	datab => \u_key_debounce|delay_cnt\(3),
	datac => \u_key_debounce|delay_cnt\(4),
	datad => \u_key_debounce|delay_cnt\(1),
	combout => \u_key_debounce|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y17_N16
\u_key_debounce|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~4_combout\ = (\u_key_debounce|Equal1~1_combout\ & (\u_key_debounce|Equal1~2_combout\ & (\u_key_debounce|Equal1~3_combout\ & \u_key_debounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|Equal1~1_combout\,
	datab => \u_key_debounce|Equal1~2_combout\,
	datac => \u_key_debounce|Equal1~3_combout\,
	datad => \u_key_debounce|Equal1~0_combout\,
	combout => \u_key_debounce|Equal1~4_combout\);

-- Location: LCCOMB_X25_Y17_N20
\u_key_debounce|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~9_combout\ = (\u_key_debounce|Equal1~6_combout\ & (\u_key_debounce|Equal1~5_combout\ & (\u_key_debounce|Equal1~8_combout\ & \u_key_debounce|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|Equal1~6_combout\,
	datab => \u_key_debounce|Equal1~5_combout\,
	datac => \u_key_debounce|Equal1~8_combout\,
	datad => \u_key_debounce|Equal1~4_combout\,
	combout => \u_key_debounce|Equal1~9_combout\);

-- Location: LCCOMB_X25_Y17_N30
\u_key_debounce|delay_cnt[20]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|delay_cnt[20]~34_combout\ = (\u_key_debounce|delay_cnt\(0)) # (((!\u_key_debounce|Equal1~9_combout\) # (!\u_key_debounce|Equal0~0_combout\)) # (!\u_key_debounce|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_key_debounce|delay_cnt\(0),
	datab => \u_key_debounce|Equal0~1_combout\,
	datac => \u_key_debounce|Equal0~0_combout\,
	datad => \u_key_debounce|Equal1~9_combout\,
	combout => \u_key_debounce|delay_cnt[20]~34_combout\);

-- Location: FF_X24_Y17_N1
\u_key_debounce|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|delay_cnt[0]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => \u_key_debounce|Equal0~2_combout\,
	ena => \u_key_debounce|delay_cnt[20]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|delay_cnt\(0));

-- Location: LCCOMB_X25_Y17_N8
\u_key_debounce|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|Equal1~10_combout\ = (\u_key_debounce|delay_cnt\(0) & \u_key_debounce|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_key_debounce|delay_cnt\(0),
	datad => \u_key_debounce|Equal1~9_combout\,
	combout => \u_key_debounce|Equal1~10_combout\);

-- Location: FF_X25_Y17_N9
\u_key_debounce|key_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|Equal1~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_flag~q\);

-- Location: LCCOMB_X25_Y18_N22
\u_uart_send|uart_en_d0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_en_d0~feeder_combout\ = \u_key_debounce|key_flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_key_debounce|key_flag~q\,
	combout => \u_uart_send|uart_en_d0~feeder_combout\);

-- Location: FF_X25_Y18_N23
\u_uart_send|uart_en_d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|uart_en_d0~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|uart_en_d0~q\);

-- Location: LCCOMB_X25_Y18_N24
\u_uart_send|uart_en_d1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_en_d1~feeder_combout\ = \u_uart_send|uart_en_d0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_send|uart_en_d0~q\,
	combout => \u_uart_send|uart_en_d1~feeder_combout\);

-- Location: FF_X25_Y18_N25
\u_uart_send|uart_en_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|uart_en_d1~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|uart_en_d1~q\);

-- Location: LCCOMB_X25_Y17_N0
\u_key_debounce|key_value[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_value[3]~0_combout\ = !\key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[3]~input_o\,
	combout => \u_key_debounce|key_value[3]~0_combout\);

-- Location: FF_X25_Y17_N1
\u_key_debounce|key_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|key_value[3]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_key_debounce|Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_value\(3));

-- Location: LCCOMB_X25_Y18_N30
\u_uart_send|tx_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_data~0_combout\ = (!\u_uart_send|uart_en_d1~q\ & (\u_uart_send|uart_en_d0~q\ & !\u_key_debounce|key_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|uart_en_d1~q\,
	datac => \u_uart_send|uart_en_d0~q\,
	datad => \u_key_debounce|key_value\(3),
	combout => \u_uart_send|tx_data~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\u_uart_send|clk_cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[0]~16_combout\ = \u_uart_send|clk_cnt\(0) $ (VCC)
-- \u_uart_send|clk_cnt[0]~17\ = CARRY(\u_uart_send|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(0),
	datad => VCC,
	combout => \u_uart_send|clk_cnt[0]~16_combout\,
	cout => \u_uart_send|clk_cnt[0]~17\);

-- Location: LCCOMB_X23_Y18_N16
\u_uart_send|clk_cnt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[8]~32_combout\ = (\u_uart_send|clk_cnt\(8) & (\u_uart_send|clk_cnt[7]~31\ $ (GND))) # (!\u_uart_send|clk_cnt\(8) & (!\u_uart_send|clk_cnt[7]~31\ & VCC))
-- \u_uart_send|clk_cnt[8]~33\ = CARRY((\u_uart_send|clk_cnt\(8) & !\u_uart_send|clk_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(8),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[7]~31\,
	combout => \u_uart_send|clk_cnt[8]~32_combout\,
	cout => \u_uart_send|clk_cnt[8]~33\);

-- Location: LCCOMB_X23_Y18_N18
\u_uart_send|clk_cnt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[9]~34_combout\ = (\u_uart_send|clk_cnt\(9) & (!\u_uart_send|clk_cnt[8]~33\)) # (!\u_uart_send|clk_cnt\(9) & ((\u_uart_send|clk_cnt[8]~33\) # (GND)))
-- \u_uart_send|clk_cnt[9]~35\ = CARRY((!\u_uart_send|clk_cnt[8]~33\) # (!\u_uart_send|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(9),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[8]~33\,
	combout => \u_uart_send|clk_cnt[9]~34_combout\,
	cout => \u_uart_send|clk_cnt[9]~35\);

-- Location: FF_X23_Y18_N19
\u_uart_send|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[9]~34_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(9));

-- Location: LCCOMB_X23_Y18_N20
\u_uart_send|clk_cnt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[10]~36_combout\ = (\u_uart_send|clk_cnt\(10) & (\u_uart_send|clk_cnt[9]~35\ $ (GND))) # (!\u_uart_send|clk_cnt\(10) & (!\u_uart_send|clk_cnt[9]~35\ & VCC))
-- \u_uart_send|clk_cnt[10]~37\ = CARRY((\u_uart_send|clk_cnt\(10) & !\u_uart_send|clk_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(10),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[9]~35\,
	combout => \u_uart_send|clk_cnt[10]~36_combout\,
	cout => \u_uart_send|clk_cnt[10]~37\);

-- Location: FF_X23_Y18_N21
\u_uart_send|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[10]~36_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(10));

-- Location: LCCOMB_X23_Y18_N22
\u_uart_send|clk_cnt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[11]~38_combout\ = (\u_uart_send|clk_cnt\(11) & (!\u_uart_send|clk_cnt[10]~37\)) # (!\u_uart_send|clk_cnt\(11) & ((\u_uart_send|clk_cnt[10]~37\) # (GND)))
-- \u_uart_send|clk_cnt[11]~39\ = CARRY((!\u_uart_send|clk_cnt[10]~37\) # (!\u_uart_send|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(11),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[10]~37\,
	combout => \u_uart_send|clk_cnt[11]~38_combout\,
	cout => \u_uart_send|clk_cnt[11]~39\);

-- Location: FF_X23_Y18_N23
\u_uart_send|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[11]~38_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(11));

-- Location: LCCOMB_X23_Y18_N24
\u_uart_send|clk_cnt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[12]~40_combout\ = (\u_uart_send|clk_cnt\(12) & (\u_uart_send|clk_cnt[11]~39\ $ (GND))) # (!\u_uart_send|clk_cnt\(12) & (!\u_uart_send|clk_cnt[11]~39\ & VCC))
-- \u_uart_send|clk_cnt[12]~41\ = CARRY((\u_uart_send|clk_cnt\(12) & !\u_uart_send|clk_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(12),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[11]~39\,
	combout => \u_uart_send|clk_cnt[12]~40_combout\,
	cout => \u_uart_send|clk_cnt[12]~41\);

-- Location: FF_X23_Y18_N25
\u_uart_send|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[12]~40_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(12));

-- Location: LCCOMB_X23_Y18_N26
\u_uart_send|clk_cnt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[13]~42_combout\ = (\u_uart_send|clk_cnt\(13) & (!\u_uart_send|clk_cnt[12]~41\)) # (!\u_uart_send|clk_cnt\(13) & ((\u_uart_send|clk_cnt[12]~41\) # (GND)))
-- \u_uart_send|clk_cnt[13]~43\ = CARRY((!\u_uart_send|clk_cnt[12]~41\) # (!\u_uart_send|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(13),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[12]~41\,
	combout => \u_uart_send|clk_cnt[13]~42_combout\,
	cout => \u_uart_send|clk_cnt[13]~43\);

-- Location: FF_X23_Y18_N27
\u_uart_send|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[13]~42_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(13));

-- Location: LCCOMB_X23_Y18_N28
\u_uart_send|clk_cnt[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[14]~44_combout\ = (\u_uart_send|clk_cnt\(14) & (\u_uart_send|clk_cnt[13]~43\ $ (GND))) # (!\u_uart_send|clk_cnt\(14) & (!\u_uart_send|clk_cnt[13]~43\ & VCC))
-- \u_uart_send|clk_cnt[14]~45\ = CARRY((\u_uart_send|clk_cnt\(14) & !\u_uart_send|clk_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(14),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[13]~43\,
	combout => \u_uart_send|clk_cnt[14]~44_combout\,
	cout => \u_uart_send|clk_cnt[14]~45\);

-- Location: FF_X23_Y18_N29
\u_uart_send|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[14]~44_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(14));

-- Location: LCCOMB_X23_Y18_N30
\u_uart_send|clk_cnt[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[15]~46_combout\ = \u_uart_send|clk_cnt\(15) $ (\u_uart_send|clk_cnt[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(15),
	cin => \u_uart_send|clk_cnt[14]~45\,
	combout => \u_uart_send|clk_cnt[15]~46_combout\);

-- Location: FF_X23_Y18_N31
\u_uart_send|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[15]~46_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(15));

-- Location: LCCOMB_X24_Y18_N30
\u_uart_send|tx_cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt[3]~0_combout\ = (!\u_uart_send|clk_cnt\(11) & (!\u_uart_send|clk_cnt\(9) & (!\u_uart_send|clk_cnt\(10) & !\u_uart_send|clk_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(11),
	datab => \u_uart_send|clk_cnt\(9),
	datac => \u_uart_send|clk_cnt\(10),
	datad => \u_uart_send|clk_cnt\(12),
	combout => \u_uart_send|tx_cnt[3]~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\u_uart_send|tx_cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt[3]~1_combout\ = (!\u_uart_send|clk_cnt\(13) & (!\u_uart_send|clk_cnt\(15) & (\u_uart_send|tx_cnt[3]~0_combout\ & !\u_uart_send|clk_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(13),
	datab => \u_uart_send|clk_cnt\(15),
	datac => \u_uart_send|tx_cnt[3]~0_combout\,
	datad => \u_uart_send|clk_cnt\(14),
	combout => \u_uart_send|tx_cnt[3]~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\u_uart_send|tx_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_flag~0_combout\ = (\u_uart_send|always1~4_combout\ & ((\u_uart_send|tx_flag~q\) # ((!\u_uart_send|uart_en_d1~q\ & \u_uart_send|uart_en_d0~q\)))) # (!\u_uart_send|always1~4_combout\ & (!\u_uart_send|uart_en_d1~q\ & 
-- ((\u_uart_send|uart_en_d0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|always1~4_combout\,
	datab => \u_uart_send|uart_en_d1~q\,
	datac => \u_uart_send|tx_flag~q\,
	datad => \u_uart_send|uart_en_d0~q\,
	combout => \u_uart_send|tx_flag~0_combout\);

-- Location: FF_X24_Y18_N25
\u_uart_send|tx_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|tx_flag~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_flag~q\);

-- Location: LCCOMB_X24_Y18_N4
\u_uart_send|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|LessThan0~2_combout\ = (!\u_uart_send|clk_cnt\(7)) # (!\u_uart_send|clk_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_send|clk_cnt\(8),
	datad => \u_uart_send|clk_cnt\(7),
	combout => \u_uart_send|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y18_N20
\u_uart_send|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|LessThan0~0_combout\ = (!\u_uart_send|clk_cnt\(0) & (!\u_uart_send|clk_cnt\(2) & (!\u_uart_send|clk_cnt\(3) & !\u_uart_send|clk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(0),
	datab => \u_uart_send|clk_cnt\(2),
	datac => \u_uart_send|clk_cnt\(3),
	datad => \u_uart_send|clk_cnt\(1),
	combout => \u_uart_send|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\u_uart_send|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|LessThan0~1_combout\ = (!\u_uart_send|clk_cnt\(6) & (((\u_uart_send|LessThan0~0_combout\) # (!\u_uart_send|clk_cnt\(4))) # (!\u_uart_send|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(5),
	datab => \u_uart_send|LessThan0~0_combout\,
	datac => \u_uart_send|clk_cnt\(4),
	datad => \u_uart_send|clk_cnt\(6),
	combout => \u_uart_send|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\u_uart_send|tx_cnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt[3]~3_combout\ = (((!\u_uart_send|LessThan0~2_combout\ & !\u_uart_send|LessThan0~1_combout\)) # (!\u_uart_send|tx_flag~q\)) # (!\u_uart_send|tx_cnt[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt[3]~1_combout\,
	datab => \u_uart_send|tx_flag~q\,
	datac => \u_uart_send|LessThan0~2_combout\,
	datad => \u_uart_send|LessThan0~1_combout\,
	combout => \u_uart_send|tx_cnt[3]~3_combout\);

-- Location: FF_X23_Y18_N1
\u_uart_send|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[0]~16_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(0));

-- Location: LCCOMB_X23_Y18_N2
\u_uart_send|clk_cnt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[1]~18_combout\ = (\u_uart_send|clk_cnt\(1) & (!\u_uart_send|clk_cnt[0]~17\)) # (!\u_uart_send|clk_cnt\(1) & ((\u_uart_send|clk_cnt[0]~17\) # (GND)))
-- \u_uart_send|clk_cnt[1]~19\ = CARRY((!\u_uart_send|clk_cnt[0]~17\) # (!\u_uart_send|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(1),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[0]~17\,
	combout => \u_uart_send|clk_cnt[1]~18_combout\,
	cout => \u_uart_send|clk_cnt[1]~19\);

-- Location: FF_X23_Y18_N3
\u_uart_send|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[1]~18_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(1));

-- Location: LCCOMB_X23_Y18_N4
\u_uart_send|clk_cnt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[2]~20_combout\ = (\u_uart_send|clk_cnt\(2) & (\u_uart_send|clk_cnt[1]~19\ $ (GND))) # (!\u_uart_send|clk_cnt\(2) & (!\u_uart_send|clk_cnt[1]~19\ & VCC))
-- \u_uart_send|clk_cnt[2]~21\ = CARRY((\u_uart_send|clk_cnt\(2) & !\u_uart_send|clk_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(2),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[1]~19\,
	combout => \u_uart_send|clk_cnt[2]~20_combout\,
	cout => \u_uart_send|clk_cnt[2]~21\);

-- Location: FF_X23_Y18_N5
\u_uart_send|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[2]~20_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(2));

-- Location: LCCOMB_X23_Y18_N6
\u_uart_send|clk_cnt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[3]~22_combout\ = (\u_uart_send|clk_cnt\(3) & (!\u_uart_send|clk_cnt[2]~21\)) # (!\u_uart_send|clk_cnt\(3) & ((\u_uart_send|clk_cnt[2]~21\) # (GND)))
-- \u_uart_send|clk_cnt[3]~23\ = CARRY((!\u_uart_send|clk_cnt[2]~21\) # (!\u_uart_send|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(3),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[2]~21\,
	combout => \u_uart_send|clk_cnt[3]~22_combout\,
	cout => \u_uart_send|clk_cnt[3]~23\);

-- Location: FF_X23_Y18_N7
\u_uart_send|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[3]~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(3));

-- Location: LCCOMB_X23_Y18_N8
\u_uart_send|clk_cnt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[4]~24_combout\ = (\u_uart_send|clk_cnt\(4) & (\u_uart_send|clk_cnt[3]~23\ $ (GND))) # (!\u_uart_send|clk_cnt\(4) & (!\u_uart_send|clk_cnt[3]~23\ & VCC))
-- \u_uart_send|clk_cnt[4]~25\ = CARRY((\u_uart_send|clk_cnt\(4) & !\u_uart_send|clk_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(4),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[3]~23\,
	combout => \u_uart_send|clk_cnt[4]~24_combout\,
	cout => \u_uart_send|clk_cnt[4]~25\);

-- Location: FF_X23_Y18_N9
\u_uart_send|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[4]~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(4));

-- Location: LCCOMB_X23_Y18_N10
\u_uart_send|clk_cnt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[5]~26_combout\ = (\u_uart_send|clk_cnt\(5) & (!\u_uart_send|clk_cnt[4]~25\)) # (!\u_uart_send|clk_cnt\(5) & ((\u_uart_send|clk_cnt[4]~25\) # (GND)))
-- \u_uart_send|clk_cnt[5]~27\ = CARRY((!\u_uart_send|clk_cnt[4]~25\) # (!\u_uart_send|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(5),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[4]~25\,
	combout => \u_uart_send|clk_cnt[5]~26_combout\,
	cout => \u_uart_send|clk_cnt[5]~27\);

-- Location: FF_X23_Y18_N11
\u_uart_send|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[5]~26_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(5));

-- Location: LCCOMB_X23_Y18_N12
\u_uart_send|clk_cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[6]~28_combout\ = (\u_uart_send|clk_cnt\(6) & (\u_uart_send|clk_cnt[5]~27\ $ (GND))) # (!\u_uart_send|clk_cnt\(6) & (!\u_uart_send|clk_cnt[5]~27\ & VCC))
-- \u_uart_send|clk_cnt[6]~29\ = CARRY((\u_uart_send|clk_cnt\(6) & !\u_uart_send|clk_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(6),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[5]~27\,
	combout => \u_uart_send|clk_cnt[6]~28_combout\,
	cout => \u_uart_send|clk_cnt[6]~29\);

-- Location: FF_X23_Y18_N13
\u_uart_send|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[6]~28_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(6));

-- Location: LCCOMB_X23_Y18_N14
\u_uart_send|clk_cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|clk_cnt[7]~30_combout\ = (\u_uart_send|clk_cnt\(7) & (!\u_uart_send|clk_cnt[6]~29\)) # (!\u_uart_send|clk_cnt\(7) & ((\u_uart_send|clk_cnt[6]~29\) # (GND)))
-- \u_uart_send|clk_cnt[7]~31\ = CARRY((!\u_uart_send|clk_cnt[6]~29\) # (!\u_uart_send|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|clk_cnt\(7),
	datad => VCC,
	cin => \u_uart_send|clk_cnt[6]~29\,
	combout => \u_uart_send|clk_cnt[7]~30_combout\,
	cout => \u_uart_send|clk_cnt[7]~31\);

-- Location: FF_X23_Y18_N15
\u_uart_send|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[7]~30_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(7));

-- Location: FF_X23_Y18_N17
\u_uart_send|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|clk_cnt[8]~32_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|clk_cnt\(8));

-- Location: LCCOMB_X24_Y18_N28
\u_uart_send|always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|always1~3_combout\ = (\u_uart_send|clk_cnt\(5)) # (((!\u_uart_send|clk_cnt\(6)) # (!\u_uart_send|clk_cnt\(4))) # (!\u_uart_send|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(5),
	datab => \u_uart_send|clk_cnt\(7),
	datac => \u_uart_send|clk_cnt\(4),
	datad => \u_uart_send|clk_cnt\(6),
	combout => \u_uart_send|always1~3_combout\);

-- Location: LCCOMB_X25_Y18_N28
\u_uart_send|tx_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt~6_combout\ = (!\u_uart_send|tx_cnt\(0) & \u_uart_send|tx_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_send|tx_cnt\(0),
	datad => \u_uart_send|tx_flag~q\,
	combout => \u_uart_send|tx_cnt~6_combout\);

-- Location: FF_X25_Y18_N29
\u_uart_send|tx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|tx_cnt~6_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_cnt\(0));

-- Location: LCCOMB_X25_Y18_N2
\u_uart_send|tx_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt~5_combout\ = (\u_uart_send|tx_flag~q\ & (\u_uart_send|tx_cnt\(0) $ (\u_uart_send|tx_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt\(0),
	datab => \u_uart_send|tx_flag~q\,
	datac => \u_uart_send|tx_cnt\(1),
	combout => \u_uart_send|tx_cnt~5_combout\);

-- Location: FF_X25_Y18_N3
\u_uart_send|tx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|tx_cnt~5_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_cnt\(1));

-- Location: LCCOMB_X25_Y18_N6
\u_uart_send|tx_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt~2_combout\ = (\u_uart_send|tx_flag~q\ & (\u_uart_send|tx_cnt\(2) $ (((\u_uart_send|tx_cnt\(0) & \u_uart_send|tx_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt\(0),
	datab => \u_uart_send|tx_flag~q\,
	datac => \u_uart_send|tx_cnt\(2),
	datad => \u_uart_send|tx_cnt\(1),
	combout => \u_uart_send|tx_cnt~2_combout\);

-- Location: FF_X25_Y18_N7
\u_uart_send|tx_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|tx_cnt~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_cnt\(2));

-- Location: LCCOMB_X25_Y18_N18
\u_uart_send|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|Add1~0_combout\ = \u_uart_send|tx_cnt\(3) $ (((\u_uart_send|tx_cnt\(0) & (\u_uart_send|tx_cnt\(1) & \u_uart_send|tx_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt\(0),
	datab => \u_uart_send|tx_cnt\(1),
	datac => \u_uart_send|tx_cnt\(3),
	datad => \u_uart_send|tx_cnt\(2),
	combout => \u_uart_send|Add1~0_combout\);

-- Location: LCCOMB_X25_Y18_N4
\u_uart_send|tx_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_cnt~4_combout\ = (\u_uart_send|tx_flag~q\ & \u_uart_send|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|tx_flag~q\,
	datad => \u_uart_send|Add1~0_combout\,
	combout => \u_uart_send|tx_cnt~4_combout\);

-- Location: FF_X25_Y18_N5
\u_uart_send|tx_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|tx_cnt~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_send|tx_cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_cnt\(3));

-- Location: LCCOMB_X24_Y18_N8
\u_uart_send|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|always1~1_combout\ = (\u_uart_send|tx_cnt\(1)) # (((!\u_uart_send|tx_cnt\(3)) # (!\u_uart_send|clk_cnt\(0))) # (!\u_uart_send|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt\(1),
	datab => \u_uart_send|clk_cnt\(3),
	datac => \u_uart_send|clk_cnt\(0),
	datad => \u_uart_send|tx_cnt\(3),
	combout => \u_uart_send|always1~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\u_uart_send|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|always1~0_combout\ = (\u_uart_send|clk_cnt\(1)) # (((\u_uart_send|clk_cnt\(2)) # (\u_uart_send|tx_cnt\(2))) # (!\u_uart_send|tx_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(1),
	datab => \u_uart_send|tx_cnt\(0),
	datac => \u_uart_send|clk_cnt\(2),
	datad => \u_uart_send|tx_cnt\(2),
	combout => \u_uart_send|always1~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\u_uart_send|always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|always1~2_combout\ = (\u_uart_send|always1~1_combout\) # (\u_uart_send|always1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_send|always1~1_combout\,
	datad => \u_uart_send|always1~0_combout\,
	combout => \u_uart_send|always1~2_combout\);

-- Location: LCCOMB_X24_Y18_N22
\u_uart_send|always1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|always1~4_combout\ = (\u_uart_send|clk_cnt\(8)) # ((\u_uart_send|always1~3_combout\) # ((\u_uart_send|always1~2_combout\) # (!\u_uart_send|tx_cnt[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|clk_cnt\(8),
	datab => \u_uart_send|always1~3_combout\,
	datac => \u_uart_send|always1~2_combout\,
	datad => \u_uart_send|tx_cnt[3]~1_combout\,
	combout => \u_uart_send|always1~4_combout\);

-- Location: LCCOMB_X24_Y18_N14
\u_uart_send|tx_data[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_data[3]~1_combout\ = ((!\u_uart_send|uart_en_d1~q\ & \u_uart_send|uart_en_d0~q\)) # (!\u_uart_send|always1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|always1~4_combout\,
	datab => \u_uart_send|uart_en_d1~q\,
	datad => \u_uart_send|uart_en_d0~q\,
	combout => \u_uart_send|tx_data[3]~1_combout\);

-- Location: FF_X24_Y18_N15
\u_uart_send|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_uart_send|tx_data~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_uart_send|tx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_data\(3));

-- Location: LCCOMB_X25_Y17_N6
\u_key_debounce|key_value[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_value[0]~1_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	combout => \u_key_debounce|key_value[0]~1_combout\);

-- Location: FF_X25_Y17_N7
\u_key_debounce|key_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|key_value[0]~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_key_debounce|Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_value\(0));

-- Location: LCCOMB_X25_Y18_N12
\u_uart_send|tx_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_data~2_combout\ = (\u_uart_send|uart_en_d0~q\ & (!\u_key_debounce|key_value\(0) & !\u_uart_send|uart_en_d1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|uart_en_d0~q\,
	datac => \u_key_debounce|key_value\(0),
	datad => \u_uart_send|uart_en_d1~q\,
	combout => \u_uart_send|tx_data~2_combout\);

-- Location: FF_X24_Y18_N17
\u_uart_send|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_uart_send|tx_data~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_uart_send|tx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_data\(0));

-- Location: LCCOMB_X24_Y18_N16
\u_uart_send|uart_txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_txd~0_combout\ = (\u_uart_send|tx_cnt\(3)) # ((!\u_uart_send|tx_cnt\(2) & ((\u_uart_send|tx_cnt\(1)) # (\u_uart_send|tx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt\(3),
	datab => \u_uart_send|tx_cnt\(1),
	datac => \u_uart_send|tx_data\(0),
	datad => \u_uart_send|tx_cnt\(2),
	combout => \u_uart_send|uart_txd~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\u_key_debounce|key_value[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_value[2]~2_combout\ = !\key[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[2]~input_o\,
	combout => \u_key_debounce|key_value[2]~2_combout\);

-- Location: FF_X25_Y17_N29
\u_key_debounce|key_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|key_value[2]~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_key_debounce|Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_value\(2));

-- Location: LCCOMB_X24_Y18_N18
\u_uart_send|tx_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_data~3_combout\ = (!\u_uart_send|uart_en_d1~q\ & (!\u_key_debounce|key_value\(2) & \u_uart_send|uart_en_d0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|uart_en_d1~q\,
	datac => \u_key_debounce|key_value\(2),
	datad => \u_uart_send|uart_en_d0~q\,
	combout => \u_uart_send|tx_data~3_combout\);

-- Location: FF_X24_Y18_N19
\u_uart_send|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|tx_data~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_uart_send|tx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_data\(2));

-- Location: LCCOMB_X25_Y17_N2
\u_key_debounce|key_value[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_key_debounce|key_value[1]~3_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \u_key_debounce|key_value[1]~3_combout\);

-- Location: FF_X25_Y17_N3
\u_key_debounce|key_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_key_debounce|key_value[1]~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \u_key_debounce|Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_key_debounce|key_value\(1));

-- Location: LCCOMB_X25_Y18_N0
\u_uart_send|tx_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|tx_data~4_combout\ = (\u_uart_send|uart_en_d0~q\ & (!\u_key_debounce|key_value\(1) & !\u_uart_send|uart_en_d1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|uart_en_d0~q\,
	datab => \u_key_debounce|key_value\(1),
	datad => \u_uart_send|uart_en_d1~q\,
	combout => \u_uart_send|tx_data~4_combout\);

-- Location: FF_X24_Y18_N1
\u_uart_send|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \u_uart_send|tx_data~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_uart_send|tx_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|tx_data\(1));

-- Location: LCCOMB_X24_Y18_N0
\u_uart_send|uart_txd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_txd~1_combout\ = (\u_uart_send|tx_cnt\(1) & ((\u_uart_send|tx_cnt\(0) & (\u_uart_send|tx_data\(2))) # (!\u_uart_send|tx_cnt\(0) & ((\u_uart_send|tx_data\(1)))))) # (!\u_uart_send|tx_cnt\(1) & (((\u_uart_send|tx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_cnt\(1),
	datab => \u_uart_send|tx_data\(2),
	datac => \u_uart_send|tx_data\(1),
	datad => \u_uart_send|tx_cnt\(0),
	combout => \u_uart_send|uart_txd~1_combout\);

-- Location: LCCOMB_X25_Y18_N10
\u_uart_send|uart_txd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_txd~2_combout\ = (\u_uart_send|tx_cnt\(1) & (\u_uart_send|tx_cnt\(3))) # (!\u_uart_send|tx_cnt\(1) & ((\u_uart_send|tx_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_send|tx_cnt\(1),
	datac => \u_uart_send|tx_cnt\(3),
	datad => \u_uart_send|tx_cnt\(2),
	combout => \u_uart_send|uart_txd~2_combout\);

-- Location: LCCOMB_X25_Y18_N16
\u_uart_send|uart_txd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_txd~3_combout\ = (\u_uart_send|uart_txd~0_combout\ & ((\u_uart_send|uart_txd~2_combout\ & (!\u_uart_send|uart_txd~q\)) # (!\u_uart_send|uart_txd~2_combout\ & ((\u_uart_send|uart_txd~1_combout\))))) # (!\u_uart_send|uart_txd~0_combout\ & 
-- (((!\u_uart_send|uart_txd~1_combout\ & \u_uart_send|uart_txd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|uart_txd~0_combout\,
	datab => \u_uart_send|uart_txd~q\,
	datac => \u_uart_send|uart_txd~1_combout\,
	datad => \u_uart_send|uart_txd~2_combout\,
	combout => \u_uart_send|uart_txd~3_combout\);

-- Location: LCCOMB_X25_Y18_N20
\u_uart_send|uart_txd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart_send|uart_txd~4_combout\ = (\u_uart_send|tx_flag~q\ & (((!\u_uart_send|tx_data\(3) & !\u_uart_send|uart_txd~0_combout\)) # (!\u_uart_send|uart_txd~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_send|tx_data\(3),
	datab => \u_uart_send|tx_flag~q\,
	datac => \u_uart_send|uart_txd~0_combout\,
	datad => \u_uart_send|uart_txd~3_combout\,
	combout => \u_uart_send|uart_txd~4_combout\);

-- Location: FF_X25_Y18_N21
\u_uart_send|uart_txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \u_uart_send|uart_txd~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_send|uart_txd~q\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_rs485_uart_txd <= \rs485_uart_txd~output_o\;

ww_rs485_tx_en <= \rs485_tx_en~output_o\;
END structure;


