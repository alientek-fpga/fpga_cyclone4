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

-- DATE "09/11/2018 14:27:01"

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

ENTITY 	sdram_rw_test IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	sdram_clk : BUFFER std_logic;
	sdram_cke : BUFFER std_logic;
	sdram_cs_n : BUFFER std_logic;
	sdram_ras_n : BUFFER std_logic;
	sdram_cas_n : BUFFER std_logic;
	sdram_we_n : BUFFER std_logic;
	sdram_ba : BUFFER std_logic_vector(1 DOWNTO 0);
	sdram_addr : BUFFER std_logic_vector(12 DOWNTO 0);
	sdram_data : BUFFER std_logic_vector(15 DOWNTO 0);
	sdram_dqm : BUFFER std_logic_vector(1 DOWNTO 0);
	led : BUFFER std_logic
	);
END sdram_rw_test;

-- Design Ports Information
-- sdram_clk	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_cke	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_cs_n	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_ras_n	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_cas_n	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_we_n	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_ba[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_ba[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_dqm[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_dqm[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[1]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[9]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[13]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[14]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sdram_rw_test IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_sdram_clk : std_logic;
SIGNAL ww_sdram_cke : std_logic;
SIGNAL ww_sdram_cs_n : std_logic;
SIGNAL ww_sdram_ras_n : std_logic;
SIGNAL ww_sdram_cas_n : std_logic;
SIGNAL ww_sdram_we_n : std_logic;
SIGNAL ww_sdram_ba : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sdram_addr : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_sdram_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sdram_dqm : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sys_rst_n~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \sys_rst_n~0_combout\ : std_logic;
SIGNAL \sys_rst_n~0clkctrl_outclk\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~14_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~16_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~18_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~20_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~22_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~24_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~26_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~27\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[9]~28_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[0]~14_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~15_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~17_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~19_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~21_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~23_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~25_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~27_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~29_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~31_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~33_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~35_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~37_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~39_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~40\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[14]~41_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Add5~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~12_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~11_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~19_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~21_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~23_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~25_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~27_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~29_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~30\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[10]~31_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~13_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~15_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~17_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~13_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor9~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[10]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[9]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor9~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor8~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[8]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor8~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[7]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor6~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor6~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor5~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[5]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor5~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor3~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[3]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor3~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[2]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor2~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor2~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[1]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor0~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor0~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r2~q\ : std_logic;
SIGNAL \u_sdram_test|init_done_d0~q\ : std_logic;
SIGNAL \u_sdram_test|init_done_d1~q\ : std_logic;
SIGNAL \u_sdram_test|LessThan2~1_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[1]~10_combout\ : std_logic;
SIGNAL \u_sdram_test|always1~0_combout\ : std_logic;
SIGNAL \u_sdram_test|LessThan2~0_combout\ : std_logic;
SIGNAL \u_sdram_test|LessThan2~2_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[0]~30_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[1]~11\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[2]~12_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[2]~13\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[3]~14_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[3]~15\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[4]~16_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[4]~17\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[5]~18_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[5]~19\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[6]~20_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[6]~21\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[7]~22_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[7]~23\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[8]~24_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[8]~25\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[9]~26_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[9]~27\ : std_logic;
SIGNAL \u_sdram_test|wr_cnt[10]~28_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_en~0_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_en~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[10]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[9]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[8]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[6]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[5]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[4]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[3]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[2]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~9_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~16_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~15_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~14_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~12_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdempty_eq_comp_lsb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \u_sdram_test|always2~0_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_en~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~1_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~2_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~3_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~4_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~5_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~6_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~7_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[0]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[1]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[2]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[3]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[4]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[5]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[6]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[7]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[8]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~9_combout\ : std_logic;
SIGNAL \u_sdram_test|wr_data~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[9]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[10]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[11]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[12]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[13]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[14]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[15]~feeder_combout\ : std_logic;
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[4]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[3]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~15_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~42\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[23]~43_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r2~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~17_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~19_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~21_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~23_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~25_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~27_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~29_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~31_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~33_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~35_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~37_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~39_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~41_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~15_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~42\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[23]~43_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r1~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r2~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~17_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~19_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~21_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~23_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~25_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~27_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~29_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~31_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~33_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~35_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~37_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~39_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~41_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~4_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~5_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~6_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~7_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~8_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~2_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~9_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~10_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~11_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~12_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~1_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[0]~11_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[8]~28\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[9]~29_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[9]~30\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[10]~31_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[0]~12\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[1]~13_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[1]~14\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[2]~15_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[2]~16\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[3]~17_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[3]~18\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[4]~19_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[4]~20\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[5]~21_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[5]~22\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[6]~23_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[6]~24\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[7]~25_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[7]~26\ : std_logic;
SIGNAL \u_sdram_test|rd_cnt[8]~27_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal0~2_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal0~0_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal0~1_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_valid~0_combout\ : std_logic;
SIGNAL \u_sdram_test|rd_valid~q\ : std_logic;
SIGNAL \sdram_data[0]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \sdram_data[1]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[1]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[2]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[2]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[3]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[3]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[4]~input_o\ : std_logic;
SIGNAL \sdram_data[5]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[5]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[6]~input_o\ : std_logic;
SIGNAL \sdram_data[7]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[7]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[8]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[8]~feeder_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~0_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~2_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~1_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~3_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~4_combout\ : std_logic;
SIGNAL \sdram_data[9]~input_o\ : std_logic;
SIGNAL \sdram_data[10]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[10]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[11]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[11]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[12]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[12]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[13]~input_o\ : std_logic;
SIGNAL \sdram_data[14]~input_o\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[14]~feeder_combout\ : std_logic;
SIGNAL \sdram_data[15]~input_o\ : std_logic;
SIGNAL \u_sdram_test|Equal1~6_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~7_combout\ : std_logic;
SIGNAL \u_sdram_test|Equal1~5_combout\ : std_logic;
SIGNAL \u_sdram_test|always6~0_combout\ : std_logic;
SIGNAL \u_sdram_test|error_flag~0_combout\ : std_logic;
SIGNAL \u_sdram_test|error_flag~q\ : std_logic;
SIGNAL \u_led_disp|led_cnt[0]~25_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[15]~56\ : std_logic;
SIGNAL \u_led_disp|led_cnt[16]~57_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[16]~58\ : std_logic;
SIGNAL \u_led_disp|led_cnt[17]~59_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[17]~60\ : std_logic;
SIGNAL \u_led_disp|led_cnt[18]~61_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[18]~62\ : std_logic;
SIGNAL \u_led_disp|led_cnt[19]~63_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[19]~64\ : std_logic;
SIGNAL \u_led_disp|led_cnt[20]~65_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[20]~66\ : std_logic;
SIGNAL \u_led_disp|led_cnt[21]~67_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~0_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[21]~68\ : std_logic;
SIGNAL \u_led_disp|led_cnt[22]~69_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[22]~70\ : std_logic;
SIGNAL \u_led_disp|led_cnt[23]~71_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[23]~72\ : std_logic;
SIGNAL \u_led_disp|led_cnt[24]~73_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~2_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~1_combout\ : std_logic;
SIGNAL \u_led_disp|LessThan0~0_combout\ : std_logic;
SIGNAL \u_led_disp|LessThan0~1_combout\ : std_logic;
SIGNAL \u_led_disp|LessThan0~2_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[0]~26\ : std_logic;
SIGNAL \u_led_disp|led_cnt[1]~27_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[1]~28\ : std_logic;
SIGNAL \u_led_disp|led_cnt[2]~29_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[2]~30\ : std_logic;
SIGNAL \u_led_disp|led_cnt[3]~31_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[3]~32\ : std_logic;
SIGNAL \u_led_disp|led_cnt[4]~33_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[4]~34\ : std_logic;
SIGNAL \u_led_disp|led_cnt[5]~35_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[5]~36\ : std_logic;
SIGNAL \u_led_disp|led_cnt[6]~37_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[6]~38\ : std_logic;
SIGNAL \u_led_disp|led_cnt[7]~39_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[7]~40\ : std_logic;
SIGNAL \u_led_disp|led_cnt[8]~41_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[8]~42\ : std_logic;
SIGNAL \u_led_disp|led_cnt[9]~43_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[9]~44\ : std_logic;
SIGNAL \u_led_disp|led_cnt[10]~45_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[10]~46\ : std_logic;
SIGNAL \u_led_disp|led_cnt[11]~47_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[11]~48\ : std_logic;
SIGNAL \u_led_disp|led_cnt[12]~49_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[12]~50\ : std_logic;
SIGNAL \u_led_disp|led_cnt[13]~51_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[13]~52\ : std_logic;
SIGNAL \u_led_disp|led_cnt[14]~53_combout\ : std_logic;
SIGNAL \u_led_disp|led_cnt[14]~54\ : std_logic;
SIGNAL \u_led_disp|led_cnt[15]~55_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~5_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~4_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~3_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~6_combout\ : std_logic;
SIGNAL \u_led_disp|Equal0~7_combout\ : std_logic;
SIGNAL \u_led_disp|led~0_combout\ : std_logic;
SIGNAL \u_led_disp|led~q\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_sdram_test|wr_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_sdram_test|wr_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_test|rd_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_led_disp|led_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sys_rst_n~0clkctrl_outclk\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~1_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ : std_logic;
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_ba\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
sdram_clk <= ww_sdram_clk;
sdram_cke <= ww_sdram_cke;
sdram_cs_n <= ww_sdram_cs_n;
sdram_ras_n <= ww_sdram_ras_n;
sdram_cas_n <= ww_sdram_cas_n;
sdram_we_n <= ww_sdram_we_n;
sdram_ba <= ww_sdram_ba;
sdram_addr <= ww_sdram_addr;
sdram_data <= ww_sdram_data;
sdram_dqm <= ww_sdram_dqm;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_pll_clk|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTADATAIN_bus\ <= (\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(8) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(7) & 
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(6) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(5) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(4) & 
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(3) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(2) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(1) & 
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(0));

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTAADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a\(9) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0));

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\);

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(0);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(1);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(2);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(3);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(4);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(5);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(6);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(7);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(8);

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTADATAIN_bus\ <= (gnd & gnd & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(15) & 
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(14) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(13) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(12) & 
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(11) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(10) & \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(9));

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTAADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a\(9) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2) & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0));

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\);

\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(0);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(1);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(2);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(3);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(4);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(5);
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15) <= \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(6);

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTADATAIN_bus\ <= (\u_sdram_test|wr_data\(8) & \u_sdram_test|wr_data\(7) & \u_sdram_test|wr_data\(6) & \u_sdram_test|wr_data\(5) & 
\u_sdram_test|wr_data\(4) & \u_sdram_test|wr_data\(3) & \u_sdram_test|wr_data\(2) & \u_sdram_test|wr_data\(1) & \u_sdram_test|wr_data\(0));

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTAADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ram_address_a\(9) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(7) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(1) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(0));

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\);

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(0);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(1);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(2);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(3);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(4);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(5);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(6);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(7);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\(8);

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u_sdram_test|wr_data\(10) & 
\u_sdram_test|wr_data\(9));

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTAADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ram_address_a\(9) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(7) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2) & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(1) & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(0));

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBADDR_bus\ <= (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\);

\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(0);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(1);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(2);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(3);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(4);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(5);
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15) <= \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\(6);

\sys_rst_n~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~0_combout\);

\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(0));

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(1));

\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk\(2));
\ALT_INV_rst_n~inputclkctrl_outclk\ <= NOT \rst_n~inputclkctrl_outclk\;
\ALT_INV_sys_rst_n~0clkctrl_outclk\ <= NOT \sys_rst_n~0clkctrl_outclk\;
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~1_combout\ <= NOT \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\;
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ <= NOT \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\;
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(12) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(12);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(11) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(11);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(10) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(10);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(9) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(9);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(8) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(8);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(7) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(7);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(6) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(6);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(5) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(5);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(4) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(4);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(3) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(3);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(2) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(2);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(1) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(1);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(0) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(0);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_ba\(1) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba\(1);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_ba\(0) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba\(0);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(0) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(0);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(1) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(1);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(2) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(2);
\u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(3) <= NOT \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(3);

-- Location: IOOBUF_X28_Y24_N9
\sdram_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_sdram_clk);

-- Location: IOOBUF_X34_Y18_N23
\sdram_cke~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(4),
	devoe => ww_devoe,
	o => ww_sdram_cke);

-- Location: IOOBUF_X25_Y0_N16
\sdram_cs_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(3),
	devoe => ww_devoe,
	o => ww_sdram_cs_n);

-- Location: IOOBUF_X34_Y6_N16
\sdram_ras_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(2),
	devoe => ww_devoe,
	o => ww_sdram_ras_n);

-- Location: IOOBUF_X34_Y11_N9
\sdram_cas_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(1),
	devoe => ww_devoe,
	o => ww_sdram_cas_n);

-- Location: IOOBUF_X34_Y11_N2
\sdram_we_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_cmd_r\(0),
	devoe => ww_devoe,
	o => ww_sdram_we_n);

-- Location: IOOBUF_X34_Y20_N16
\sdram_ba[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_ba\(0),
	devoe => ww_devoe,
	o => ww_sdram_ba(0));

-- Location: IOOBUF_X34_Y17_N2
\sdram_ba[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_ba\(1),
	devoe => ww_devoe,
	o => ww_sdram_ba(1));

-- Location: IOOBUF_X23_Y24_N23
\sdram_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(0),
	devoe => ww_devoe,
	o => ww_sdram_addr(0));

-- Location: IOOBUF_X28_Y24_N16
\sdram_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(1),
	devoe => ww_devoe,
	o => ww_sdram_addr(1));

-- Location: IOOBUF_X32_Y24_N16
\sdram_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(2),
	devoe => ww_devoe,
	o => ww_sdram_addr(2));

-- Location: IOOBUF_X32_Y24_N9
\sdram_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(3),
	devoe => ww_devoe,
	o => ww_sdram_addr(3));

-- Location: IOOBUF_X28_Y24_N2
\sdram_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(4),
	devoe => ww_devoe,
	o => ww_sdram_addr(4));

-- Location: IOOBUF_X21_Y24_N2
\sdram_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(5),
	devoe => ww_devoe,
	o => ww_sdram_addr(5));

-- Location: IOOBUF_X34_Y18_N2
\sdram_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(6),
	devoe => ww_devoe,
	o => ww_sdram_addr(6));

-- Location: IOOBUF_X34_Y20_N2
\sdram_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(7),
	devoe => ww_devoe,
	o => ww_sdram_addr(7));

-- Location: IOOBUF_X34_Y20_N9
\sdram_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(8),
	devoe => ww_devoe,
	o => ww_sdram_addr(8));

-- Location: IOOBUF_X34_Y19_N2
\sdram_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(9),
	devoe => ww_devoe,
	o => ww_sdram_addr(9));

-- Location: IOOBUF_X34_Y19_N16
\sdram_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(10),
	devoe => ww_devoe,
	o => ww_sdram_addr(10));

-- Location: IOOBUF_X34_Y19_N9
\sdram_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(11),
	devoe => ww_devoe,
	o => ww_sdram_addr(11));

-- Location: IOOBUF_X34_Y18_N16
\sdram_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_cmd|ALT_INV_sdram_addr\(12),
	devoe => ww_devoe,
	o => ww_sdram_addr(12));

-- Location: IOOBUF_X34_Y10_N2
\sdram_dqm[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sdram_dqm(0));

-- Location: IOOBUF_X34_Y17_N16
\sdram_dqm[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sdram_dqm(1));

-- Location: IOOBUF_X23_Y24_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_led_disp|led~q\,
	devoe => ww_devoe,
	o => ww_led);

-- Location: IOOBUF_X32_Y0_N23
\sdram_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(0),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(0));

-- Location: IOOBUF_X34_Y2_N16
\sdram_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(1),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(1));

-- Location: IOOBUF_X34_Y4_N23
\sdram_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(2),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(2));

-- Location: IOOBUF_X34_Y3_N23
\sdram_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(3),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(3));

-- Location: IOOBUF_X34_Y8_N23
\sdram_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(4),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(4));

-- Location: IOOBUF_X34_Y7_N9
\sdram_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(5),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(5));

-- Location: IOOBUF_X32_Y0_N16
\sdram_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(6),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(6));

-- Location: IOOBUF_X34_Y3_N16
\sdram_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(7),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(7));

-- Location: IOOBUF_X34_Y17_N23
\sdram_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(8),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(8));

-- Location: IOOBUF_X34_Y9_N23
\sdram_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(9),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(9));

-- Location: IOOBUF_X34_Y9_N2
\sdram_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(10),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(10));

-- Location: IOOBUF_X34_Y10_N9
\sdram_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(11),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(11));

-- Location: IOOBUF_X34_Y9_N16
\sdram_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(12),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(12));

-- Location: IOOBUF_X34_Y9_N9
\sdram_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(13),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(13));

-- Location: IOOBUF_X34_Y8_N16
\sdram_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(14),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(14));

