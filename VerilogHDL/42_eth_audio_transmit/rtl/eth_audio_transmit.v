//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           eth_audio_transmit
// Last modified Date:  2018/3/29 19:24:08
// Last Version:        V1.0  
// Descriptions:        基于以太网的板对板音频互传
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/29 19:24:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module eth_audio_transmit(
    input              sys_clk     ,    //系统时钟  
    input              sys_rst_n   ,    //系统复位信号，低电平有效 
    //以太网接口
    input              eth_rx_clk  ,    //MII接收数据时钟
    input              eth_rxdv    ,    //MII输入数据有效信号
    input              eth_tx_clk  ,    //MII发送数据时钟
    input       [3:0]  eth_rx_data ,    //MII输入数据
    output             eth_tx_en   ,    //MII输出数据有效信号
    output      [3:0]  eth_tx_data ,    //MII输出数据          
    output             eth_rst_n   ,    //以太网芯片复位信号，低电平有效   
    //wm8978 interface
    //audio interface(master mode)
    input              aud_bclk    ,    // WM8978位时钟
    input              aud_lrc     ,    // 对齐信号
    input              aud_adcdat  ,    // 音频输入
    output             aud_mclk    ,    // WM8978的主时钟(最大为12.288MHz)
    output             aud_dacdat  ,    // 音频输出
    //control interface            
    output             aud_scl     ,    // WM8978的SCL信号
    inout              aud_sda          // WM8978的SDA信号
    );

//parameter define
//这里DES_IP=BOARD_IP,这样两块开发板可以用同一个程序实现互传音频播放
//开发板MAC地址 00-11-22-33-44-55
parameter  BOARD_MAC = 48'h00_11_22_33_44_55;     
//开发板IP地址 192.168.1.123       
parameter  BOARD_IP  = {8'd192,8'd168,8'd1,8'd123};  
//目的MAC地址 ff_ff_ff_ff_ff_ff
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;    
//目的IP地址 192.168.1.102     
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd123};  
//wire define
wire            rst_n           ;
wire            locked          ;
                                
wire            aud_rx_done     ;     //音频数据接收完成信号
wire   [31:0]   adc_data        ;     //接收到的音频数据
wire            udp_tx_start_en ;     //以太网开始发送信号
wire   [15:0]   udp_tx_byte_num ;     //以太网发送的有效字节数
wire   [31:0]   udp_tx_data     ;     //以太网发送的数据    
wire            udp_rec_pkt_done;     //以太网单包数据接收完成信号
wire            udp_rec_en      ;     //以太网接收使能信号
wire   [31:0]   udp_rec_data    ;     //以太网接收到的数据
wire            udp_tx_req      ;     //以太网发送请求数据信号
wire            udp_tx_done     ;     //以太网发送完成信号
wire            aud_tx_done     ;     //音频发送完成信号
wire   [31:0]   dac_data        ;     //音频dac数据           

//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;

//锁相环
pll_clk u_pll_clk(
    .inclk0     (sys_clk),
    .areset     (~sys_rst_n),
    .c0         (aud_mclk),
    .locked     (locked) 
    ); 

//WM8978模块
wm8978_ctrl 
   #(
    .WL                 (6'd32      )  //word length音频字长定义
    )            
    u_wm8978_ctrl(
    //system clock
    .clk                (sys_clk    ),     
    .rst_n              (rst_n      ),      
    //wm8978 interface
    //audio interface(master mode)
    .aud_bclk           (aud_bclk   ),       
    .aud_lrc            (aud_lrc    ),      
    .aud_adcdat         (aud_adcdat ),      
    .aud_dacdat         (aud_dacdat ),     
    //control interface
    .aud_scl            (aud_scl    ),     
    .aud_sda            (aud_sda    ),        
    //user interface
    .dac_data           (dac_data   ),      
    .adc_data           (adc_data   ),    
    .rx_done            (aud_rx_done),      
    .tx_done            (aud_tx_done)       
);

//音频缓存发送控制
audio_cache_tx_ctrl u_audio_cache_tx_ctrl(
    .aud_bclk          (aud_bclk),
    .rst_n             (rst_n),
    .aud_rx_done       (aud_rx_done),
    .aud_adc_data      (adc_data),
    .eth_tx_clk        (eth_tx_clk),
    .udp_tx_req        (udp_tx_req),
    .udp_tx_done       (udp_tx_done),
    .udp_tx_start_en   (udp_tx_start_en),
    .udp_tx_byte_num   (udp_tx_byte_num),
    .udp_tx_data       (udp_tx_data)
    );

//UDP模块
udp                                          
   #(
    .BOARD_MAC       (BOARD_MAC),     //参数例化
    .BOARD_IP        (BOARD_IP ),
    .DES_MAC         (DES_MAC  ),
    .DES_IP          (DES_IP   )
    )
   u_udp(
    .eth_rx_clk      (eth_rx_clk ),
    .rst_n           (rst_n      ),
    .eth_rxdv        (eth_rxdv   ),
    .eth_rx_data     (eth_rx_data),
    .eth_tx_clk      (eth_tx_clk ),
    .tx_start_en     (udp_tx_start_en),
    .tx_data         (udp_tx_data),
    .tx_byte_num     (udp_tx_byte_num),
    .tx_done         (udp_tx_done),
    .tx_req          (udp_tx_req ),
    .rec_pkt_done    (udp_rec_pkt_done),
    .rec_en          (udp_rec_en),
    .rec_data        (udp_rec_data),
    .rec_byte_num    (),
    .eth_tx_en       (eth_tx_en  ),
    .eth_tx_data     (eth_tx_data),
    .eth_rst_n       (eth_rst_n  ) 
    ); 

//音频缓存接收控制
audio_cache_rx_ctrl u_audio_cache_rx_ctrl(
    .eth_rx_clk          (eth_rx_clk),
    .rst_n               (rst_n),
    .udp_rec_pkt_done    (udp_rec_pkt_done),
    .udp_rec_en          (udp_rec_en),
    .udp_rec_data        (udp_rec_data),           
    .aud_bclk            (aud_bclk),
    .aud_dac_req         (aud_tx_done),  
    .dac_data            (dac_data)
    );   

endmodule