//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           eth_pc_loop
// Last modified Date:  2018/3/12 15:38:02
// Last Version:        V1.0
// Descriptions:        以太网通信环回顶层
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/12 15:38:04
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module eth_pc_loop(
    input              sys_rst_n   ,    //系统复位信号，低电平有效 
    //以太网接口   
    input              eth_rx_clk  ,    //MII接收数据时钟
    input              eth_rxdv    ,    //MII输入数据有效信号
    input       [3:0]  eth_rx_data ,    //MII输入数据
    input              eth_tx_clk  ,    //MII发送数据时钟    
    output             eth_tx_en   ,    //MII输出数据有效信号
    output      [3:0]  eth_tx_data ,    //MII输出数据          
    output             eth_rst_n        //以太网芯片复位信号，低电平有效   
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter  BOARD_MAC = 48'h00_11_22_33_44_55;     
//开发板IP地址 192.168.1.123       
parameter  BOARD_IP  = {8'd192,8'd168,8'd1,8'd123};  
//目的MAC地址 ff_ff_ff_ff_ff_ff
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;    
//目的IP地址 192.168.1.102     
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102};  

//wire define
wire            rec_pkt_done;           //以太网单包数据接收完成信号
wire            rec_en      ;           //以太网接收的数据使能信号
wire   [31:0]   rec_data    ;           //以太网接收的数据
wire   [15:0]   rec_byte_num;           //以太网接收的有效字节数 单位:byte 
wire            tx_done     ;           //以太网发送完成信号
wire            tx_req      ;           //读数据请求信号  

wire            tx_start_en ;           //以太网开始发送信号
wire   [31:0]   tx_data     ;           //以太网待发送数据 

//*****************************************************
//**                    main code
//*****************************************************

//UDP模块
udp                                     //参数例化        
   #(
    .BOARD_MAC       (BOARD_MAC),
    .BOARD_IP        (BOARD_IP ),
    .DES_MAC         (DES_MAC  ),
    .DES_IP          (DES_IP   )
    )
   u_udp(
    .eth_rx_clk      (eth_rx_clk  ),           
    .rst_n           (sys_rst_n   ),       
    .eth_rxdv        (eth_rxdv    ),         
    .eth_rx_data     (eth_rx_data ),                   
    .eth_tx_clk      (eth_tx_clk  ),           
    .tx_start_en     (tx_start_en ),        
    .tx_data         (tx_data     ),         
    .tx_byte_num     (rec_byte_num),    
    .tx_done         (tx_done     ),        
    .tx_req          (tx_req      ),          
    .rec_pkt_done    (rec_pkt_done),    
    .rec_en          (rec_en      ),     
    .rec_data        (rec_data    ),         
    .rec_byte_num    (rec_byte_num),            
    .eth_tx_en       (eth_tx_en   ),         
    .eth_tx_data     (eth_tx_data ),             
    .eth_rst_n       (eth_rst_n   )     
    ); 

//脉冲信号同步处理模块
pulse_sync_pro u_pulse_sync_pro(
    .clk_a          (eth_rx_clk),
    .rst_n          (sys_rst_n),
    .pulse_a        (rec_pkt_done),
    .clk_b          (eth_tx_clk),
    .pulse_b        (tx_start_en)
    );

//fifo模块，用于缓存单包数据
async_fifo_2048x32b u_fifo_2048x32b(
    .aclr        (~sys_rst_n),
    .data        (rec_data  ),          //fifo写数据
    .rdclk       (eth_tx_clk),
    .rdreq       (tx_req    ),          //fifo读使能 
    .wrclk       (eth_rx_clk),          
    .wrreq       (rec_en    ),          //fifo写使能
    .q           (tx_data   ),          //fifo读数据 
    .rdempty     (),
    .wrfull      ()
    );

endmodule