-- Location: IOOBUF_X34_Y8_N9
\sdram_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(15),
	oe => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\,
	devoe => ww_devoe,
	o => ww_sdram_data(15));

-- Location: IOIBUF_X0_Y11_N22
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G0
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\u_pll_clk|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 2,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 2,
	c1_high => 3,
	c1_initial => 2,
	c1_low => 3,
	c1_mode => "even",
	c1_ph => 2,
	c1_use_casc_in => "off",
	c2_high => 3,
	c2_initial => 1,
	c2_low => 3,
	c2_mode => "even",
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
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_counter => "c2",
	clk2_divide_by => 1,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 2,
	clk2_phase_shift => "-2083",
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
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 2,
	m_ph => 2,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5891,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_rst_n~inputclkctrl_outclk\,
	fbin => \u_pll_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u_pll_clk|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \u_pll_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u_pll_clk|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y19_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\);

-- Location: LCCOMB_X1_Y11_N0
\u_pll_clk|altpll_component|auto_generated|pll_lock_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X1_Y11_N1
\u_pll_clk|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\,
	d => \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X1_Y11_N2
\sys_rst_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sys_rst_n~0_combout\ = ((!\u_pll_clk|altpll_component|auto_generated|pll_lock_sync~q\) # (!\u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\)) # (!\rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datac => \u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \sys_rst_n~0_combout\);

-- Location: CLKCTRL_G1
\sys_rst_n~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst_n~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst_n~0clkctrl_outclk\);

-- Location: FF_X17_Y19_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\);

-- Location: LCCOMB_X17_Y19_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCCOMB_X17_Y19_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\);

-- Location: FF_X17_Y19_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\);

-- Location: LCCOMB_X17_Y19_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\);

-- Location: FF_X17_Y19_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(0));

-- Location: LCCOMB_X17_Y19_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: LCCOMB_X17_Y19_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X16_Y18_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\);

-- Location: FF_X16_Y18_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\);

-- Location: LCCOMB_X16_Y18_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\);

-- Location: FF_X16_Y18_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\);

-- Location: LCCOMB_X16_Y18_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\);

-- Location: FF_X16_Y18_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\);

-- Location: LCCOMB_X16_Y18_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\);

-- Location: FF_X16_Y18_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(1));

-- Location: LCCOMB_X16_Y18_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: LCCOMB_X16_Y18_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\);

-- Location: FF_X16_Y18_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\);

-- Location: LCCOMB_X16_Y18_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: LCCOMB_X16_Y18_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\);

-- Location: FF_X16_Y18_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\);

-- Location: LCCOMB_X16_Y18_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\);

-- Location: FF_X16_Y18_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\);

-- Location: LCCOMB_X16_Y18_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: FF_X16_Y18_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(2));

-- Location: LCCOMB_X16_Y18_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(1) $ (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(0),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(1),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: FF_X16_Y18_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\);

-- Location: LCCOMB_X17_Y19_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: FF_X17_Y19_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\);

-- Location: LCCOMB_X17_Y19_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X17_Y19_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\);

-- Location: FF_X17_Y19_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\);

-- Location: LCCOMB_X17_Y19_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\);

-- Location: FF_X17_Y19_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\);

-- Location: LCCOMB_X16_Y18_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\);

-- Location: FF_X16_Y18_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4));

-- Location: FF_X16_Y18_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5));

-- Location: LCCOMB_X17_Y16_N0
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~10_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0) $ (VCC)
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\ = CARRY(\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datad => VCC,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~10_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\);

-- Location: LCCOMB_X17_Y16_N2
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~12_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1) 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~11\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~12_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\);

-- Location: LCCOMB_X17_Y16_N4
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~14_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~13\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~14_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\);

-- Location: FF_X17_Y16_N5
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~14_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2));

-- Location: LCCOMB_X17_Y16_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~16_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3) 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[2]~15\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~16_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\);

-- Location: FF_X17_Y16_N7
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~16_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3));

-- Location: LCCOMB_X17_Y16_N8
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~18_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[3]~17\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~18_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\);

-- Location: FF_X17_Y16_N9
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~18_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4));

-- Location: LCCOMB_X17_Y16_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~20_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5) 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[4]~19\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~20_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\);

-- Location: FF_X17_Y16_N11
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~20_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5));

-- Location: LCCOMB_X17_Y16_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~22_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[5]~21\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~22_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\);

-- Location: FF_X17_Y16_N13
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~22_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6));

-- Location: LCCOMB_X17_Y16_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\);

-- Location: LCCOMB_X17_Y16_N14
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~24_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[6]~23\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~24_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\);

-- Location: FF_X17_Y16_N15
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~24_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7));

-- Location: LCCOMB_X17_Y16_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~26_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~27\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[7]~25\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~26_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~27\);

-- Location: FF_X17_Y16_N17
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~26_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8));

-- Location: LCCOMB_X17_Y16_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\);

-- Location: LCCOMB_X17_Y16_N18
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[9]~28_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) $ (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[8]~27\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[9]~28_combout\);

-- Location: FF_X17_Y16_N19
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[9]~28_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9));

-- Location: LCCOMB_X17_Y16_N20
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\);

-- Location: LCCOMB_X18_Y16_N30
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0)) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8)) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~1_combout\);

-- Location: LCCOMB_X18_Y16_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\);

-- Location: LCCOMB_X18_Y16_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~1_combout\) # (((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\);

-- Location: LCCOMB_X22_Y19_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7) 
-- & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y19_N14
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~0_combout\) # (((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y19_N30
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\ = ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~1_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\);

-- Location: LCCOMB_X22_Y19_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[0]~14_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\ $ (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[0]~14_combout\);

-- Location: FF_X22_Y19_N17
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[0]~14_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0));

-- Location: LCCOMB_X23_Y19_N2
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~15_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1) $ (VCC))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1) & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1),
	datad => VCC,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~15_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\);

-- Location: FF_X23_Y19_N3
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~15_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1));

-- Location: LCCOMB_X23_Y19_N4
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~17_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[1]~16\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~17_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\);

-- Location: FF_X23_Y19_N5
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~17_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2));

-- Location: LCCOMB_X23_Y19_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~19_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[2]~18\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~19_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\);

-- Location: FF_X23_Y19_N7
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~19_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3));

-- Location: LCCOMB_X23_Y19_N8
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~21_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[3]~20\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~21_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\);

-- Location: FF_X23_Y19_N9
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~21_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4));

-- Location: LCCOMB_X23_Y19_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~23_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[4]~22\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~23_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\);

-- Location: FF_X23_Y19_N11
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~23_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5));

-- Location: LCCOMB_X23_Y19_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~25_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[5]~24\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~25_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\);

-- Location: FF_X23_Y19_N13
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~25_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6));

-- Location: LCCOMB_X23_Y19_N14
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~27_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[6]~26\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~27_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\);

-- Location: FF_X23_Y19_N15
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~27_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7));

-- Location: LCCOMB_X23_Y19_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~29_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[7]~28\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~29_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\);

-- Location: FF_X23_Y19_N17
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~29_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8));

-- Location: LCCOMB_X23_Y19_N18
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~31_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[8]~30\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~31_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\);

-- Location: FF_X23_Y19_N19
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~31_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9));

-- Location: LCCOMB_X23_Y19_N20
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~33_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[9]~32\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~33_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\);

-- Location: FF_X23_Y19_N21
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~33_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10));

-- Location: LCCOMB_X23_Y19_N22
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~35_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[10]~34\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~35_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\);

-- Location: FF_X23_Y19_N23
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~35_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11));

-- Location: LCCOMB_X23_Y19_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~37_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[11]~36\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~37_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\);

-- Location: FF_X23_Y19_N25
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~37_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12));

-- Location: LCCOMB_X23_Y19_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~39_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~40\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[12]~38\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~39_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~40\);

-- Location: FF_X23_Y19_N27
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~39_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13));

-- Location: LCCOMB_X23_Y19_N28
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[14]~41_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~40\ $ (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14),
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[13]~40\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[14]~41_combout\);

-- Location: FF_X23_Y19_N29
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us[14]~41_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14));

-- Location: LCCOMB_X22_Y19_N22
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(14),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(5),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(4),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(3),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~3_combout\);

-- Location: LCCOMB_X22_Y19_N18
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(7),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(6),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~2_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(13),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(12),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y19_N28
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(10),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_200us\(11),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y19_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~4_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~3_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~2_combout\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~4_combout\);

-- Location: LCCOMB_X22_Y19_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~4_combout\) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~4_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5_combout\);

-- Location: LCCOMB_X22_Y19_N8
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~6_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2))))) 
-- # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~5_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~6_combout\);

-- Location: FF_X22_Y19_N9
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux2~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0));

-- Location: LCCOMB_X22_Y19_N0
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\ & 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0)))) 
-- # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~0_combout\) # ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~1_combout\);

-- Location: FF_X22_Y19_N5
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux1~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1));

-- Location: LCCOMB_X23_Y16_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~5_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1)) # 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0)) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~5_combout\);

-- Location: LCCOMB_X23_Y16_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) $ 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\);

-- Location: FF_X23_Y16_N27
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~5_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0));

-- Location: LCCOMB_X23_Y16_N0
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\);

-- Location: LCCOMB_X23_Y16_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~4_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0) $ 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~4_combout\);

-- Location: FF_X23_Y16_N17
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~4_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1));

-- Location: LCCOMB_X23_Y16_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~3_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2) $ 
-- (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal8~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~3_combout\);

-- Location: FF_X23_Y16_N7
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~3_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2));

-- Location: LCCOMB_X23_Y16_N22
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Add5~0_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(3) $ (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(3),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Add5~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~6_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Add5~0_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1)) # 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0)) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Add5~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~6_combout\);

-- Location: FF_X23_Y16_N13
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(3));

-- Location: LCCOMB_X23_Y16_N4
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0) 
-- & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(2),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_ar_cnt\(3),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y19_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y19_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2)) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[1]~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~2_combout\);

-- Location: FF_X22_Y19_N27
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux0~2_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2));

-- Location: LCCOMB_X18_Y16_N6
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~12_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~12_combout\);

-- Location: LCCOMB_X18_Y17_N4
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~11_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0) $ (VCC)
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\ = CARRY(\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0),
	datad => VCC,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~11_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\);

-- Location: LCCOMB_X18_Y17_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~17_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~17_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\);

-- Location: LCCOMB_X18_Y17_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~19_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~18\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~19_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\);

-- Location: FF_X18_Y17_N13
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~19_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4));

-- Location: LCCOMB_X18_Y17_N14
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~21_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[4]~20\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~21_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\);

-- Location: FF_X18_Y17_N15
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~21_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5));

-- Location: LCCOMB_X18_Y17_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~23_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[5]~22\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~23_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\);

-- Location: FF_X18_Y17_N17
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~23_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6));

-- Location: LCCOMB_X18_Y17_N18
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~25_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[6]~24\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~25_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\);

-- Location: FF_X18_Y17_N19
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~25_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7));

-- Location: LCCOMB_X18_Y17_N20
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~27_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[7]~26\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~27_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\);

-- Location: FF_X18_Y17_N21
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~27_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8));

-- Location: LCCOMB_X18_Y17_N22
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~29_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~30\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[8]~28\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~29_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~30\);

-- Location: FF_X18_Y17_N23
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~29_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9));

-- Location: LCCOMB_X18_Y17_N28
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~3_combout\);

-- Location: LCCOMB_X18_Y17_N0
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7) & 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(6),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(7),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(5),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(4),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\);

-- Location: LCCOMB_X18_Y17_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~0_combout\ = (((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~0_combout\);

-- Location: LCCOMB_X18_Y17_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[10]~31_combout\ = \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10) $ (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10),
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[9]~30\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[10]~31_combout\);

-- Location: FF_X18_Y17_N25
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[10]~31_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10));

-- Location: LCCOMB_X18_Y17_N30
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10)) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~3_combout\ & 
-- ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~0_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\);

-- Location: FF_X18_Y17_N5
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~11_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0));

-- Location: LCCOMB_X18_Y17_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~13_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\) # (GND)))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\ = CARRY((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[0]~12\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~13_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\);

-- Location: FF_X18_Y17_N7
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~13_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1));

-- Location: LCCOMB_X18_Y17_N8
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~15_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\ $ (GND))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\ & VCC))
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\ = CARRY((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[1]~14\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~15_combout\,
	cout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~16\);

-- Location: FF_X18_Y17_N9
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[2]~15_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2));

-- Location: FF_X18_Y17_N11
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh[3]~17_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3));

-- Location: LCCOMB_X18_Y17_N2
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2) 
-- & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~1_combout\);

-- Location: LCCOMB_X19_Y17_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(10),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_refresh\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~2_combout\);

-- Location: LCCOMB_X21_Y16_N2
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\);

-- Location: LCCOMB_X21_Y16_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\ & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~0_combout\) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~1_combout\ & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\ & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal7~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~1_combout\);

-- Location: FF_X21_Y16_N5
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\);

-- Location: LCCOMB_X22_Y19_N30
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\);

-- Location: LCCOMB_X21_Y16_N16
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~13_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~13_combout\);

-- Location: LCCOMB_X21_Y16_N18
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2))))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~13_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y16_N18
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~10_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~10_combout\);

-- Location: LCCOMB_X19_Y16_N4
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1)) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)) # 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\ & \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~10_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\);

-- Location: LCCOMB_X21_Y16_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~12_combout\ & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~12_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~1_combout\);

-- Location: FF_X21_Y16_N27
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux3~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3));

-- Location: LCCOMB_X19_Y16_N0
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\ = ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2)) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)) # 
-- ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y16_N22
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (\u_pll_clk|altpll_component|auto_generated|pll_lock_sync~q\ & 
-- (\u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\ & \rst_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datab => \u_pll_clk|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \u_pll_clk|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \rst_n~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2_combout\);

-- Location: LCCOMB_X16_Y19_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X16_Y19_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\);

-- Location: FF_X16_Y19_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\);

-- Location: LCCOMB_X16_Y19_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCCOMB_X17_Y18_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\);

-- Location: FF_X17_Y18_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\);

-- Location: FF_X17_Y18_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCCOMB_X17_Y18_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\);

-- Location: FF_X17_Y18_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\);

-- Location: FF_X17_Y18_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: LCCOMB_X17_Y18_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor9~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor9~combout\);

-- Location: FF_X17_Y18_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor9~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(9));

-- Location: FF_X17_Y17_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10));

-- Location: FF_X18_Y18_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10));

-- Location: LCCOMB_X18_Y18_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[10]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[10]~feeder_combout\);

-- Location: FF_X18_Y18_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10));

-- Location: FF_X17_Y17_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9));

-- Location: FF_X18_Y18_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9));

-- Location: LCCOMB_X18_Y18_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[9]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[9]~feeder_combout\);

-- Location: FF_X18_Y18_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[9]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9));

-- Location: LCCOMB_X18_Y18_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor9~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor9~combout\);

-- Location: FF_X18_Y18_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor9~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(9));

-- Location: FF_X17_Y18_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X17_Y18_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor8~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor8~combout\);

-- Location: FF_X17_Y18_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor8~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(8));

-- Location: LCCOMB_X16_Y18_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\);

-- Location: FF_X16_Y18_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8));

-- Location: FF_X18_Y18_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: LCCOMB_X18_Y18_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[8]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[8]~feeder_combout\);

-- Location: FF_X18_Y18_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[8]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(8));

-- Location: LCCOMB_X18_Y18_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor8~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor8~combout\);

-- Location: FF_X18_Y18_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor8~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(8));

-- Location: FF_X17_Y18_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCCOMB_X17_Y18_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\);

-- Location: FF_X17_Y18_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(7));

-- Location: FF_X16_Y18_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(7));

-- Location: FF_X18_Y18_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(7),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCCOMB_X18_Y18_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[7]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[7]~feeder_combout\);

-- Location: FF_X18_Y18_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[7]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(7));

-- Location: LCCOMB_X18_Y18_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(7) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(8) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(8),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\);

-- Location: FF_X18_Y18_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(7));

-- Location: FF_X17_Y18_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCCOMB_X17_Y18_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor6~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor6~combout\);

-- Location: FF_X17_Y18_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor6~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(6));

-- Location: FF_X16_Y18_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6));

-- Location: FF_X18_Y18_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: FF_X18_Y18_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6));

-- Location: LCCOMB_X18_Y18_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor6~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor6~combout\);

-- Location: FF_X18_Y18_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor6~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(6));

-- Location: FF_X16_Y19_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X17_Y18_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor5~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor5~combout\);

-- Location: FF_X17_Y18_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor5~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(5));

-- Location: FF_X19_Y19_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X19_Y20_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[5]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[5]~feeder_combout\);

-- Location: FF_X19_Y20_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[5]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(5));

-- Location: LCCOMB_X18_Y20_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor5~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor5~combout\);

-- Location: FF_X18_Y20_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor5~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(5));

-- Location: FF_X19_Y19_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: FF_X19_Y19_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(4));

-- Location: LCCOMB_X18_Y20_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(4) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(4),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor7~combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\);

