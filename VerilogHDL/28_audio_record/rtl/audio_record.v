//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           audio_record
// Last modified Date:  2018/3/27 16:18:05
// Last Version:        V1.0
// Descriptions:        录音机实验，KEY2按下开始录音，松开结束录音，按下KEY1按键开始播放录
//                      音（录音文件用SDRAM存储）
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/27 16:18:03
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module audio_record(
    //system clock
    input              sys_clk    ,          // 时钟信号
    input              sys_rst_n  ,          // 复位信号

    //wm8978 interface
    //audio interface(master mode)
    input              aud_bclk    ,         // WM8978位时钟
    input              aud_lrc     ,         // 对齐信号
    input              aud_adcdat  ,         // 音频输入
    output             aud_mclk    ,         // WM8978的主时钟(最大为12.288MHz)
    output             aud_dacdat  ,         // 音频输出
    //control interface
    output             aud_scl     ,         // WM8978的SCL信号
    inout              aud_sda     ,         // WM8978的SDA信号
    //SDROM interface
    output             sdram_clk   ,         // SDRAM 时钟
    output             sdram_cke   ,         // SDRAM 时钟有效
    output             sdram_cs_n  ,         // SDRAM 片选
    output             sdram_ras_n ,         // SDRAM 行有效
    output             sdram_cas_n ,         // SDRAM 列有效
    output             sdram_we_n  ,         // SDRAM 写有效
    output    [1:0]    sdram_ba    ,         // SDRAM Bank地址
    output    [1:0]    sdram_dqm   ,         // SDRAM 数据掩码
    output    [12:0]   sdram_addr  ,         // SDRAM 地址
    inout     [15:0]   sdram_data  ,         // SDRAM 数据

    //user interface
    input     [3:0]    key                   // key2按键控制录音、key1按键控制回放
);

//parameter define
//录音时长控制 TIME_RECORD = 48000*2*录音时间(秒)
parameter      TIME_RECORD = 24'd5760000;    // 60秒

//reg define
wire   [31:0]  dac_data            ;         // FPGA发送的音频数据
wire           wr_en               ;         // SDRAM fifo接口写入数据使能
wire   [15:0]  wr_data             ;         // SDRAM fifo接口写入数据
wire           rd_en               ;         // SDRAM fifo接口读出数据使能

//wire define
wire   [15:0]  rd_data             ;         // SDRAM fifo读出的数据
wire           sdram_init_done     ;         // SDRAM 初始化完成信号
wire           neg_play_key        ;         // 录音键的下降沿
wire           wr_load             ;         // 写地址寄存 & fifo清空
wire           rx_done             ;         // 音频数据接收完成
wire           tx_done             ;         // 音频数据发送完成
wire           record_key          ;         // 消抖后的key0
wire           play_key            ;         // 消抖后的key1
wire           clk_100m            ;         // sdram 控制时钟
wire           clk_100m_shift        ;         // 用于提供给sdram芯片的同步时钟
wire           clk_50m             ;         // 复位信号，低电平有效
wire           locked              ;         // 锁相环稳定信号
wire           rst_n               ;         // 复位信号
wire   [31:0]  adc_data            ;         // FPGA接收的音频数据
wire   [ 3:0]  key_value           ;         // 按键消抖后的输出

//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;

//例化pll_clk
pll_clk u_pll_clk(
    .areset             (~sys_rst_n  ),       // pll_clk异步复位信号
    .inclk0             (sys_clk     ),       // 输入sys_clk = 50 MHZ
    .c0                 (clk_100m    ),       // sdram 控制时钟
    .c1                 (clk_100m_shift),     // 用于提供给sdram芯片的
    .c2                 (aud_mclk    ),       // WM8978的MCLK信号（12MHz)
    .locked             (locked      )
);

//例化消抖模块
key_debounce u_key_debounce(
    .sys_clk            (sys_clk     ),       // 外部50M时钟
    .sys_rst_n          (rst_n       ),       // 复位信号，低有效
    .key                (key         ),       // 外部按键输入
    .key_flag           (),                   // 按键数据有效信号
    .key_value          (key_value   )        // 按键消抖后的数据
);

