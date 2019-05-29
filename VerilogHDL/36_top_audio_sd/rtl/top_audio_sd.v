//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           audio_sd
// Last modified Date:
// Last Version:        V1.0
// Descriptions:        通过SD卡放音乐
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_audio_sd(
    //system clock
    input           sys_clk    ,         // 时钟信号
    input           sys_rst_n  ,         // 复位信号

    //wm8978 interface
    //audio interface(master mode)
    input           aud_bclk   ,         // WM8978位时钟
    input           aud_lrc    ,         // 对齐信号
    input           aud_adcdat ,         // 音频输入
    output          aud_mclk   ,         // WM8978的主时钟(最大为12.288MHz)
    output          aud_dacdat ,         // 音频输出
    //control interface
    output          aud_scl    ,         // WM8978的SCL信号
    inout           aud_sda    ,         // WM8978的SDA信号

    //sd interface
    output          sd_clk     ,         //SD卡SPI时钟
    input           sd_miso    ,         //SD卡SPI主机输入数据脚
    output          sd_mosi    ,         //SD卡SPI主机输出数据脚
    output          sd_cs                //SD卡SPI片选

);

//parameter define
parameter       START_ADDR = 17'd8256 ;  // 音乐存放的起始地址
parameter       AUDIO_SEC  = 17'd79076;  // 音乐占用的扇区数

//wire define
wire            tx_done        ;         // 一次发送完成信号
wire            clk_ref        ;         // SD卡操作时钟
wire            clk_ref_180deg ;         // SD卡180度反相时钟
wire            rst_n          ;         // 复位信号
wire            locked         ;         // 锁相环locked信号
wire            sd_init_done   ;         // SD卡初始化完成
wire            rd_start_en    ;         // 开始读出使能
wire    [31:0]  rd_sec_addr    ;         // 读SD卡扇区地址
wire            rd_busy        ;         // 读忙信号
wire            rd_val_en      ;         // 数据读取有效使能信号
wire    [15:0]  music_data     ;         // 音乐数据
wire    [31:0]  dac_data       ;         // 音频数据
wire    [ 9:0]  wrusedw_cnt    ;         // fifo内剩余写入的字数
wire    [15:0]  rd_val_data    ;         // 读数据

//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;

//例化锁相环
pll_clk u_pll_clk(
    .areset       (~sys_rst_n    ),       // 复位信号，高电平有效
    .inclk0       (sys_clk       ),       // 输入时钟信号
    .c0           (clk_ref       ),       // SD驱动时钟
    .c1           (clk_ref_180deg),       // SD驱动时钟反相
    .c2           (aud_mclk      ),       // WM8978的主时钟
    .locked       (locked        )
);

//SD卡控制模块
sd_ctrl_top u_sd_ctrl_top(
    .clk_ref          (clk_ref      ),    // 时钟信号(25Mhz)
    .clk_ref_180deg   (clk_ref_180deg),   // 时钟信号，与sd_clk相位相差180度
    .rst_n            (rst_n        ),    // 复位信号，低电平有效
    //SD卡接口
    .sd_clk           (sd_clk       ),    // SD卡输出时钟
    .sd_miso          (sd_miso      ),    // SD卡SPI 主机输入数据脚
    .sd_mosi          (sd_mosi      ),    // SD卡SPI 主机输出数据脚
    .sd_cs            (sd_cs        ),    // SD卡SPI 片选
    //用户写SD卡接口
    .wr_start_en      (0),                // 开始写入数据信号
    .wr_sec_addr      (0),                // 写数据扇区地址
    .wr_data          (0),                // 写数据
    .wr_req           (),                 // 写请求数据信号
    .wr_busy          (),                 // 写忙信号
    //用户读SD卡接口
    .rd_sec_addr      (rd_sec_addr  ),    // 读数据扇区地址
    .rd_start_en      (rd_start_en  ),    // 开始读取数据信号
    .rd_busy          (rd_busy      ),    // 读忙信号
    .rd_val_en        (rd_val_en    ),    // 读数据有效信号使能
    .rd_val_data      (rd_val_data  ),    // 读数据
    .sd_init_done     (sd_init_done )     // SD卡初始化完成
);

//例化fifo模块
fifo u_fifo(
    .data   (rd_val_data),                // 写入fifo的数据
    .rdclk  (aud_bclk   ),                // 读fifo的时钟
    .rdreq  (tx_done    ),                // 读fifo的请求信号
    .wrclk  (sd_clk     ),                // 写fifo的时钟
    .wrreq  (rd_val_en  ),                // 写fifo的请求信号
    .q      (music_data ),                // 从fifo读出的数据
    .wrusedw(wrusedw_cnt)                 // fifo内剩余写入的数据
);

//例化WM8978模块
wm8978_ctrl u_wm8978(
    //system clock
    .clk                (sys_clk    ),    // 时钟信号
    .rst_n              (rst_n      ),    // 复位信号
    //wm8978 interface
    //audio interface(master mode)
    .aud_bclk           (aud_bclk   ),    // WM8978位时钟
    .aud_lrc            (aud_lrc    ),    // 对齐信号
    .aud_adcdat         (),               // 音频输入
    .aud_dacdat         (aud_dacdat ),    // 音频输出
    //control interface
    .aud_scl            (aud_scl    ),    // WM8978的SCL信号
    .aud_sda            (aud_sda    ),    // WM8978的SDA信号
    //user interface
    .adc_data           (),               // 接收的音频数据
    .dac_data           (dac_data   ),    // 输出的音频数据
    .rx_done            (),               // 一次接收完成
    .tx_done            (tx_done    )     // 一次发送完成
);

//例化audio_sd_ctrl，用于实现SD卡和WM8978的音频交互
audio_sd_ctrl #(
    .START_ADDR (START_ADDR),             // 音乐存放的起始地址
    .AUDIO_SEC  (AUDIO_SEC )              // 音乐占用的扇区数
) u_audio_sd_ctrl(
    //system clock
    .sd_clk       (sd_clk      ),         // SD卡时钟信号
    .aud_bclk     (aud_bclk    ),         // WM8978位时钟信号
    .rst_n        (rst_n       ),         // 复位信号
    //user interface
    .sd_init_done (sd_init_done),         // SD卡初始化完成
    .rd_busy      (rd_busy     ),         // 读忙信号
    .tx_done      (tx_done     ),
    .music_data   (music_data  ),         // 音乐数据
    .wrusedw_cnt  (wrusedw_cnt ),         // fifo内剩余写入的字数
    .rd_start_en  (rd_start_en ),         // 开始读出使能
    .rd_sec_addr  (rd_sec_addr ),         // 读SD卡扇区地址
    .dac_data     (dac_data    )          // 音频数据
);

endmodule