-- Location: FF_X18_Y20_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(4));

-- Location: LCCOMB_X17_Y18_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\);

-- Location: FF_X17_Y18_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(4));

-- Location: FF_X18_Y19_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X18_Y19_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor3~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor3~combout\);

-- Location: FF_X18_Y19_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor3~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(3));

-- Location: FF_X17_Y19_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3));

-- Location: FF_X19_Y19_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X19_Y19_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[3]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[3]~feeder_combout\);

-- Location: FF_X19_Y19_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3));

-- Location: LCCOMB_X18_Y20_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor3~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor3~combout\);

-- Location: FF_X18_Y20_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor3~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(3));

-- Location: FF_X17_Y19_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2));

-- Location: FF_X19_Y19_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X19_Y19_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[2]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[2]~feeder_combout\);

-- Location: FF_X19_Y19_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(2));

-- Location: LCCOMB_X18_Y20_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor2~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(2) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor2~combout\);

-- Location: FF_X18_Y20_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor2~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(2));

-- Location: FF_X18_Y19_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X18_Y19_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor2~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor2~combout\);

-- Location: FF_X18_Y19_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor2~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(2));

-- Location: FF_X18_Y19_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X18_Y19_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor4~combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1~combout\);

-- Location: FF_X18_Y19_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(1));

-- Location: LCCOMB_X17_Y19_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\);

-- Location: FF_X17_Y19_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(1));

-- Location: FF_X19_Y19_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(1),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X19_Y19_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[1]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[1]~feeder_combout\);

-- Location: FF_X19_Y19_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(1));

-- Location: LCCOMB_X18_Y20_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(2) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(1) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(2),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(1),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor4~combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1~combout\);

-- Location: FF_X18_Y20_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(1));

-- Location: LCCOMB_X18_Y19_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ = !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\);

-- Location: FF_X18_Y19_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCCOMB_X18_Y19_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor0~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor1~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor0~combout\);

-- Location: FF_X18_Y19_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g_gray2bin|xor0~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(0));

-- Location: LCCOMB_X17_Y19_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ = !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X17_Y19_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(0));

-- Location: FF_X19_Y19_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(0),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: FF_X19_Y19_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(0));

-- Location: LCCOMB_X18_Y20_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor0~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe4|dffe5a\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor1~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor0~combout\);

-- Location: FF_X18_Y20_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_dgwp_gray2bin|xor0~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(0));

-- Location: LCCOMB_X18_Y20_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(0)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(0),
	datad => VCC,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X18_Y20_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(1) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(1)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(1) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(1) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(1),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~1_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X18_Y20_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(2) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(2)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(2) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(2) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(2),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(2),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~3_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X18_Y20_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(3) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(3)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(3) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(3) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(3),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~5_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X18_Y20_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(4) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(4)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(4) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(4) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(4),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(4),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~7_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X18_Y20_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(5) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(5)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(5) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(5) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(5),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(5),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~9_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X18_Y20_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(6) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(6) & !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11_cout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(6) & ((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(6)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(6),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(6),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~11_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X18_Y20_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(7) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(7)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(7) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(7) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(7),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~13_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X18_Y20_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~17_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(8) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(8) & !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15_cout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(8) & ((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(8)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(8),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(8),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~15_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X18_Y20_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~17_cout\ $ (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_brp|dffe10a\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rs_bwp|dffe10a\(9),
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~17_cout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X22_Y19_N20
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~2_combout\);

-- Location: FF_X22_Y19_N21
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~2_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~q\);

-- Location: LCCOMB_X21_Y16_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~1_combout\ = ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\) # (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~q\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~1_combout\);

-- Location: LCCOMB_X21_Y16_N28
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2_combout\ & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~1_combout\))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~2_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~3_combout\);

-- Location: FF_X21_Y16_N29
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\);

-- Location: LCCOMB_X18_Y16_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\);

-- Location: LCCOMB_X18_Y16_N28
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\ = ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~feeder_combout\);

-- Location: FF_X22_Y17_N31
\u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~q\);

-- Location: FF_X22_Y17_N13
\u_sdram_top|u_sdram_fifo_ctrl|read_valid_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r1~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r2~q\);

-- Location: FF_X22_Y19_N31
\u_sdram_test|init_done_d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|init_done_d0~q\);

-- Location: FF_X14_Y18_N31
\u_sdram_test|init_done_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_test|init_done_d0~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|init_done_d1~q\);

-- Location: LCCOMB_X14_Y19_N0
\u_sdram_test|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|LessThan2~1_combout\ = (\u_sdram_test|wr_cnt\(5)) # ((\u_sdram_test|wr_cnt\(7)) # ((\u_sdram_test|wr_cnt\(6)) # (\u_sdram_test|wr_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(5),
	datab => \u_sdram_test|wr_cnt\(7),
	datac => \u_sdram_test|wr_cnt\(6),
	datad => \u_sdram_test|wr_cnt\(4),
	combout => \u_sdram_test|LessThan2~1_combout\);

-- Location: LCCOMB_X14_Y19_N4
\u_sdram_test|wr_cnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[1]~10_combout\ = (\u_sdram_test|wr_cnt\(0) & (\u_sdram_test|wr_cnt\(1) $ (VCC))) # (!\u_sdram_test|wr_cnt\(0) & (\u_sdram_test|wr_cnt\(1) & VCC))
-- \u_sdram_test|wr_cnt[1]~11\ = CARRY((\u_sdram_test|wr_cnt\(0) & \u_sdram_test|wr_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(0),
	datab => \u_sdram_test|wr_cnt\(1),
	datad => VCC,
	combout => \u_sdram_test|wr_cnt[1]~10_combout\,
	cout => \u_sdram_test|wr_cnt[1]~11\);

-- Location: LCCOMB_X14_Y18_N30
\u_sdram_test|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|always1~0_combout\ = (\u_sdram_test|init_done_d1~q\ & ((!\u_sdram_test|LessThan2~2_combout\) # (!\u_sdram_test|wr_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datac => \u_sdram_test|init_done_d1~q\,
	datad => \u_sdram_test|LessThan2~2_combout\,
	combout => \u_sdram_test|always1~0_combout\);

-- Location: FF_X14_Y19_N5
\u_sdram_test|wr_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[1]~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(1));

-- Location: LCCOMB_X14_Y18_N12
\u_sdram_test|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|LessThan2~0_combout\ = (\u_sdram_test|wr_cnt\(0)) # ((\u_sdram_test|wr_cnt\(2)) # ((\u_sdram_test|wr_cnt\(3)) # (\u_sdram_test|wr_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(0),
	datab => \u_sdram_test|wr_cnt\(2),
	datac => \u_sdram_test|wr_cnt\(3),
	datad => \u_sdram_test|wr_cnt\(1),
	combout => \u_sdram_test|LessThan2~0_combout\);

-- Location: LCCOMB_X14_Y18_N6
\u_sdram_test|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|LessThan2~2_combout\ = (\u_sdram_test|wr_cnt\(9)) # ((\u_sdram_test|wr_cnt\(8)) # ((\u_sdram_test|LessThan2~1_combout\) # (\u_sdram_test|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(9),
	datab => \u_sdram_test|wr_cnt\(8),
	datac => \u_sdram_test|LessThan2~1_combout\,
	datad => \u_sdram_test|LessThan2~0_combout\,
	combout => \u_sdram_test|LessThan2~2_combout\);

-- Location: LCCOMB_X14_Y18_N26
\u_sdram_test|wr_cnt[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[0]~30_combout\ = \u_sdram_test|wr_cnt\(0) $ (((\u_sdram_test|init_done_d1~q\ & ((!\u_sdram_test|LessThan2~2_combout\) # (!\u_sdram_test|wr_cnt\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|init_done_d1~q\,
	datab => \u_sdram_test|wr_cnt\(10),
	datac => \u_sdram_test|wr_cnt\(0),
	datad => \u_sdram_test|LessThan2~2_combout\,
	combout => \u_sdram_test|wr_cnt[0]~30_combout\);

-- Location: FF_X14_Y18_N27
\u_sdram_test|wr_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[0]~30_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(0));

-- Location: LCCOMB_X14_Y19_N6
\u_sdram_test|wr_cnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[2]~12_combout\ = (\u_sdram_test|wr_cnt\(2) & (!\u_sdram_test|wr_cnt[1]~11\)) # (!\u_sdram_test|wr_cnt\(2) & ((\u_sdram_test|wr_cnt[1]~11\) # (GND)))
-- \u_sdram_test|wr_cnt[2]~13\ = CARRY((!\u_sdram_test|wr_cnt[1]~11\) # (!\u_sdram_test|wr_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(2),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[1]~11\,
	combout => \u_sdram_test|wr_cnt[2]~12_combout\,
	cout => \u_sdram_test|wr_cnt[2]~13\);

-- Location: FF_X14_Y19_N7
\u_sdram_test|wr_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[2]~12_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(2));

-- Location: LCCOMB_X14_Y19_N8
\u_sdram_test|wr_cnt[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[3]~14_combout\ = (\u_sdram_test|wr_cnt\(3) & (\u_sdram_test|wr_cnt[2]~13\ $ (GND))) # (!\u_sdram_test|wr_cnt\(3) & (!\u_sdram_test|wr_cnt[2]~13\ & VCC))
-- \u_sdram_test|wr_cnt[3]~15\ = CARRY((\u_sdram_test|wr_cnt\(3) & !\u_sdram_test|wr_cnt[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(3),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[2]~13\,
	combout => \u_sdram_test|wr_cnt[3]~14_combout\,
	cout => \u_sdram_test|wr_cnt[3]~15\);

-- Location: FF_X14_Y19_N9
\u_sdram_test|wr_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[3]~14_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(3));

-- Location: LCCOMB_X14_Y19_N10
\u_sdram_test|wr_cnt[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[4]~16_combout\ = (\u_sdram_test|wr_cnt\(4) & (!\u_sdram_test|wr_cnt[3]~15\)) # (!\u_sdram_test|wr_cnt\(4) & ((\u_sdram_test|wr_cnt[3]~15\) # (GND)))
-- \u_sdram_test|wr_cnt[4]~17\ = CARRY((!\u_sdram_test|wr_cnt[3]~15\) # (!\u_sdram_test|wr_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(4),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[3]~15\,
	combout => \u_sdram_test|wr_cnt[4]~16_combout\,
	cout => \u_sdram_test|wr_cnt[4]~17\);

-- Location: FF_X14_Y19_N11
\u_sdram_test|wr_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[4]~16_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(4));

-- Location: LCCOMB_X14_Y19_N12
\u_sdram_test|wr_cnt[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[5]~18_combout\ = (\u_sdram_test|wr_cnt\(5) & (\u_sdram_test|wr_cnt[4]~17\ $ (GND))) # (!\u_sdram_test|wr_cnt\(5) & (!\u_sdram_test|wr_cnt[4]~17\ & VCC))
-- \u_sdram_test|wr_cnt[5]~19\ = CARRY((\u_sdram_test|wr_cnt\(5) & !\u_sdram_test|wr_cnt[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(5),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[4]~17\,
	combout => \u_sdram_test|wr_cnt[5]~18_combout\,
	cout => \u_sdram_test|wr_cnt[5]~19\);

-- Location: FF_X14_Y19_N13
\u_sdram_test|wr_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[5]~18_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(5));

-- Location: LCCOMB_X14_Y19_N14
\u_sdram_test|wr_cnt[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[6]~20_combout\ = (\u_sdram_test|wr_cnt\(6) & (!\u_sdram_test|wr_cnt[5]~19\)) # (!\u_sdram_test|wr_cnt\(6) & ((\u_sdram_test|wr_cnt[5]~19\) # (GND)))
-- \u_sdram_test|wr_cnt[6]~21\ = CARRY((!\u_sdram_test|wr_cnt[5]~19\) # (!\u_sdram_test|wr_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(6),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[5]~19\,
	combout => \u_sdram_test|wr_cnt[6]~20_combout\,
	cout => \u_sdram_test|wr_cnt[6]~21\);

-- Location: FF_X14_Y19_N15
\u_sdram_test|wr_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[6]~20_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(6));

-- Location: LCCOMB_X14_Y19_N16
\u_sdram_test|wr_cnt[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[7]~22_combout\ = (\u_sdram_test|wr_cnt\(7) & (\u_sdram_test|wr_cnt[6]~21\ $ (GND))) # (!\u_sdram_test|wr_cnt\(7) & (!\u_sdram_test|wr_cnt[6]~21\ & VCC))
-- \u_sdram_test|wr_cnt[7]~23\ = CARRY((\u_sdram_test|wr_cnt\(7) & !\u_sdram_test|wr_cnt[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(7),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[6]~21\,
	combout => \u_sdram_test|wr_cnt[7]~22_combout\,
	cout => \u_sdram_test|wr_cnt[7]~23\);

-- Location: FF_X14_Y19_N17
\u_sdram_test|wr_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[7]~22_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(7));

-- Location: LCCOMB_X14_Y19_N18
\u_sdram_test|wr_cnt[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[8]~24_combout\ = (\u_sdram_test|wr_cnt\(8) & (!\u_sdram_test|wr_cnt[7]~23\)) # (!\u_sdram_test|wr_cnt\(8) & ((\u_sdram_test|wr_cnt[7]~23\) # (GND)))
-- \u_sdram_test|wr_cnt[8]~25\ = CARRY((!\u_sdram_test|wr_cnt[7]~23\) # (!\u_sdram_test|wr_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(8),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[7]~23\,
	combout => \u_sdram_test|wr_cnt[8]~24_combout\,
	cout => \u_sdram_test|wr_cnt[8]~25\);

-- Location: FF_X14_Y19_N19
\u_sdram_test|wr_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[8]~24_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(8));

-- Location: LCCOMB_X14_Y19_N20
\u_sdram_test|wr_cnt[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[9]~26_combout\ = (\u_sdram_test|wr_cnt\(9) & (\u_sdram_test|wr_cnt[8]~25\ $ (GND))) # (!\u_sdram_test|wr_cnt\(9) & (!\u_sdram_test|wr_cnt[8]~25\ & VCC))
-- \u_sdram_test|wr_cnt[9]~27\ = CARRY((\u_sdram_test|wr_cnt\(9) & !\u_sdram_test|wr_cnt[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(9),
	datad => VCC,
	cin => \u_sdram_test|wr_cnt[8]~25\,
	combout => \u_sdram_test|wr_cnt[9]~26_combout\,
	cout => \u_sdram_test|wr_cnt[9]~27\);

-- Location: FF_X14_Y19_N21
\u_sdram_test|wr_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[9]~26_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(9));

-- Location: LCCOMB_X14_Y19_N22
\u_sdram_test|wr_cnt[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_cnt[10]~28_combout\ = \u_sdram_test|wr_cnt\(10) $ (\u_sdram_test|wr_cnt[9]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(10),
	cin => \u_sdram_test|wr_cnt[9]~27\,
	combout => \u_sdram_test|wr_cnt[10]~28_combout\);

-- Location: FF_X14_Y19_N23
\u_sdram_test|wr_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_cnt[10]~28_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_test|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_cnt\(10));

-- Location: LCCOMB_X14_Y18_N16
\u_sdram_test|rd_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_en~0_combout\ = (\u_sdram_test|rd_en~q\) # ((\u_sdram_test|wr_cnt\(10) & \u_sdram_test|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datac => \u_sdram_test|rd_en~q\,
	datad => \u_sdram_test|LessThan2~2_combout\,
	combout => \u_sdram_test|rd_en~0_combout\);

-- Location: FF_X14_Y18_N17
\u_sdram_test|rd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_en~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_en~q\);

-- Location: LCCOMB_X14_Y14_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\);

-- Location: FF_X14_Y14_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\);

-- Location: LCCOMB_X14_Y14_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\);

-- Location: FF_X14_Y14_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\);

-- Location: LCCOMB_X14_Y14_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: FF_X14_Y14_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(1));

-- Location: LCCOMB_X14_Y14_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X13_Y14_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\);

-- Location: FF_X13_Y14_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\);

-- Location: LCCOMB_X13_Y14_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: FF_X13_Y14_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(2));

-- Location: LCCOMB_X14_Y14_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: FF_X14_Y14_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\);

-- Location: LCCOMB_X14_Y14_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: FF_X14_Y14_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(0));

-- Location: LCCOMB_X14_Y14_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(1) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(2) $ (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(1),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(0),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: FF_X14_Y14_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\);

-- Location: LCCOMB_X14_Y14_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X14_Y14_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\);

-- Location: FF_X14_Y14_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\);

-- Location: LCCOMB_X14_Y14_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X14_Y14_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\);

-- Location: FF_X14_Y14_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\);

-- Location: LCCOMB_X14_Y14_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\);

-- Location: FF_X14_Y14_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\);

-- Location: FF_X14_Y16_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCCOMB_X16_Y16_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: FF_X16_Y14_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: FF_X16_Y14_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X16_Y14_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X13_Y16_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\);

-- Location: FF_X13_Y16_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\);