//例化WM89878控制模块
wm8978_ctrl u_wm8978_ctrl(
    //system clock
    .clk                (sys_clk    ),        // 时钟信号
    .rst_n              (rst_n      ),        // 复位信号
    //wm8978 interface
    //audio interface(master mode)
    .aud_bclk           (aud_bclk   ),        // WM8978位时钟
    .aud_lrc            (aud_lrc    ),        // 对齐信号
    .aud_adcdat         (aud_adcdat ),        // 音频输入
    .aud_dacdat         (aud_dacdat ),        // 音频输出
    //control interface
    .aud_scl            (aud_scl    ),        // WM8978的SCL信号
    .aud_sda            (aud_sda    ),        // WM8978的SDA信号
    //user interface
    .dac_data           (dac_data   ),        // 输出的音频数据
    .adc_data           (adc_data   ),        // 录音的数据
    .rx_done            (rx_done    ),        // 一次接收完成
    .tx_done            (tx_done    )         // 一次发送完成
);

//SDRAM 控制器顶层模块,封装成FIFO接口
//SDRAM 控制器地址组成: {bank_addr[1:0],row_addr[12:0],col_addr[8:0]}
sdram_top u_sdram_top(
    .ref_clk            (clk_100m),           // sdram 控制器参考时钟
    .out_clk            (clk_100m_shift),     // 用于输出的相位偏移时钟
    .rst_n              (rst_n   ),           // 系统复位，低电平有效

    //用户写端口
    .wr_clk             (aud_bclk),           // 写端口FIFO: 写时钟
    .wr_en              (wr_en   ),           // 写端口FIFO: 写使能
    .wr_data            (wr_data ),           // 写端口FIFO: 写数据
    .wr_min_addr        (24'd0   ),           // 写SDRAM的起始地址
    .wr_max_addr        (TIME_RECORD),        // 写SDRAM的结束地址
    .wr_len             (10'd512 ),           // 写SDRAM时的数据突发长度
    .wr_load            (wr_load ),           // 写端口复位: 复位写地址,清空写FIFO

    //用户读端口
    .rd_clk             (aud_bclk),           // 读端口FIFO: 读时钟
    .rd_en              (rd_en   ),           // 读端口FIFO: 读使能
    .rd_data            (rd_data ),           // 读端口FIFO: 读数据
    .rd_min_addr        (24'd0   ),           // 读SDRAM的起始地址
    .rd_max_addr        (TIME_RECORD),        // 读SDRAM的结束地址
    .rd_len             (10'd512 ),           // 从SDRAM中读数据时的突发长度
    .rd_load            (neg_play_key),       // 读端口复位: 复位读地址,清空读FIFO

     //用户控制端口
    .sdram_read_valid   (1'b1    ),           // SDRAM 读使能
    .sdram_init_done    (sdram_init_done),    // SDRAM 初始化完成标志

    //SDRAM 芯片接口
    .sdram_clk          (sdram_clk ),         // SDRAM 芯片时钟
    .sdram_cke          (sdram_cke ),         // SDRAM 时钟有效
    .sdram_cs_n         (sdram_cs_n),         // SDRAM 片选
    .sdram_ras_n        (sdram_ras_n),        // SDRAM 行有效
    .sdram_cas_n        (sdram_cas_n),        // SDRAM 列有效
    .sdram_we_n         (sdram_we_n),         // SDRAM 写有效
    .sdram_ba           (sdram_ba  ),         // SDRAM Bank地址
    .sdram_addr         (sdram_addr),         // SDRAM 行/列地址
    .sdram_data         (sdram_data),         // SDRAM 数据
    .sdram_dqm          (sdram_dqm )          // SDRAM 数据掩码
);

//例化录音控制模块
record_ctrl #(.TIME_RECORD (TIME_RECORD)
) u_record_ctrl(
    //system clock
    .clk                (aud_bclk  ),         // 时钟信号(12MHz)
    .rst_n              (rst_n     ),         // 复位信号
    //SDRAM interface
    .wr_data            (wr_data   ),         // SDRAM fifo接口写入数据
    .rd_data            (rd_data   ),         // SDRAM fifo读出的数据
    .wr_en              (wr_en     ),         // SDRAM fifo接口写入数据使能
    .wr_load            (wr_load   ),         // 写地址寄存 & fifo清空
    .rd_en              (rd_en     ),         // SDRAM fifo接口读出数据使能
    .sdram_init_done    (sdram_init_done),    // SDRAM 初始化完成信号
    //user interface
    .adc_data           (adc_data  ),         // FPGA接收的音频数据
    .dac_data           (dac_data  ),         // FPGA发送的音频数据
    .record_key         (key_value[2]),       // 消抖后的key0做为录音按键
    .play_key           (key_value[1]),       // 消抖后的key1做为播放按键
    .rx_done            (rx_done   ),         // 音频数据接收完成
    .tx_done            (tx_done   ),         // 音频数据发送完成
    .neg_play_key       (neg_play_key)        // 录音键的下降沿
);

endmodule