-- Location: FF_X16_Y14_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: FF_X16_Y14_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X16_Y14_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ = !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\);

-- Location: FF_X16_Y14_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: FF_X16_Y14_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X16_Y16_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\);

-- Location: FF_X16_Y16_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\);

-- Location: LCCOMB_X16_Y16_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X16_Y16_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X16_Y16_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ = !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X16_Y16_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0));

-- Location: FF_X16_Y16_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1));

-- Location: LCCOMB_X16_Y14_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: FF_X13_Y16_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5));

-- Location: LCCOMB_X13_Y16_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\);

-- Location: FF_X13_Y16_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4));

-- Location: LCCOMB_X16_Y14_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y15_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\);

-- Location: FF_X18_Y15_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3));

-- Location: LCCOMB_X18_Y15_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\);

-- Location: FF_X18_Y15_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2));

-- Location: LCCOMB_X16_Y14_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X16_Y14_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X16_Y16_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\) # 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: FF_X16_Y16_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\);

-- Location: LCCOMB_X13_Y16_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: LCCOMB_X13_Y16_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\);

-- Location: FF_X13_Y16_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\);

-- Location: LCCOMB_X13_Y16_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: LCCOMB_X13_Y16_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\);

-- Location: FF_X13_Y16_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\);

-- Location: LCCOMB_X13_Y16_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: LCCOMB_X13_Y16_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\);

-- Location: FF_X13_Y16_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\);

-- Location: FF_X14_Y16_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: FF_X14_Y16_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCCOMB_X14_Y16_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: FF_X14_Y16_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X13_Y16_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\);

-- Location: FF_X13_Y16_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\);

-- Location: LCCOMB_X14_Y16_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y16_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: FF_X16_Y16_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6));

-- Location: LCCOMB_X14_Y16_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\);

-- Location: FF_X14_Y16_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[9]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9));

-- Location: LCCOMB_X14_Y16_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X14_Y16_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\);

-- Location: FF_X14_Y16_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10));

-- Location: LCCOMB_X14_Y16_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\);

-- Location: FF_X14_Y16_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[8]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8));

-- Location: LCCOMB_X14_Y16_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X14_Y16_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X16_Y16_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: FF_X16_Y16_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\);

-- Location: LCCOMB_X19_Y16_N26
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan1~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2)) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\);

-- Location: LCCOMB_X19_Y16_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) $ 
-- (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan1~0_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|LessThan1~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\);

-- Location: LCCOMB_X16_Y16_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\ & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: FF_X16_Y16_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\);

-- Location: LCCOMB_X16_Y16_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\ & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X16_Y16_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X13_Y16_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\);

-- Location: FF_X13_Y16_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\);

-- Location: LCCOMB_X16_Y16_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\);

-- Location: FF_X16_Y16_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(0));

-- Location: LCCOMB_X14_Y16_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\);

-- Location: FF_X14_Y16_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(2));

-- Location: LCCOMB_X13_Y16_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\);

-- Location: FF_X13_Y16_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(1));

-- Location: LCCOMB_X16_Y16_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(2) $ (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity8a\(1),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: FF_X16_Y16_N7
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\);

-- Location: LCCOMB_X16_Y16_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|parity7~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCCOMB_X16_Y16_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\);

-- Location: FF_X16_Y16_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\);

-- Location: LCCOMB_X13_Y16_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCCOMB_X13_Y16_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\);

-- Location: FF_X13_Y16_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\);

-- Location: LCCOMB_X13_Y16_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\);

-- Location: FF_X13_Y16_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\);

-- Location: LCCOMB_X13_Y16_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[7]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[7]~feeder_combout\);

-- Location: FF_X13_Y16_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g[7]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7));

-- Location: FF_X16_Y15_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: FF_X16_Y15_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10));

-- Location: FF_X16_Y15_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: LCCOMB_X16_Y15_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y15_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: FF_X16_Y15_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9));

-- Location: FF_X16_Y15_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCCOMB_X16_Y15_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X16_Y15_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X16_Y15_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X16_Y15_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ & ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X16_Y15_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: FF_X16_Y15_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\);

-- Location: FF_X16_Y14_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: FF_X16_Y14_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCCOMB_X16_Y14_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X13_Y14_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ & 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\)) # (!\u_sdram_test|rd_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	datab => \u_sdram_test|rd_en~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: FF_X16_Y14_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: FF_X16_Y14_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X16_Y14_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: FF_X16_Y14_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: FF_X16_Y14_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X16_Y14_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X16_Y14_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X16_Y14_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X16_Y14_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X13_Y14_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ & 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: FF_X13_Y14_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\);

-- Location: LCCOMB_X13_Y14_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (\u_sdram_test|rd_en~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_en~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: LCCOMB_X14_Y14_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\);

-- Location: FF_X14_Y14_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\);

-- Location: LCCOMB_X13_Y14_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\ & (\u_sdram_test|rd_en~q\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	datab => \u_sdram_test|rd_en~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\);

-- Location: FF_X14_Y14_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\);

-- Location: LCCOMB_X14_Y14_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X14_Y14_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X13_Y14_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\);

-- Location: FF_X13_Y14_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\);

-- Location: LCCOMB_X13_Y14_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\);

-- Location: FF_X13_Y14_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\);

-- Location: FF_X14_Y16_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: LCCOMB_X16_Y15_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[10]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[10]~feeder_combout\);

-- Location: FF_X16_Y15_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10));

-- Location: LCCOMB_X16_Y15_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[9]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[9]~feeder_combout\);

-- Location: FF_X16_Y15_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[9]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9));

-- Location: LCCOMB_X16_Y15_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\);

-- Location: FF_X16_Y15_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor9~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(9));

-- Location: LCCOMB_X17_Y15_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a\(9) = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a\(9));

-- Location: FF_X17_Y15_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ram_address_a\(9),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(9));

-- Location: LCCOMB_X16_Y15_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[8]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[8]~feeder_combout\);

-- Location: FF_X16_Y15_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[8]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(8));

-- Location: LCCOMB_X16_Y15_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(8) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(8),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\);

-- Location: FF_X16_Y15_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor8~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(8));

-- Location: LCCOMB_X17_Y15_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\);

-- Location: FF_X17_Y15_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor8~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(8));

-- Location: FF_X16_Y15_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(7));

-- Location: LCCOMB_X16_Y15_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(7) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(8) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(8),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\);

-- Location: FF_X16_Y15_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(7));

-- Location: LCCOMB_X17_Y15_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(7),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(8),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\);

-- Location: FF_X17_Y15_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(7));

-- Location: LCCOMB_X17_Y15_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\);

-- Location: FF_X17_Y15_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor6~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(6));

-- Location: LCCOMB_X17_Y14_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[6]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[6]~feeder_combout\);

-- Location: FF_X17_Y14_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[6]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6));

-- Location: LCCOMB_X17_Y14_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\);

-- Location: FF_X17_Y14_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor6~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(6));

-- Location: LCCOMB_X17_Y15_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\);

-- Location: FF_X17_Y15_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor5~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(5));

-- Location: LCCOMB_X17_Y14_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[5]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[5]~feeder_combout\);

-- Location: FF_X17_Y14_N25
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[5]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(5));

-- Location: LCCOMB_X17_Y14_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(5) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\);

-- Location: FF_X17_Y14_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor5~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(5));

-- Location: LCCOMB_X17_Y15_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(4),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor7~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\);

-- Location: FF_X17_Y15_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(4));

-- Location: LCCOMB_X17_Y14_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[4]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[4]~feeder_combout\);

-- Location: FF_X17_Y14_N3
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(4));

-- Location: LCCOMB_X17_Y14_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(5) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor7~combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(4),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\);

-- Location: FF_X17_Y14_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(4));

-- Location: LCCOMB_X17_Y14_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[3]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[3]~feeder_combout\);

-- Location: FF_X17_Y14_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3));

-- Location: LCCOMB_X17_Y14_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\);

-- Location: FF_X17_Y14_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor3~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(3));

-- Location: LCCOMB_X18_Y15_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\);

-- Location: FF_X18_Y15_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor3~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(3));

-- Location: LCCOMB_X17_Y14_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[2]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[2]~feeder_combout\);

-- Location: FF_X17_Y14_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(2));

-- Location: LCCOMB_X17_Y14_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(2) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\);

-- Location: FF_X17_Y14_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor2~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(2));

-- Location: LCCOMB_X18_Y15_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\);

-- Location: FF_X18_Y15_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor2~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(2));

-- Location: LCCOMB_X18_Y15_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor4~combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(1),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\);

-- Location: FF_X18_Y15_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(1));

-- Location: FF_X17_Y14_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(1));

-- Location: LCCOMB_X17_Y14_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(2) $ (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(1) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor4~combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(1),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\);

-- Location: FF_X17_Y14_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(1));

-- Location: LCCOMB_X18_Y15_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\);

-- Location: FF_X18_Y15_N31
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(0));

-- Location: FF_X17_Y14_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(0));

-- Location: LCCOMB_X17_Y14_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe3|dffe4a\(0),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\);

-- Location: FF_X17_Y14_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(0));

-- Location: LCCOMB_X17_Y15_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(0)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(0),
	datad => VCC,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y15_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(1) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(1) & !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1_cout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(1) & ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(1)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(1),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~1_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X17_Y15_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(2) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(2) & !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3_cout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(2) & ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(2)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(2),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(2),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~3_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X17_Y15_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(3) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(3)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(3) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(3) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(3),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~5_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X17_Y15_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(4) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(4)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(4) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(4) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(4),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(4),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~7_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X17_Y15_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(5) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(5) & !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9_cout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(5) & ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(5)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(5),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(5),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~9_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X17_Y15_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(6) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(6)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(6) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(6) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(6),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(6),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~11_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X17_Y15_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(7) & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13_cout\) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(7)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(7) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(7) & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(7),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~13_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X17_Y15_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~17_cout\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(8) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(8) & !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15_cout\)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(8) & ((\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(8)) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(8),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(8),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~15_cout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X17_Y15_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~18_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~17_cout\ $ (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_brp|dffe10a\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ws_bwp|dffe10a\(9),
	cin => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~17_cout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X21_Y16_N10
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|read_valid_r2~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~18_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\ & \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|read_valid_r2~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|op_1~18_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|op_1~18_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~0_combout\);

-- Location: FF_X21_Y16_N11
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~q\);

-- Location: LCCOMB_X21_Y16_N14
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~q\) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~q\) # 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_req~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_req~q\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y16_N12
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~2_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y16_N6
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y16_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~1_combout\) # ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) 
-- & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~1_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~2_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~3_combout\);

-- Location: FF_X22_Y16_N17
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux6~3_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0));

-- Location: LCCOMB_X18_Y16_N22
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5_combout\);

-- Location: LCCOMB_X18_Y16_N8
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~6_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~6_combout\);

-- Location: LCCOMB_X18_Y16_N10
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~6_combout\) # ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~5_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~6_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\);

-- Location: LCCOMB_X18_Y16_N4
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\);

-- Location: LCCOMB_X21_Y16_N20
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~9_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)) # ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~9_combout\);

-- Location: LCCOMB_X21_Y16_N30
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2))))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~8_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~9_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y16_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\ & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~4_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~1_combout\);

-- Location: FF_X21_Y16_N25
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux4~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2));

-- Location: LCCOMB_X18_Y16_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~1_combout\);

-- Location: LCCOMB_X18_Y16_N18
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~16_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~1_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~3_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal13~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~16_combout\);

-- Location: LCCOMB_X19_Y16_N24
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~15_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & 
-- (((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~7_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~15_combout\);

-- Location: LCCOMB_X19_Y16_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3)) # 
-- (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~15_combout\)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~16_combout\ & 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~16_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~15_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y16_N6
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~14_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal14~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~14_combout\);

-- Location: LCCOMB_X19_Y16_N12
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~11_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~14_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y16_N28
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~1_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\ & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux7~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y16_N22
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & 
-- ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0_combout\))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & (((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal11~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\);

-- Location: FF_X17_Y16_N1
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[0]~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0));

-- Location: FF_X17_Y16_N3
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk[1]~12_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1));

-- Location: LCCOMB_X17_Y16_N28
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(5),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(4),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(3),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y16_N30
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y16_N2
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1) & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~2_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\);

-- Location: LCCOMB_X21_Y16_N8
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\ & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_ref_req~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y16_N30
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\ & 
-- ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Equal10~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y16_N24
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\) # ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\ & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~2_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y16_N10
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~4_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3_combout\ $ (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5_combout\))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5_combout\) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~5_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~4_combout\);

-- Location: FF_X22_Y16_N11
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|Mux5~4_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1));

-- Location: LCCOMB_X18_Y18_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y18_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X18_Y18_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X18_Y18_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X18_Y18_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y18_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X19_Y19_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & 
-- ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: FF_X19_Y19_N29
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\);

-- Location: LCCOMB_X19_Y19_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y19_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X19_Y19_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdempty_eq_comp_lsb|data_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdempty_eq_comp_lsb|data_wire[0]~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdempty_eq_comp_lsb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X19_Y19_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdempty_eq_comp_lsb|data_wire[0]~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdempty_eq_comp_lsb|data_wire[0]~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X19_Y19_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X19_Y19_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X19_Y19_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X19_Y19_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\) # ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: FF_X19_Y19_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\);

-- Location: LCCOMB_X19_Y19_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: LCCOMB_X18_Y16_N20
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~1_combout\);

-- Location: LCCOMB_X18_Y16_N14
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & 
-- ((!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~1_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\);

-- Location: LCCOMB_X22_Y18_N2
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\);

-- Location: LCCOMB_X18_Y19_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ 
-- & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\);

-- Location: LCCOMB_X18_Y19_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ $ 
-- (((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\);

-- Location: FF_X18_Y19_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\);

-- Location: LCCOMB_X16_Y19_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X16_Y19_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X16_Y19_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\);

-- Location: FF_X16_Y19_N23
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\);

-- Location: LCCOMB_X16_Y19_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\);

-- Location: FF_X16_Y19_N17
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\);

-- Location: LCCOMB_X16_Y19_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X16_Y19_N8
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\);

-- Location: FF_X16_Y19_N9
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\);

-- Location: LCCOMB_X17_Y18_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a8~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: FF_X17_Y18_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(2));

-- Location: LCCOMB_X16_Y19_N18
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a6~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a5~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a7~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: FF_X16_Y19_N19
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(1));

-- Location: LCCOMB_X16_Y19_N14
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ $ (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\);

-- Location: FF_X16_Y19_N15
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(0));

-- Location: LCCOMB_X16_Y19_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(2) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(1) $ (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(1),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity5a\(0),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: FF_X16_Y19_N21
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\);

-- Location: LCCOMB_X18_Y19_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: FF_X18_Y19_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\);

-- Location: LCCOMB_X18_Y19_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\ & 
-- !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a1~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|parity4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X18_Y19_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\);

-- Location: FF_X18_Y19_N5
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\);

-- Location: LCCOMB_X16_Y19_N12
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\);

-- Location: FF_X16_Y19_N13
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\);

-- Location: LCCOMB_X16_Y19_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\ $ 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\ & (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\);

-- Location: FF_X16_Y19_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\);

-- Location: FF_X16_Y19_N27
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a4~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCCOMB_X16_Y19_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(4),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(5),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y19_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(2),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X18_Y19_N6
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a1~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X18_Y19_N26
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\ $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a3~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a2~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X16_Y19_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a5~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(4),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a4~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y19_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X18_Y19_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb|data_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb|data_wire[0]~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(1) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(1),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X18_Y19_N28
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb|data_wire[0]~0_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(0) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(0),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb|data_wire[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X17_Y19_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\) # 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ & 
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: FF_X17_Y19_N1
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\);

-- Location: LCCOMB_X14_Y18_N0
\u_sdram_test|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|always2~0_combout\ = \u_sdram_test|wr_cnt\(10) $ (\u_sdram_test|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|LessThan2~2_combout\,
	combout => \u_sdram_test|always2~0_combout\);

-- Location: FF_X14_Y18_N1
\u_sdram_test|wr_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|always2~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_en~q\);

-- Location: LCCOMB_X17_Y18_N22
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(6),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(8),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X17_Y18_N20
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a7~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X17_Y18_N30
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(9),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a9~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a6~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X17_Y18_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10) & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a10~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g1p|counter6a8~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X16_Y18_N24
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ & ((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\)))) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & (((\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(7),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X18_Y18_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\)))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ & (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: FF_X18_Y18_N11
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\);

-- Location: LCCOMB_X17_Y19_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = (\u_sdram_test|wr_en~q\ & ((!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\) # 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	datac => \u_sdram_test|wr_en~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: LCCOMB_X14_Y18_N2
\u_sdram_test|wr_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~0_combout\ = (\u_sdram_test|wr_cnt\(0) & !\u_sdram_test|wr_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_test|wr_cnt\(0),
	datad => \u_sdram_test|wr_cnt\(10),
	combout => \u_sdram_test|wr_data~0_combout\);

-- Location: FF_X14_Y18_N3
\u_sdram_test|wr_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(0));

-- Location: LCCOMB_X17_Y17_N10
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ram_address_a[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ram_address_a\(9) = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9) $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|wrptr_g\(10),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ram_address_a\(9));

-- Location: LCCOMB_X16_Y20_N16
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\ = !\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\);

-- Location: LCCOMB_X17_Y18_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X14_Y18_N20
\u_sdram_test|wr_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~1_combout\ = (!\u_sdram_test|wr_cnt\(10) & \u_sdram_test|wr_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|wr_cnt\(1),
	combout => \u_sdram_test|wr_data~1_combout\);

-- Location: FF_X14_Y18_N21
\u_sdram_test|wr_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(1));

-- Location: LCCOMB_X14_Y18_N14
\u_sdram_test|wr_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~2_combout\ = (!\u_sdram_test|wr_cnt\(10) & \u_sdram_test|wr_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|wr_cnt\(2),
	combout => \u_sdram_test|wr_data~2_combout\);

-- Location: FF_X14_Y18_N15
\u_sdram_test|wr_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~2_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(2));

-- Location: LCCOMB_X14_Y18_N24
\u_sdram_test|wr_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~3_combout\ = (\u_sdram_test|wr_cnt\(3) & !\u_sdram_test|wr_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_test|wr_cnt\(3),
	datad => \u_sdram_test|wr_cnt\(10),
	combout => \u_sdram_test|wr_data~3_combout\);

-- Location: FF_X14_Y18_N25
\u_sdram_test|wr_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~3_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(3));

-- Location: LCCOMB_X14_Y19_N2
\u_sdram_test|wr_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~4_combout\ = (\u_sdram_test|wr_cnt\(4) & !\u_sdram_test|wr_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(4),
	datac => \u_sdram_test|wr_cnt\(10),
	combout => \u_sdram_test|wr_data~4_combout\);

-- Location: FF_X14_Y19_N3
\u_sdram_test|wr_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~4_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(4));

-- Location: LCCOMB_X14_Y19_N24
\u_sdram_test|wr_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~5_combout\ = (\u_sdram_test|wr_cnt\(5) & !\u_sdram_test|wr_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(5),
	datac => \u_sdram_test|wr_cnt\(10),
	combout => \u_sdram_test|wr_data~5_combout\);

-- Location: FF_X14_Y19_N25
\u_sdram_test|wr_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~5_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(5));

-- Location: LCCOMB_X14_Y19_N26
\u_sdram_test|wr_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~6_combout\ = (!\u_sdram_test|wr_cnt\(10) & \u_sdram_test|wr_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|wr_cnt\(10),
	datac => \u_sdram_test|wr_cnt\(6),
	combout => \u_sdram_test|wr_data~6_combout\);

-- Location: FF_X14_Y19_N27
\u_sdram_test|wr_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(6));

-- Location: LCCOMB_X14_Y19_N28
\u_sdram_test|wr_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~7_combout\ = (!\u_sdram_test|wr_cnt\(10) & \u_sdram_test|wr_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|wr_cnt\(7),
	combout => \u_sdram_test|wr_data~7_combout\);

-- Location: FF_X14_Y19_N29
\u_sdram_test|wr_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~7_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(7));

-- Location: LCCOMB_X14_Y19_N30
\u_sdram_test|wr_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~8_combout\ = (!\u_sdram_test|wr_cnt\(10) & \u_sdram_test|wr_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|wr_cnt\(8),
	combout => \u_sdram_test|wr_data~8_combout\);

-- Location: FF_X14_Y19_N31
\u_sdram_test|wr_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(8));

-- Location: M9K_X15_Y19_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sdram_top:u_sdram_top|sdram_fifo_ctrl:u_sdram_fifo_ctrl|wrfifo:u_wrfifo|dcfifo:dcfifo_component|dcfifo_nnl1:auto_generated|altsyncram_em31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~1_combout\,
	clk0 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	ena0 => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	clr1 => \sys_rst_n~0clkctrl_outclk\,
	portadatain => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y15_N0
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[0]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y16_N26
\u_sdram_top|u_sdram_controller|u_sdram_data|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\);

-- Location: FF_X23_Y15_N1
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[0]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(0));

-- Location: FF_X22_Y16_N27
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_out_en~q\);

-- Location: LCCOMB_X23_Y15_N18
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[1]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[1]~feeder_combout\);

-- Location: FF_X23_Y15_N19
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(1));

-- Location: LCCOMB_X23_Y15_N28
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[2]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[2]~feeder_combout\);

-- Location: FF_X23_Y15_N29
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(2));

-- Location: LCCOMB_X23_Y15_N14
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[3]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[3]~feeder_combout\);

-- Location: FF_X23_Y15_N15
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(3));

-- Location: LCCOMB_X23_Y15_N16
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[4]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[4]~feeder_combout\);

-- Location: FF_X23_Y15_N17
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(4));

-- Location: LCCOMB_X23_Y15_N10
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[5]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[5]~feeder_combout\);

-- Location: FF_X23_Y15_N11
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[5]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(5));

-- Location: LCCOMB_X23_Y15_N20
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[6]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[6]~feeder_combout\);

-- Location: FF_X23_Y15_N21
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[6]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(6));

-- Location: LCCOMB_X23_Y15_N22
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[7]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[7]~feeder_combout\);

-- Location: FF_X23_Y15_N23
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[7]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(7));

-- Location: LCCOMB_X23_Y15_N8
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[8]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[8]~feeder_combout\);

-- Location: FF_X23_Y15_N9
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[8]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(8));

-- Location: LCCOMB_X14_Y18_N10
\u_sdram_test|wr_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~9_combout\ = (!\u_sdram_test|wr_cnt\(10) & \u_sdram_test|wr_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|wr_cnt\(9),
	combout => \u_sdram_test|wr_data~9_combout\);

-- Location: FF_X14_Y18_N11
\u_sdram_test|wr_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~9_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(9));

-- Location: LCCOMB_X14_Y18_N28
\u_sdram_test|wr_data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|wr_data~10_combout\ = (\u_sdram_test|wr_cnt\(10) & !\u_sdram_test|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|wr_cnt\(10),
	datad => \u_sdram_test|LessThan2~2_combout\,
	combout => \u_sdram_test|wr_data~10_combout\);

-- Location: FF_X14_Y18_N29
\u_sdram_test|wr_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|wr_data~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|wr_data\(10));

-- Location: LCCOMB_X14_Y17_N24
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

-- Location: M9K_X15_Y18_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sdram_top:u_sdram_top|sdram_fifo_ctrl:u_sdram_fifo_ctrl|wrfifo:u_wrfifo|dcfifo:dcfifo_component|dcfifo_nnl1:auto_generated|altsyncram_em31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~1_combout\,
	clk0 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	ena0 => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|valid_rdreq~1_combout\,
	clr1 => \sys_rst_n~0clkctrl_outclk\,
	portadatain => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTADATAIN_bus\,
	portaaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTAADDR_bus\,
	portbaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y15_N2
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[9]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[9]~feeder_combout\);

-- Location: FF_X23_Y15_N3
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[9]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(9));

-- Location: LCCOMB_X23_Y15_N4
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[10]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[10]~feeder_combout\);

-- Location: FF_X23_Y15_N5
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(10));

-- Location: LCCOMB_X23_Y15_N30
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[11]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[11]~feeder_combout\);

-- Location: FF_X23_Y15_N31
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[11]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(11));

-- Location: LCCOMB_X23_Y15_N24
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[12]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[12]~feeder_combout\);

-- Location: FF_X23_Y15_N25
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[12]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(12));

-- Location: LCCOMB_X23_Y15_N26
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[13]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[13]~feeder_combout\);

-- Location: FF_X23_Y15_N27
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[13]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(13));

-- Location: LCCOMB_X23_Y15_N12
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[14]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[14]~feeder_combout\);

-- Location: FF_X23_Y15_N13
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[14]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(14));

-- Location: LCCOMB_X23_Y15_N6
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[15]~feeder_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_wrfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[15]~feeder_combout\);

-- Location: FF_X23_Y15_N7
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r[15]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_din_r\(15));

-- Location: CLKCTRL_G2
\u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y18_N16
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[4]~feeder_combout\);

-- Location: FF_X33_Y18_N17
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(4));

-- Location: LCCOMB_X25_Y12_N16
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[3]~feeder_combout\);

-- Location: FF_X25_Y12_N17
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(3));

-- Location: LCCOMB_X22_Y16_N20
\u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr0~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3)) 
-- # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector0~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr0~0_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr0~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector0~0_combout\);

-- Location: FF_X23_Y16_N25
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector0~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(2));

-- Location: LCCOMB_X22_Y16_N14
\u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr1~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2))) 
-- # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector1~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr1~0_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|WideOr1~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector1~0_combout\);

-- Location: FF_X23_Y16_N3
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector1~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(1));

-- Location: LCCOMB_X18_Y16_N0
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7) & (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\ & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(7),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(8),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(6),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y16_N2
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(9),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|cnt_clk\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y16_N20
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1)) # ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1_combout\ 
-- & \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0_combout\)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1_combout\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Equal1~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y16_N30
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~1_combout\);

-- Location: LCCOMB_X22_Y16_N0
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) $ 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y16_N8
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~1_combout\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~0_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~2_combout\);

-- Location: FF_X19_Y16_N9
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector2~2_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r\(0));

-- Location: LCCOMB_X23_Y17_N20
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) $ (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) 
-- & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~15_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9) $ (VCC)
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\ = CARRY(\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9),
	datad => VCC,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~15_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\);

-- Location: LCCOMB_X21_Y17_N0
\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15)) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y17_N16
\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11)) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y17_N28
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~41_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~42\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~41_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~42\);

-- Location: LCCOMB_X21_Y17_N30
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[23]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[23]~43_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23) $ (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23),
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~42\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[23]~43_combout\);

-- Location: LCCOMB_X22_Y18_N16
\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & 
-- ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\) # (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~3_combout\);

-- Location: FF_X22_Y18_N17
\u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_wr_ack~3_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r1~q\);

-- Location: FF_X22_Y18_N31
\u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r1~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r2~q\);

-- Location: LCCOMB_X22_Y18_N30
\u_sdram_top|u_sdram_fifo_ctrl|write_done_flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r2~q\ & !\u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|wr_ack_r1~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\);

-- Location: FF_X21_Y17_N31
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[23]~43_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23));

-- Location: LCCOMB_X22_Y17_N22
\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10)) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19)) # (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y17_N2
\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~2_combout\) # ((\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~1_combout\) # ((\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~0_combout\) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~2_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~1_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~0_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~3_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\);

-- Location: FF_X21_Y17_N3
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~15_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9));

-- Location: LCCOMB_X21_Y17_N4
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~17_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[9]~16\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~17_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\);

-- Location: FF_X21_Y17_N5
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~17_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10));

-- Location: LCCOMB_X21_Y17_N6
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~19_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[10]~18\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~19_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\);

-- Location: FF_X21_Y17_N7
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~19_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11));

-- Location: LCCOMB_X21_Y17_N8
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~21_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[11]~20\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~21_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\);

-- Location: FF_X21_Y17_N9
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~21_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12));

-- Location: LCCOMB_X21_Y17_N10
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~23_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[12]~22\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~23_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\);

-- Location: FF_X21_Y17_N11
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~23_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13));

-- Location: LCCOMB_X21_Y17_N12
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~25_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[13]~24\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~25_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\);

-- Location: FF_X21_Y17_N13
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~25_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14));

-- Location: LCCOMB_X21_Y17_N14
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~27_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[14]~26\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~27_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\);

-- Location: FF_X21_Y17_N15
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~27_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15));

-- Location: LCCOMB_X21_Y17_N16
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~29_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[15]~28\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~29_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\);

-- Location: FF_X21_Y17_N17
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~29_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16));

-- Location: LCCOMB_X21_Y17_N18
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~31_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[16]~30\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~31_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\);

-- Location: FF_X21_Y17_N19
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~31_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17));

-- Location: LCCOMB_X21_Y17_N20
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~33_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[17]~32\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~33_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\);

-- Location: FF_X21_Y17_N21
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~33_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18));

-- Location: LCCOMB_X21_Y17_N22
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~35_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[18]~34\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~35_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\);

-- Location: FF_X21_Y17_N23
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~35_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19));

-- Location: LCCOMB_X21_Y17_N24
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~37_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[19]~36\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~37_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\);

-- Location: FF_X21_Y17_N25
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~37_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20));

-- Location: LCCOMB_X21_Y17_N26
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~39_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[20]~38\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~39_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~40\);

-- Location: FF_X21_Y17_N27
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[21]~39_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21));

-- Location: FF_X21_Y17_N29
\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr[22]~41_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan0~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|write_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22));

-- Location: LCCOMB_X24_Y17_N0
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~15_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9) $ (VCC)
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\ = CARRY(\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9),
	datad => VCC,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~15_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\);

-- Location: LCCOMB_X23_Y17_N10
\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19)) # (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y17_N26
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~41_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~42\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~41_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~42\);

-- Location: LCCOMB_X24_Y17_N28
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[23]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[23]~43_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~42\ $ (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23),
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~42\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[23]~43_combout\);

-- Location: FF_X19_Y16_N17
\u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_ack~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r1~q\);

-- Location: FF_X19_Y16_N23
\u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r1~q\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r2~q\);

-- Location: LCCOMB_X19_Y16_N22
\u_sdram_top|u_sdram_fifo_ctrl|read_done_flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r2~q\ & !\u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r2~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|rd_ack_r1~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\);

-- Location: FF_X24_Y17_N29
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[23]~43_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23));

-- Location: LCCOMB_X23_Y17_N24
\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~0_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9)) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~2_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18)) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y17_N30
\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~1_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13)) # ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11)) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12),
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y17_N4
\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~3_combout\) # ((\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~0_combout\) # ((\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~2_combout\) # 
-- (\u_sdram_top|u_sdram_fifo_ctrl|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~3_combout\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~0_combout\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~2_combout\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~1_combout\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\);

-- Location: FF_X24_Y17_N1
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~15_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9));

-- Location: LCCOMB_X24_Y17_N2
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~17_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[9]~16\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~17_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\);

-- Location: FF_X24_Y17_N3
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~17_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10));

-- Location: LCCOMB_X24_Y17_N4
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~19_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[10]~18\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~19_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\);

-- Location: FF_X24_Y17_N5
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~19_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11));

-- Location: LCCOMB_X24_Y17_N6
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~21_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[11]~20\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~21_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\);

-- Location: FF_X24_Y17_N7
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~21_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12));

-- Location: LCCOMB_X24_Y17_N8
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~23_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[12]~22\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~23_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\);

-- Location: FF_X24_Y17_N9
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~23_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13));

-- Location: LCCOMB_X24_Y17_N10
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~25_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[13]~24\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~25_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\);

-- Location: FF_X24_Y17_N11
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~25_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14));

-- Location: LCCOMB_X24_Y17_N12
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~27_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[14]~26\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~27_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\);

-- Location: FF_X24_Y17_N13
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~27_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15));

-- Location: LCCOMB_X24_Y17_N14
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~29_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[15]~28\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~29_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\);

-- Location: FF_X24_Y17_N15
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~29_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16));

-- Location: LCCOMB_X24_Y17_N16
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~31_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[16]~30\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~31_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\);

-- Location: FF_X24_Y17_N17
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~31_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17));

-- Location: LCCOMB_X24_Y17_N18
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~33_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[17]~32\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~33_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\);

-- Location: FF_X24_Y17_N19
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~33_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18));

-- Location: LCCOMB_X24_Y17_N20
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~35_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[18]~34\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~35_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\);

-- Location: FF_X24_Y17_N21
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~35_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19));

-- Location: LCCOMB_X24_Y17_N22
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~37_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20) & (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\)) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20) & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\) # (GND)))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\ = CARRY((!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[19]~36\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~37_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\);

-- Location: FF_X24_Y17_N23
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~37_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20));

-- Location: LCCOMB_X24_Y17_N24
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~39_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21) & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\ $ (GND))) # (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\ & VCC))
-- \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\ = CARRY((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21) & !\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21),
	datad => VCC,
	cin => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[20]~38\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~39_combout\,
	cout => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~40\);

-- Location: FF_X24_Y17_N25
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[21]~39_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21));

-- Location: FF_X24_Y17_N27
\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr[22]~41_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_sdram_top|u_sdram_fifo_ctrl|LessThan1~4_combout\,
	ena => \u_sdram_top|u_sdram_fifo_ctrl|read_done_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22));

-- Location: LCCOMB_X23_Y17_N2
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(22),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(22),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\ & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~0_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~1_combout\);

-- Location: LCCOMB_X22_Y16_N4
\u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2) & (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3) & \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\ = ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\) # (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\)) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Mux0~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\);

-- Location: FF_X23_Y17_N9
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector4~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba\(0));

-- Location: LCCOMB_X23_Y17_N14
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(23),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(23),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\ & 
-- !\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~0_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[0]~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~1_combout\);

-- Location: FF_X23_Y17_N27
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector3~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_ba\(1));

-- Location: LCCOMB_X22_Y16_N22
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & ((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3)) # 
-- (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) $ (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2))))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1) & 
-- (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(3),
	datad => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(2),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\);

-- Location: LCCOMB_X22_Y17_N4
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(9),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~1_combout\);

-- Location: LCCOMB_X21_Y16_N0
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0) & (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\ & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|work_state\(0),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\);

-- Location: LCCOMB_X22_Y17_N24
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~4_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~1_combout\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~1_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~4_combout\);

-- Location: FF_X22_Y17_N25
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~4_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(0));

-- Location: LCCOMB_X22_Y17_N14
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~5_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(10),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(10),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~5_combout\);

-- Location: LCCOMB_X22_Y17_N26
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~6_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~5_combout\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~5_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~6_combout\);

-- Location: FF_X22_Y17_N27
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~6_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(1));

-- Location: LCCOMB_X22_Y17_N0
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~7_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(11),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(11),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~7_combout\);

-- Location: LCCOMB_X22_Y17_N20
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~8_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~7_combout\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~7_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~8_combout\);

-- Location: FF_X22_Y17_N21
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~8_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(2));

-- Location: LCCOMB_X22_Y18_N10
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~1_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(12),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(12),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~1_combout\);

-- Location: LCCOMB_X23_Y17_N16
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (((\u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1) & 
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\)) # (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|init_state\(1),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~2_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~1_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~2_combout\);

-- Location: FF_X22_Y18_N9
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~2_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(3));

-- Location: LCCOMB_X22_Y17_N18
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~9_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(13),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(13),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~9_combout\);

-- Location: LCCOMB_X22_Y17_N6
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~10_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~9_combout\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~9_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~10_combout\);

-- Location: FF_X22_Y17_N7
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~10_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(4));

-- Location: LCCOMB_X22_Y17_N28
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~11_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(14),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(14),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~11_combout\);

-- Location: LCCOMB_X22_Y17_N8
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~12_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~11_combout\)))) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\ & (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\ & ((\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~2_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~11_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_cmd_r[1]~1_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~12_combout\);

-- Location: FF_X22_Y17_N9
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr~12_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(5));

-- Location: LCCOMB_X22_Y18_N28
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(15),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(15),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~0_combout\);

-- Location: LCCOMB_X22_Y18_N26
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~0_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~1_combout\);

-- Location: FF_X22_Y18_N27
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector11~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(6));

-- Location: LCCOMB_X22_Y18_N22
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(16),
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(16),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~0_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~1_combout\);

-- Location: FF_X22_Y18_N13
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector10~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(7));

-- Location: LCCOMB_X22_Y18_N24
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(17),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(17),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~0_combout\);

-- Location: LCCOMB_X22_Y18_N6
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~0_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~1_combout\);

-- Location: FF_X22_Y18_N7
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector9~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(8));

-- Location: LCCOMB_X22_Y18_N18
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(18),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(18),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~0_combout\);

-- Location: LCCOMB_X22_Y18_N0
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~0_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~1_combout\);

-- Location: FF_X22_Y18_N1
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector8~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(9));

-- Location: LCCOMB_X23_Y17_N18
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & (\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datac => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(19),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(19),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~0_combout\,
	datac => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~1_combout\);

-- Location: FF_X23_Y17_N29
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector7~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(10));

-- Location: LCCOMB_X23_Y17_N12
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(20),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(20),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~1_combout\);

-- Location: FF_X23_Y17_N31
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector6~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(11));

-- Location: LCCOMB_X23_Y17_N22
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~0_combout\ = (\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & ((\u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21)))) # (!\u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\ & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|sdram_wr_addr\(21),
	datac => \u_sdram_top|u_sdram_controller|u_sdram_ctrl|sdram_rd_wr~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|sdram_rd_addr\(21),
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~1_combout\ = (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\ & ((!\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\) # 
-- (!\u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~0_combout\,
	datab => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[10]~3_combout\,
	datad => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector12~0_combout\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~1_combout\);

-- Location: FF_X23_Y17_N1
\u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_cmd|Selector5~1_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_cmd|sdram_addr\(12));

-- Location: LCCOMB_X13_Y15_N8
\u_sdram_test|rd_cnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[0]~11_combout\ = \u_sdram_test|rd_cnt\(0) $ (VCC)
-- \u_sdram_test|rd_cnt[0]~12\ = CARRY(\u_sdram_test|rd_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_cnt\(0),
	datad => VCC,
	combout => \u_sdram_test|rd_cnt[0]~11_combout\,
	cout => \u_sdram_test|rd_cnt[0]~12\);

-- Location: LCCOMB_X13_Y15_N24
\u_sdram_test|rd_cnt[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[8]~27_combout\ = (\u_sdram_test|rd_cnt\(8) & (\u_sdram_test|rd_cnt[7]~26\ $ (GND))) # (!\u_sdram_test|rd_cnt\(8) & (!\u_sdram_test|rd_cnt[7]~26\ & VCC))
-- \u_sdram_test|rd_cnt[8]~28\ = CARRY((\u_sdram_test|rd_cnt\(8) & !\u_sdram_test|rd_cnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_cnt\(8),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[7]~26\,
	combout => \u_sdram_test|rd_cnt[8]~27_combout\,
	cout => \u_sdram_test|rd_cnt[8]~28\);

-- Location: LCCOMB_X13_Y15_N26
\u_sdram_test|rd_cnt[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[9]~29_combout\ = (\u_sdram_test|rd_cnt\(9) & (!\u_sdram_test|rd_cnt[8]~28\)) # (!\u_sdram_test|rd_cnt\(9) & ((\u_sdram_test|rd_cnt[8]~28\) # (GND)))
-- \u_sdram_test|rd_cnt[9]~30\ = CARRY((!\u_sdram_test|rd_cnt[8]~28\) # (!\u_sdram_test|rd_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(9),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[8]~28\,
	combout => \u_sdram_test|rd_cnt[9]~29_combout\,
	cout => \u_sdram_test|rd_cnt[9]~30\);

-- Location: FF_X13_Y15_N27
\u_sdram_test|rd_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[9]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(9));

-- Location: LCCOMB_X13_Y15_N28
\u_sdram_test|rd_cnt[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[10]~31_combout\ = \u_sdram_test|rd_cnt[9]~30\ $ (!\u_sdram_test|rd_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_test|rd_cnt\(10),
	cin => \u_sdram_test|rd_cnt[9]~30\,
	combout => \u_sdram_test|rd_cnt[10]~31_combout\);

-- Location: FF_X13_Y15_N29
\u_sdram_test|rd_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[10]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(10));

-- Location: FF_X13_Y15_N9
\u_sdram_test|rd_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[0]~11_combout\,
	asdata => VCC,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(0));

-- Location: LCCOMB_X13_Y15_N10
\u_sdram_test|rd_cnt[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[1]~13_combout\ = (\u_sdram_test|rd_cnt\(1) & (!\u_sdram_test|rd_cnt[0]~12\)) # (!\u_sdram_test|rd_cnt\(1) & ((\u_sdram_test|rd_cnt[0]~12\) # (GND)))
-- \u_sdram_test|rd_cnt[1]~14\ = CARRY((!\u_sdram_test|rd_cnt[0]~12\) # (!\u_sdram_test|rd_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(1),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[0]~12\,
	combout => \u_sdram_test|rd_cnt[1]~13_combout\,
	cout => \u_sdram_test|rd_cnt[1]~14\);

-- Location: FF_X13_Y15_N11
\u_sdram_test|rd_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[1]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(1));

-- Location: LCCOMB_X13_Y15_N12
\u_sdram_test|rd_cnt[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[2]~15_combout\ = (\u_sdram_test|rd_cnt\(2) & (\u_sdram_test|rd_cnt[1]~14\ $ (GND))) # (!\u_sdram_test|rd_cnt\(2) & (!\u_sdram_test|rd_cnt[1]~14\ & VCC))
-- \u_sdram_test|rd_cnt[2]~16\ = CARRY((\u_sdram_test|rd_cnt\(2) & !\u_sdram_test|rd_cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(2),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[1]~14\,
	combout => \u_sdram_test|rd_cnt[2]~15_combout\,
	cout => \u_sdram_test|rd_cnt[2]~16\);

-- Location: FF_X13_Y15_N13
\u_sdram_test|rd_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[2]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(2));

-- Location: LCCOMB_X13_Y15_N14
\u_sdram_test|rd_cnt[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[3]~17_combout\ = (\u_sdram_test|rd_cnt\(3) & (!\u_sdram_test|rd_cnt[2]~16\)) # (!\u_sdram_test|rd_cnt\(3) & ((\u_sdram_test|rd_cnt[2]~16\) # (GND)))
-- \u_sdram_test|rd_cnt[3]~18\ = CARRY((!\u_sdram_test|rd_cnt[2]~16\) # (!\u_sdram_test|rd_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_cnt\(3),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[2]~16\,
	combout => \u_sdram_test|rd_cnt[3]~17_combout\,
	cout => \u_sdram_test|rd_cnt[3]~18\);

-- Location: FF_X13_Y15_N15
\u_sdram_test|rd_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[3]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(3));

-- Location: LCCOMB_X13_Y15_N16
\u_sdram_test|rd_cnt[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[4]~19_combout\ = (\u_sdram_test|rd_cnt\(4) & (\u_sdram_test|rd_cnt[3]~18\ $ (GND))) # (!\u_sdram_test|rd_cnt\(4) & (!\u_sdram_test|rd_cnt[3]~18\ & VCC))
-- \u_sdram_test|rd_cnt[4]~20\ = CARRY((\u_sdram_test|rd_cnt\(4) & !\u_sdram_test|rd_cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_cnt\(4),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[3]~18\,
	combout => \u_sdram_test|rd_cnt[4]~19_combout\,
	cout => \u_sdram_test|rd_cnt[4]~20\);

-- Location: FF_X13_Y15_N17
\u_sdram_test|rd_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[4]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(4));

-- Location: LCCOMB_X13_Y15_N18
\u_sdram_test|rd_cnt[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[5]~21_combout\ = (\u_sdram_test|rd_cnt\(5) & (!\u_sdram_test|rd_cnt[4]~20\)) # (!\u_sdram_test|rd_cnt\(5) & ((\u_sdram_test|rd_cnt[4]~20\) # (GND)))
-- \u_sdram_test|rd_cnt[5]~22\ = CARRY((!\u_sdram_test|rd_cnt[4]~20\) # (!\u_sdram_test|rd_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(5),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[4]~20\,
	combout => \u_sdram_test|rd_cnt[5]~21_combout\,
	cout => \u_sdram_test|rd_cnt[5]~22\);

-- Location: FF_X13_Y15_N19
\u_sdram_test|rd_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[5]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(5));

-- Location: LCCOMB_X13_Y15_N20
\u_sdram_test|rd_cnt[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[6]~23_combout\ = (\u_sdram_test|rd_cnt\(6) & (\u_sdram_test|rd_cnt[5]~22\ $ (GND))) # (!\u_sdram_test|rd_cnt\(6) & (!\u_sdram_test|rd_cnt[5]~22\ & VCC))
-- \u_sdram_test|rd_cnt[6]~24\ = CARRY((\u_sdram_test|rd_cnt\(6) & !\u_sdram_test|rd_cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_cnt\(6),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[5]~22\,
	combout => \u_sdram_test|rd_cnt[6]~23_combout\,
	cout => \u_sdram_test|rd_cnt[6]~24\);

-- Location: FF_X13_Y15_N21
\u_sdram_test|rd_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[6]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(6));

-- Location: LCCOMB_X13_Y15_N22
\u_sdram_test|rd_cnt[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_cnt[7]~25_combout\ = (\u_sdram_test|rd_cnt\(7) & (!\u_sdram_test|rd_cnt[6]~24\)) # (!\u_sdram_test|rd_cnt\(7) & ((\u_sdram_test|rd_cnt[6]~24\) # (GND)))
-- \u_sdram_test|rd_cnt[7]~26\ = CARRY((!\u_sdram_test|rd_cnt[6]~24\) # (!\u_sdram_test|rd_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(7),
	datad => VCC,
	cin => \u_sdram_test|rd_cnt[6]~24\,
	combout => \u_sdram_test|rd_cnt[7]~25_combout\,
	cout => \u_sdram_test|rd_cnt[7]~26\);

-- Location: FF_X13_Y15_N23
\u_sdram_test|rd_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[7]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(7));

-- Location: FF_X13_Y15_N25
\u_sdram_test|rd_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_cnt[8]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => \u_sdram_test|rd_cnt\(10),
	ena => \u_sdram_test|rd_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_cnt\(8));

-- Location: LCCOMB_X13_Y15_N30
\u_sdram_test|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal0~2_combout\ = (!\u_sdram_test|rd_cnt\(8) & (!\u_sdram_test|rd_cnt\(9) & \u_sdram_test|rd_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|rd_cnt\(8),
	datac => \u_sdram_test|rd_cnt\(9),
	datad => \u_sdram_test|rd_cnt\(10),
	combout => \u_sdram_test|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y15_N4
\u_sdram_test|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal0~0_combout\ = (!\u_sdram_test|rd_cnt\(1) & (!\u_sdram_test|rd_cnt\(0) & (!\u_sdram_test|rd_cnt\(3) & !\u_sdram_test|rd_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(1),
	datab => \u_sdram_test|rd_cnt\(0),
	datac => \u_sdram_test|rd_cnt\(3),
	datad => \u_sdram_test|rd_cnt\(2),
	combout => \u_sdram_test|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y15_N6
\u_sdram_test|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal0~1_combout\ = (!\u_sdram_test|rd_cnt\(5) & (!\u_sdram_test|rd_cnt\(4) & (!\u_sdram_test|rd_cnt\(7) & !\u_sdram_test|rd_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(5),
	datab => \u_sdram_test|rd_cnt\(4),
	datac => \u_sdram_test|rd_cnt\(7),
	datad => \u_sdram_test|rd_cnt\(6),
	combout => \u_sdram_test|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y15_N0
\u_sdram_test|rd_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|rd_valid~0_combout\ = (\u_sdram_test|rd_valid~q\) # ((\u_sdram_test|Equal0~2_combout\ & (\u_sdram_test|Equal0~0_combout\ & \u_sdram_test|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|Equal0~2_combout\,
	datab => \u_sdram_test|Equal0~0_combout\,
	datac => \u_sdram_test|rd_valid~q\,
	datad => \u_sdram_test|Equal0~1_combout\,
	combout => \u_sdram_test|rd_valid~0_combout\);

-- Location: FF_X13_Y15_N1
\u_sdram_test|rd_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|rd_valid~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|rd_valid~q\);

-- Location: IOIBUF_X32_Y0_N22
\sdram_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(0),
	o => \sdram_data[0]~input_o\);

-- Location: FF_X26_Y15_N1
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \sdram_data[0]~input_o\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(0));

-- Location: LCCOMB_X16_Y14_N4
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\ = !\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a0~_wirecell_combout\);

-- Location: LCCOMB_X13_Y14_N2
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\ $ 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a9~q\,
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|counter3a10~q\,
	combout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\sdram_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(1),
	o => \sdram_data[1]~input_o\);

-- Location: LCCOMB_X26_Y15_N2
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[1]~feeder_combout\ = \sdram_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[1]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[1]~feeder_combout\);

-- Location: FF_X26_Y15_N3
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(1));

-- Location: IOIBUF_X34_Y4_N22
\sdram_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(2),
	o => \sdram_data[2]~input_o\);

-- Location: LCCOMB_X26_Y15_N4
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[2]~feeder_combout\ = \sdram_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[2]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[2]~feeder_combout\);

-- Location: FF_X26_Y15_N5
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(2));

-- Location: IOIBUF_X34_Y3_N22
\sdram_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(3),
	o => \sdram_data[3]~input_o\);

-- Location: LCCOMB_X26_Y15_N30
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[3]~feeder_combout\ = \sdram_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[3]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[3]~feeder_combout\);

-- Location: FF_X26_Y15_N31
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(3));

-- Location: IOIBUF_X34_Y8_N22
\sdram_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(4),
	o => \sdram_data[4]~input_o\);

-- Location: FF_X26_Y15_N25
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \sdram_data[4]~input_o\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(4));

-- Location: IOIBUF_X34_Y7_N8
\sdram_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(5),
	o => \sdram_data[5]~input_o\);

-- Location: LCCOMB_X26_Y15_N26
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[5]~feeder_combout\ = \sdram_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[5]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[5]~feeder_combout\);

-- Location: FF_X26_Y15_N27
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[5]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(5));

-- Location: IOIBUF_X32_Y0_N15
\sdram_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(6),
	o => \sdram_data[6]~input_o\);

-- Location: FF_X26_Y15_N29
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \sdram_data[6]~input_o\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(6));

-- Location: IOIBUF_X34_Y3_N15
\sdram_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(7),
	o => \sdram_data[7]~input_o\);

-- Location: LCCOMB_X26_Y15_N6
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[7]~feeder_combout\ = \sdram_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[7]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[7]~feeder_combout\);

-- Location: FF_X26_Y15_N7
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[7]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(7));

-- Location: IOIBUF_X34_Y17_N22
\sdram_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(8),
	o => \sdram_data[8]~input_o\);

-- Location: LCCOMB_X26_Y15_N16
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[8]~feeder_combout\ = \sdram_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[8]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[8]~feeder_combout\);

-- Location: FF_X26_Y15_N17
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[8]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(8));

-- Location: M9K_X15_Y15_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sdram_top:u_sdram_top|sdram_fifo_ctrl:u_sdram_fifo_ctrl|rdfifo:u_rdfifo|dcfifo:dcfifo_component|dcfifo_aol1:auto_generated|altsyncram_em31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	clr1 => \sys_rst_n~0clkctrl_outclk\,
	portadatain => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X13_Y15_N2
\u_sdram_test|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~0_combout\ = (\u_sdram_test|rd_cnt\(1) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0) $ 
-- (!\u_sdram_test|rd_cnt\(0))))) # (!\u_sdram_test|rd_cnt\(1) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0) $ 
-- (!\u_sdram_test|rd_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(1),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0),
	datac => \u_sdram_test|rd_cnt\(0),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1),
	combout => \u_sdram_test|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y15_N20
\u_sdram_test|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~2_combout\ = (\u_sdram_test|rd_cnt\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5) $ 
-- (!\u_sdram_test|rd_cnt\(5))))) # (!\u_sdram_test|rd_cnt\(4) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5) $ 
-- (!\u_sdram_test|rd_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(4),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5),
	datad => \u_sdram_test|rd_cnt\(5),
	combout => \u_sdram_test|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y15_N26
\u_sdram_test|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~1_combout\ = (\u_sdram_test|rd_cnt\(3) & (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & (\u_sdram_test|rd_cnt\(2) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2))))) # (!\u_sdram_test|rd_cnt\(3) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & (\u_sdram_test|rd_cnt\(2) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_cnt\(3),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3),
	datac => \u_sdram_test|rd_cnt\(2),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2),
	combout => \u_sdram_test|Equal1~1_combout\);

-- Location: LCCOMB_X14_Y15_N6
\u_sdram_test|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~3_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & (\u_sdram_test|rd_cnt\(7) & (\u_sdram_test|rd_cnt\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & (!\u_sdram_test|rd_cnt\(7) & (\u_sdram_test|rd_cnt\(6) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7),
	datab => \u_sdram_test|rd_cnt\(7),
	datac => \u_sdram_test|rd_cnt\(6),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6),
	combout => \u_sdram_test|Equal1~3_combout\);

-- Location: LCCOMB_X14_Y15_N16
\u_sdram_test|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~4_combout\ = (\u_sdram_test|Equal1~0_combout\ & (\u_sdram_test|Equal1~2_combout\ & (\u_sdram_test|Equal1~1_combout\ & \u_sdram_test|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|Equal1~0_combout\,
	datab => \u_sdram_test|Equal1~2_combout\,
	datac => \u_sdram_test|Equal1~1_combout\,
	datad => \u_sdram_test|Equal1~3_combout\,
	combout => \u_sdram_test|Equal1~4_combout\);

-- Location: IOIBUF_X34_Y9_N22
\sdram_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(9),
	o => \sdram_data[9]~input_o\);

-- Location: FF_X26_Y15_N11
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \sdram_data[9]~input_o\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(9));

-- Location: IOIBUF_X34_Y9_N1
\sdram_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(10),
	o => \sdram_data[10]~input_o\);

-- Location: LCCOMB_X26_Y15_N12
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[10]~feeder_combout\ = \sdram_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[10]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[10]~feeder_combout\);

-- Location: FF_X26_Y15_N13
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[10]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(10));

-- Location: IOIBUF_X34_Y10_N8
\sdram_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(11),
	o => \sdram_data[11]~input_o\);

-- Location: LCCOMB_X26_Y15_N22
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[11]~feeder_combout\ = \sdram_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[11]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[11]~feeder_combout\);

-- Location: FF_X26_Y15_N23
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[11]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(11));

-- Location: IOIBUF_X34_Y9_N15
\sdram_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(12),
	o => \sdram_data[12]~input_o\);

-- Location: LCCOMB_X26_Y15_N8
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[12]~feeder_combout\ = \sdram_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[12]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[12]~feeder_combout\);

-- Location: FF_X26_Y15_N9
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[12]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(12));

-- Location: IOIBUF_X34_Y9_N8
\sdram_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(13),
	o => \sdram_data[13]~input_o\);

-- Location: FF_X26_Y15_N19
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \sdram_data[13]~input_o\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(13));

-- Location: IOIBUF_X34_Y8_N15
\sdram_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(14),
	o => \sdram_data[14]~input_o\);

-- Location: LCCOMB_X26_Y15_N20
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[14]~feeder_combout\ = \sdram_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_data[14]~input_o\,
	combout => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[14]~feeder_combout\);

-- Location: FF_X26_Y15_N21
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[14]~feeder_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(14));

-- Location: IOIBUF_X34_Y8_N8
\sdram_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdram_data(15),
	o => \sdram_data[15]~input_o\);

-- Location: FF_X26_Y15_N15
\u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \sdram_data[15]~input_o\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sload => VCC,
	ena => \u_sdram_top|u_sdram_controller|u_sdram_data|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_top|u_sdram_controller|u_sdram_data|sdram_dout_r\(15));

-- Location: M9K_X15_Y14_N0
\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sdram_top:u_sdram_top|sdram_fifo_ctrl:u_sdram_fifo_ctrl|rdfifo:u_rdfifo|dcfifo:dcfifo_component|dcfifo_aol1:auto_generated|altsyncram_em31:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	clk1 => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	ena1 => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	clr1 => \sys_rst_n~0clkctrl_outclk\,
	portadatain => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTADATAIN_bus\,
	portaaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTAADDR_bus\,
	portbaddr => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|ram_block3a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y15_N12
\u_sdram_test|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~6_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11) & 
-- (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10) $ (!\u_sdram_test|rd_cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10),
	datad => \u_sdram_test|rd_cnt\(10),
	combout => \u_sdram_test|Equal1~6_combout\);

-- Location: LCCOMB_X14_Y15_N22
\u_sdram_test|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~7_combout\ = (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15) & (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13) & 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14) & \u_sdram_test|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15),
	datab => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13),
	datac => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14),
	datad => \u_sdram_test|Equal1~6_combout\,
	combout => \u_sdram_test|Equal1~7_combout\);

-- Location: LCCOMB_X14_Y15_N10
\u_sdram_test|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|Equal1~5_combout\ = (\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & (\u_sdram_test|rd_cnt\(9) & (\u_sdram_test|rd_cnt\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8))))) # (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & (!\u_sdram_test|rd_cnt\(9) & (\u_sdram_test|rd_cnt\(8) $ 
-- (!\u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9),
	datab => \u_sdram_test|rd_cnt\(8),
	datac => \u_sdram_test|rd_cnt\(9),
	datad => \u_sdram_top|u_sdram_fifo_ctrl|u_rdfifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8),
	combout => \u_sdram_test|Equal1~5_combout\);

-- Location: LCCOMB_X14_Y15_N0
\u_sdram_test|always6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|always6~0_combout\ = (\u_sdram_test|rd_valid~q\ & (((!\u_sdram_test|Equal1~5_combout\) # (!\u_sdram_test|Equal1~7_combout\)) # (!\u_sdram_test|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sdram_test|rd_valid~q\,
	datab => \u_sdram_test|Equal1~4_combout\,
	datac => \u_sdram_test|Equal1~7_combout\,
	datad => \u_sdram_test|Equal1~5_combout\,
	combout => \u_sdram_test|always6~0_combout\);

-- Location: LCCOMB_X14_Y15_N24
\u_sdram_test|error_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_sdram_test|error_flag~0_combout\ = (\u_sdram_test|error_flag~q\) # (\u_sdram_test|always6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_sdram_test|error_flag~q\,
	datad => \u_sdram_test|always6~0_combout\,
	combout => \u_sdram_test|error_flag~0_combout\);

-- Location: FF_X14_Y15_N25
\u_sdram_test|error_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_sdram_test|error_flag~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sdram_test|error_flag~q\);

-- Location: LCCOMB_X18_Y23_N8
\u_led_disp|led_cnt[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[0]~25_combout\ = \u_led_disp|led_cnt\(0) $ (VCC)
-- \u_led_disp|led_cnt[0]~26\ = CARRY(\u_led_disp|led_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(0),
	datad => VCC,
	combout => \u_led_disp|led_cnt[0]~25_combout\,
	cout => \u_led_disp|led_cnt[0]~26\);

-- Location: LCCOMB_X18_Y22_N6
\u_led_disp|led_cnt[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[15]~55_combout\ = (\u_led_disp|led_cnt\(15) & (!\u_led_disp|led_cnt[14]~54\)) # (!\u_led_disp|led_cnt\(15) & ((\u_led_disp|led_cnt[14]~54\) # (GND)))
-- \u_led_disp|led_cnt[15]~56\ = CARRY((!\u_led_disp|led_cnt[14]~54\) # (!\u_led_disp|led_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(15),
	datad => VCC,
	cin => \u_led_disp|led_cnt[14]~54\,
	combout => \u_led_disp|led_cnt[15]~55_combout\,
	cout => \u_led_disp|led_cnt[15]~56\);

-- Location: LCCOMB_X18_Y22_N8
\u_led_disp|led_cnt[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[16]~57_combout\ = (\u_led_disp|led_cnt\(16) & (\u_led_disp|led_cnt[15]~56\ $ (GND))) # (!\u_led_disp|led_cnt\(16) & (!\u_led_disp|led_cnt[15]~56\ & VCC))
-- \u_led_disp|led_cnt[16]~58\ = CARRY((\u_led_disp|led_cnt\(16) & !\u_led_disp|led_cnt[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(16),
	datad => VCC,
	cin => \u_led_disp|led_cnt[15]~56\,
	combout => \u_led_disp|led_cnt[16]~57_combout\,
	cout => \u_led_disp|led_cnt[16]~58\);

-- Location: FF_X18_Y22_N9
\u_led_disp|led_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[16]~57_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(16));

-- Location: LCCOMB_X18_Y22_N10
\u_led_disp|led_cnt[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[17]~59_combout\ = (\u_led_disp|led_cnt\(17) & (!\u_led_disp|led_cnt[16]~58\)) # (!\u_led_disp|led_cnt\(17) & ((\u_led_disp|led_cnt[16]~58\) # (GND)))
-- \u_led_disp|led_cnt[17]~60\ = CARRY((!\u_led_disp|led_cnt[16]~58\) # (!\u_led_disp|led_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(17),
	datad => VCC,
	cin => \u_led_disp|led_cnt[16]~58\,
	combout => \u_led_disp|led_cnt[17]~59_combout\,
	cout => \u_led_disp|led_cnt[17]~60\);

-- Location: FF_X18_Y22_N11
\u_led_disp|led_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[17]~59_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(17));

-- Location: LCCOMB_X18_Y22_N12
\u_led_disp|led_cnt[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[18]~61_combout\ = (\u_led_disp|led_cnt\(18) & (\u_led_disp|led_cnt[17]~60\ $ (GND))) # (!\u_led_disp|led_cnt\(18) & (!\u_led_disp|led_cnt[17]~60\ & VCC))
-- \u_led_disp|led_cnt[18]~62\ = CARRY((\u_led_disp|led_cnt\(18) & !\u_led_disp|led_cnt[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(18),
	datad => VCC,
	cin => \u_led_disp|led_cnt[17]~60\,
	combout => \u_led_disp|led_cnt[18]~61_combout\,
	cout => \u_led_disp|led_cnt[18]~62\);

-- Location: FF_X18_Y22_N13
\u_led_disp|led_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[18]~61_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(18));

-- Location: LCCOMB_X18_Y22_N14
\u_led_disp|led_cnt[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[19]~63_combout\ = (\u_led_disp|led_cnt\(19) & (!\u_led_disp|led_cnt[18]~62\)) # (!\u_led_disp|led_cnt\(19) & ((\u_led_disp|led_cnt[18]~62\) # (GND)))
-- \u_led_disp|led_cnt[19]~64\ = CARRY((!\u_led_disp|led_cnt[18]~62\) # (!\u_led_disp|led_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(19),
	datad => VCC,
	cin => \u_led_disp|led_cnt[18]~62\,
	combout => \u_led_disp|led_cnt[19]~63_combout\,
	cout => \u_led_disp|led_cnt[19]~64\);

-- Location: FF_X18_Y22_N15
\u_led_disp|led_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[19]~63_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(19));

-- Location: LCCOMB_X18_Y22_N16
\u_led_disp|led_cnt[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[20]~65_combout\ = (\u_led_disp|led_cnt\(20) & (\u_led_disp|led_cnt[19]~64\ $ (GND))) # (!\u_led_disp|led_cnt\(20) & (!\u_led_disp|led_cnt[19]~64\ & VCC))
-- \u_led_disp|led_cnt[20]~66\ = CARRY((\u_led_disp|led_cnt\(20) & !\u_led_disp|led_cnt[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(20),
	datad => VCC,
	cin => \u_led_disp|led_cnt[19]~64\,
	combout => \u_led_disp|led_cnt[20]~65_combout\,
	cout => \u_led_disp|led_cnt[20]~66\);

-- Location: FF_X18_Y22_N17
\u_led_disp|led_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[20]~65_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(20));

-- Location: LCCOMB_X18_Y22_N18
\u_led_disp|led_cnt[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[21]~67_combout\ = (\u_led_disp|led_cnt\(21) & (!\u_led_disp|led_cnt[20]~66\)) # (!\u_led_disp|led_cnt\(21) & ((\u_led_disp|led_cnt[20]~66\) # (GND)))
-- \u_led_disp|led_cnt[21]~68\ = CARRY((!\u_led_disp|led_cnt[20]~66\) # (!\u_led_disp|led_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(21),
	datad => VCC,
	cin => \u_led_disp|led_cnt[20]~66\,
	combout => \u_led_disp|led_cnt[21]~67_combout\,
	cout => \u_led_disp|led_cnt[21]~68\);

-- Location: FF_X18_Y22_N19
\u_led_disp|led_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[21]~67_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(21));

-- Location: LCCOMB_X18_Y22_N26
\u_led_disp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~0_combout\ = (\u_led_disp|led_cnt\(18) & (\u_led_disp|led_cnt\(21) & (\u_led_disp|led_cnt\(19) & \u_led_disp|led_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(18),
	datab => \u_led_disp|led_cnt\(21),
	datac => \u_led_disp|led_cnt\(19),
	datad => \u_led_disp|led_cnt\(20),
	combout => \u_led_disp|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y22_N20
\u_led_disp|led_cnt[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[22]~69_combout\ = (\u_led_disp|led_cnt\(22) & (\u_led_disp|led_cnt[21]~68\ $ (GND))) # (!\u_led_disp|led_cnt\(22) & (!\u_led_disp|led_cnt[21]~68\ & VCC))
-- \u_led_disp|led_cnt[22]~70\ = CARRY((\u_led_disp|led_cnt\(22) & !\u_led_disp|led_cnt[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(22),
	datad => VCC,
	cin => \u_led_disp|led_cnt[21]~68\,
	combout => \u_led_disp|led_cnt[22]~69_combout\,
	cout => \u_led_disp|led_cnt[22]~70\);

-- Location: FF_X18_Y22_N21
\u_led_disp|led_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[22]~69_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(22));

-- Location: LCCOMB_X18_Y22_N22
\u_led_disp|led_cnt[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[23]~71_combout\ = (\u_led_disp|led_cnt\(23) & (!\u_led_disp|led_cnt[22]~70\)) # (!\u_led_disp|led_cnt\(23) & ((\u_led_disp|led_cnt[22]~70\) # (GND)))
-- \u_led_disp|led_cnt[23]~72\ = CARRY((!\u_led_disp|led_cnt[22]~70\) # (!\u_led_disp|led_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(23),
	datad => VCC,
	cin => \u_led_disp|led_cnt[22]~70\,
	combout => \u_led_disp|led_cnt[23]~71_combout\,
	cout => \u_led_disp|led_cnt[23]~72\);

-- Location: FF_X18_Y22_N23
\u_led_disp|led_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[23]~71_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(23));

-- Location: LCCOMB_X18_Y22_N24
\u_led_disp|led_cnt[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[24]~73_combout\ = \u_led_disp|led_cnt\(24) $ (!\u_led_disp|led_cnt[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(24),
	cin => \u_led_disp|led_cnt[23]~72\,
	combout => \u_led_disp|led_cnt[24]~73_combout\);

-- Location: FF_X18_Y22_N25
\u_led_disp|led_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[24]~73_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(24));

-- Location: LCCOMB_X18_Y22_N28
\u_led_disp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~2_combout\ = (\u_led_disp|led_cnt\(11) & (\u_led_disp|led_cnt\(13) & (\u_led_disp|led_cnt\(14) & \u_led_disp|led_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(11),
	datab => \u_led_disp|led_cnt\(13),
	datac => \u_led_disp|led_cnt\(14),
	datad => \u_led_disp|led_cnt\(12),
	combout => \u_led_disp|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y23_N0
\u_led_disp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~1_combout\ = (!\u_led_disp|led_cnt\(9) & (!\u_led_disp|led_cnt\(10) & (!\u_led_disp|led_cnt\(7) & !\u_led_disp|led_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(9),
	datab => \u_led_disp|led_cnt\(10),
	datac => \u_led_disp|led_cnt\(7),
	datad => \u_led_disp|led_cnt\(8),
	combout => \u_led_disp|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y23_N6
\u_led_disp|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|LessThan0~0_combout\ = (!\u_led_disp|led_cnt\(15) & (((!\u_led_disp|led_cnt\(6) & \u_led_disp|Equal0~1_combout\)) # (!\u_led_disp|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(15),
	datab => \u_led_disp|led_cnt\(6),
	datac => \u_led_disp|Equal0~2_combout\,
	datad => \u_led_disp|Equal0~1_combout\,
	combout => \u_led_disp|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y22_N24
\u_led_disp|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|LessThan0~1_combout\ = (\u_led_disp|led_cnt\(22) & ((\u_led_disp|led_cnt\(17)) # ((!\u_led_disp|LessThan0~0_combout\ & \u_led_disp|led_cnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(17),
	datab => \u_led_disp|led_cnt\(22),
	datac => \u_led_disp|LessThan0~0_combout\,
	datad => \u_led_disp|led_cnt\(16),
	combout => \u_led_disp|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y22_N2
\u_led_disp|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|LessThan0~2_combout\ = (\u_led_disp|led_cnt\(24) & ((\u_led_disp|led_cnt\(23)) # ((\u_led_disp|Equal0~0_combout\ & \u_led_disp|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|Equal0~0_combout\,
	datab => \u_led_disp|led_cnt\(24),
	datac => \u_led_disp|led_cnt\(23),
	datad => \u_led_disp|LessThan0~1_combout\,
	combout => \u_led_disp|LessThan0~2_combout\);

-- Location: FF_X18_Y23_N9
\u_led_disp|led_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[0]~25_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(0));

-- Location: LCCOMB_X18_Y23_N10
\u_led_disp|led_cnt[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[1]~27_combout\ = (\u_led_disp|led_cnt\(1) & (!\u_led_disp|led_cnt[0]~26\)) # (!\u_led_disp|led_cnt\(1) & ((\u_led_disp|led_cnt[0]~26\) # (GND)))
-- \u_led_disp|led_cnt[1]~28\ = CARRY((!\u_led_disp|led_cnt[0]~26\) # (!\u_led_disp|led_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(1),
	datad => VCC,
	cin => \u_led_disp|led_cnt[0]~26\,
	combout => \u_led_disp|led_cnt[1]~27_combout\,
	cout => \u_led_disp|led_cnt[1]~28\);

-- Location: FF_X18_Y23_N11
\u_led_disp|led_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[1]~27_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(1));

-- Location: LCCOMB_X18_Y23_N12
\u_led_disp|led_cnt[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[2]~29_combout\ = (\u_led_disp|led_cnt\(2) & (\u_led_disp|led_cnt[1]~28\ $ (GND))) # (!\u_led_disp|led_cnt\(2) & (!\u_led_disp|led_cnt[1]~28\ & VCC))
-- \u_led_disp|led_cnt[2]~30\ = CARRY((\u_led_disp|led_cnt\(2) & !\u_led_disp|led_cnt[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(2),
	datad => VCC,
	cin => \u_led_disp|led_cnt[1]~28\,
	combout => \u_led_disp|led_cnt[2]~29_combout\,
	cout => \u_led_disp|led_cnt[2]~30\);

-- Location: FF_X18_Y23_N13
\u_led_disp|led_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[2]~29_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(2));

-- Location: LCCOMB_X18_Y23_N14
\u_led_disp|led_cnt[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[3]~31_combout\ = (\u_led_disp|led_cnt\(3) & (!\u_led_disp|led_cnt[2]~30\)) # (!\u_led_disp|led_cnt\(3) & ((\u_led_disp|led_cnt[2]~30\) # (GND)))
-- \u_led_disp|led_cnt[3]~32\ = CARRY((!\u_led_disp|led_cnt[2]~30\) # (!\u_led_disp|led_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(3),
	datad => VCC,
	cin => \u_led_disp|led_cnt[2]~30\,
	combout => \u_led_disp|led_cnt[3]~31_combout\,
	cout => \u_led_disp|led_cnt[3]~32\);

-- Location: FF_X18_Y23_N15
\u_led_disp|led_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[3]~31_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(3));

-- Location: LCCOMB_X18_Y23_N16
\u_led_disp|led_cnt[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[4]~33_combout\ = (\u_led_disp|led_cnt\(4) & (\u_led_disp|led_cnt[3]~32\ $ (GND))) # (!\u_led_disp|led_cnt\(4) & (!\u_led_disp|led_cnt[3]~32\ & VCC))
-- \u_led_disp|led_cnt[4]~34\ = CARRY((\u_led_disp|led_cnt\(4) & !\u_led_disp|led_cnt[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(4),
	datad => VCC,
	cin => \u_led_disp|led_cnt[3]~32\,
	combout => \u_led_disp|led_cnt[4]~33_combout\,
	cout => \u_led_disp|led_cnt[4]~34\);

-- Location: FF_X18_Y23_N17
\u_led_disp|led_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[4]~33_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(4));

-- Location: LCCOMB_X18_Y23_N18
\u_led_disp|led_cnt[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[5]~35_combout\ = (\u_led_disp|led_cnt\(5) & (!\u_led_disp|led_cnt[4]~34\)) # (!\u_led_disp|led_cnt\(5) & ((\u_led_disp|led_cnt[4]~34\) # (GND)))
-- \u_led_disp|led_cnt[5]~36\ = CARRY((!\u_led_disp|led_cnt[4]~34\) # (!\u_led_disp|led_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(5),
	datad => VCC,
	cin => \u_led_disp|led_cnt[4]~34\,
	combout => \u_led_disp|led_cnt[5]~35_combout\,
	cout => \u_led_disp|led_cnt[5]~36\);

-- Location: FF_X18_Y23_N19
\u_led_disp|led_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[5]~35_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(5));

-- Location: LCCOMB_X18_Y23_N20
\u_led_disp|led_cnt[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[6]~37_combout\ = (\u_led_disp|led_cnt\(6) & (\u_led_disp|led_cnt[5]~36\ $ (GND))) # (!\u_led_disp|led_cnt\(6) & (!\u_led_disp|led_cnt[5]~36\ & VCC))
-- \u_led_disp|led_cnt[6]~38\ = CARRY((\u_led_disp|led_cnt\(6) & !\u_led_disp|led_cnt[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(6),
	datad => VCC,
	cin => \u_led_disp|led_cnt[5]~36\,
	combout => \u_led_disp|led_cnt[6]~37_combout\,
	cout => \u_led_disp|led_cnt[6]~38\);

-- Location: FF_X18_Y23_N21
\u_led_disp|led_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[6]~37_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(6));

-- Location: LCCOMB_X18_Y23_N22
\u_led_disp|led_cnt[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[7]~39_combout\ = (\u_led_disp|led_cnt\(7) & (!\u_led_disp|led_cnt[6]~38\)) # (!\u_led_disp|led_cnt\(7) & ((\u_led_disp|led_cnt[6]~38\) # (GND)))
-- \u_led_disp|led_cnt[7]~40\ = CARRY((!\u_led_disp|led_cnt[6]~38\) # (!\u_led_disp|led_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(7),
	datad => VCC,
	cin => \u_led_disp|led_cnt[6]~38\,
	combout => \u_led_disp|led_cnt[7]~39_combout\,
	cout => \u_led_disp|led_cnt[7]~40\);

-- Location: FF_X18_Y23_N23
\u_led_disp|led_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[7]~39_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(7));

-- Location: LCCOMB_X18_Y23_N24
\u_led_disp|led_cnt[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[8]~41_combout\ = (\u_led_disp|led_cnt\(8) & (\u_led_disp|led_cnt[7]~40\ $ (GND))) # (!\u_led_disp|led_cnt\(8) & (!\u_led_disp|led_cnt[7]~40\ & VCC))
-- \u_led_disp|led_cnt[8]~42\ = CARRY((\u_led_disp|led_cnt\(8) & !\u_led_disp|led_cnt[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(8),
	datad => VCC,
	cin => \u_led_disp|led_cnt[7]~40\,
	combout => \u_led_disp|led_cnt[8]~41_combout\,
	cout => \u_led_disp|led_cnt[8]~42\);

-- Location: FF_X18_Y23_N25
\u_led_disp|led_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[8]~41_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(8));

-- Location: LCCOMB_X18_Y23_N26
\u_led_disp|led_cnt[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[9]~43_combout\ = (\u_led_disp|led_cnt\(9) & (!\u_led_disp|led_cnt[8]~42\)) # (!\u_led_disp|led_cnt\(9) & ((\u_led_disp|led_cnt[8]~42\) # (GND)))
-- \u_led_disp|led_cnt[9]~44\ = CARRY((!\u_led_disp|led_cnt[8]~42\) # (!\u_led_disp|led_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(9),
	datad => VCC,
	cin => \u_led_disp|led_cnt[8]~42\,
	combout => \u_led_disp|led_cnt[9]~43_combout\,
	cout => \u_led_disp|led_cnt[9]~44\);

-- Location: FF_X18_Y23_N27
\u_led_disp|led_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[9]~43_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(9));

-- Location: LCCOMB_X18_Y23_N28
\u_led_disp|led_cnt[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[10]~45_combout\ = (\u_led_disp|led_cnt\(10) & (\u_led_disp|led_cnt[9]~44\ $ (GND))) # (!\u_led_disp|led_cnt\(10) & (!\u_led_disp|led_cnt[9]~44\ & VCC))
-- \u_led_disp|led_cnt[10]~46\ = CARRY((\u_led_disp|led_cnt\(10) & !\u_led_disp|led_cnt[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(10),
	datad => VCC,
	cin => \u_led_disp|led_cnt[9]~44\,
	combout => \u_led_disp|led_cnt[10]~45_combout\,
	cout => \u_led_disp|led_cnt[10]~46\);

-- Location: FF_X18_Y23_N29
\u_led_disp|led_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[10]~45_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(10));

-- Location: LCCOMB_X18_Y23_N30
\u_led_disp|led_cnt[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[11]~47_combout\ = (\u_led_disp|led_cnt\(11) & (!\u_led_disp|led_cnt[10]~46\)) # (!\u_led_disp|led_cnt\(11) & ((\u_led_disp|led_cnt[10]~46\) # (GND)))
-- \u_led_disp|led_cnt[11]~48\ = CARRY((!\u_led_disp|led_cnt[10]~46\) # (!\u_led_disp|led_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(11),
	datad => VCC,
	cin => \u_led_disp|led_cnt[10]~46\,
	combout => \u_led_disp|led_cnt[11]~47_combout\,
	cout => \u_led_disp|led_cnt[11]~48\);

-- Location: FF_X18_Y23_N31
\u_led_disp|led_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[11]~47_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(11));

-- Location: LCCOMB_X18_Y22_N0
\u_led_disp|led_cnt[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[12]~49_combout\ = (\u_led_disp|led_cnt\(12) & (\u_led_disp|led_cnt[11]~48\ $ (GND))) # (!\u_led_disp|led_cnt\(12) & (!\u_led_disp|led_cnt[11]~48\ & VCC))
-- \u_led_disp|led_cnt[12]~50\ = CARRY((\u_led_disp|led_cnt\(12) & !\u_led_disp|led_cnt[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(12),
	datad => VCC,
	cin => \u_led_disp|led_cnt[11]~48\,
	combout => \u_led_disp|led_cnt[12]~49_combout\,
	cout => \u_led_disp|led_cnt[12]~50\);

-- Location: FF_X18_Y22_N1
\u_led_disp|led_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[12]~49_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(12));

-- Location: LCCOMB_X18_Y22_N2
\u_led_disp|led_cnt[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[13]~51_combout\ = (\u_led_disp|led_cnt\(13) & (!\u_led_disp|led_cnt[12]~50\)) # (!\u_led_disp|led_cnt\(13) & ((\u_led_disp|led_cnt[12]~50\) # (GND)))
-- \u_led_disp|led_cnt[13]~52\ = CARRY((!\u_led_disp|led_cnt[12]~50\) # (!\u_led_disp|led_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(13),
	datad => VCC,
	cin => \u_led_disp|led_cnt[12]~50\,
	combout => \u_led_disp|led_cnt[13]~51_combout\,
	cout => \u_led_disp|led_cnt[13]~52\);

-- Location: FF_X18_Y22_N3
\u_led_disp|led_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[13]~51_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(13));

-- Location: LCCOMB_X18_Y22_N4
\u_led_disp|led_cnt[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led_cnt[14]~53_combout\ = (\u_led_disp|led_cnt\(14) & (\u_led_disp|led_cnt[13]~52\ $ (GND))) # (!\u_led_disp|led_cnt\(14) & (!\u_led_disp|led_cnt[13]~52\ & VCC))
-- \u_led_disp|led_cnt[14]~54\ = CARRY((\u_led_disp|led_cnt\(14) & !\u_led_disp|led_cnt[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_led_disp|led_cnt\(14),
	datad => VCC,
	cin => \u_led_disp|led_cnt[13]~52\,
	combout => \u_led_disp|led_cnt[14]~53_combout\,
	cout => \u_led_disp|led_cnt[14]~54\);

-- Location: FF_X18_Y22_N5
\u_led_disp|led_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[14]~53_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(14));

-- Location: FF_X18_Y22_N7
\u_led_disp|led_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led_cnt[15]~55_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	sclr => \u_led_disp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led_cnt\(15));

-- Location: LCCOMB_X18_Y23_N4
\u_led_disp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~5_combout\ = (!\u_led_disp|led_cnt\(15) & (!\u_led_disp|led_cnt\(4) & (\u_led_disp|led_cnt\(6) & !\u_led_disp|led_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(15),
	datab => \u_led_disp|led_cnt\(4),
	datac => \u_led_disp|led_cnt\(6),
	datad => \u_led_disp|led_cnt\(5),
	combout => \u_led_disp|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y23_N2
\u_led_disp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~4_combout\ = (!\u_led_disp|led_cnt\(2) & (!\u_led_disp|led_cnt\(3) & (!\u_led_disp|led_cnt\(0) & !\u_led_disp|led_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(2),
	datab => \u_led_disp|led_cnt\(3),
	datac => \u_led_disp|led_cnt\(0),
	datad => \u_led_disp|led_cnt\(1),
	combout => \u_led_disp|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y22_N26
\u_led_disp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~3_combout\ = (\u_led_disp|Equal0~0_combout\ & (\u_led_disp|Equal0~2_combout\ & (\u_led_disp|Equal0~1_combout\ & \u_led_disp|led_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|Equal0~0_combout\,
	datab => \u_led_disp|Equal0~2_combout\,
	datac => \u_led_disp|Equal0~1_combout\,
	datad => \u_led_disp|led_cnt\(22),
	combout => \u_led_disp|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y22_N12
\u_led_disp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~6_combout\ = (!\u_led_disp|led_cnt\(17) & (\u_led_disp|led_cnt\(24) & (!\u_led_disp|led_cnt\(23) & \u_led_disp|led_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|led_cnt\(17),
	datab => \u_led_disp|led_cnt\(24),
	datac => \u_led_disp|led_cnt\(23),
	datad => \u_led_disp|led_cnt\(16),
	combout => \u_led_disp|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y22_N6
\u_led_disp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|Equal0~7_combout\ = (\u_led_disp|Equal0~5_combout\ & (\u_led_disp|Equal0~4_combout\ & (\u_led_disp|Equal0~3_combout\ & \u_led_disp|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_disp|Equal0~5_combout\,
	datab => \u_led_disp|Equal0~4_combout\,
	datac => \u_led_disp|Equal0~3_combout\,
	datad => \u_led_disp|Equal0~6_combout\,
	combout => \u_led_disp|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y22_N0
\u_led_disp|led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_led_disp|led~0_combout\ = (\u_led_disp|led~q\ $ (\u_led_disp|Equal0~7_combout\)) # (!\u_sdram_test|error_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sdram_test|error_flag~q\,
	datac => \u_led_disp|led~q\,
	datad => \u_led_disp|Equal0~7_combout\,
	combout => \u_led_disp|led~0_combout\);

-- Location: FF_X19_Y22_N1
\u_led_disp|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_pll_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_led_disp|led~0_combout\,
	clrn => \ALT_INV_sys_rst_n~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_disp|led~q\);
END structure;


