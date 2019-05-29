//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           rs485_uart_top
// Last modified Date:  2018/4/24 9:56:36
// Last Version:        V1.1
// Descriptions:        两个板卡通过RS485串口通信
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/4/24 9:56:36
// Version:			    V1.1
// Descriptions:	    一个板卡上的按键控制另外一个板卡上LED灯的亮灭
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module rs485_uart_top(
    input           sys_clk,           //外部50M时钟
    input           sys_rst_n,         //外部复位信号，低有效
    
    input  [3:0]    key,               //按键
    output [3:0]    led,               //led灯
    //uart接口
    input           rs485_uart_rxd,    //rs485串口接收端口
    output          rs485_uart_txd,    //rs485串口发送端口
    output          rs485_tx_en        //rs485发送使能，高有效
    );
    
//parameter define
parameter  CLK_FREQ = 50000000;        //定义系统时钟频率
parameter  UART_BPS = 115200;          //定义串口波特率
    
//wire define   
wire       tx_en_w;                    //UART发送使能
wire       rx_done_w;                  //UART接收完毕信号
wire [7:0] tx_data_w;                  //UART发送数据
wire [7:0] rx_data_w;                  //UART接收数据
wire [3:0] key_value_w;                //消抖后的按键数据

//*****************************************************
//**                    main code
//*****************************************************   
assign tx_data_w = {4'd0,key_value_w}; //将按键消抖后的值送到发送模块

uart_recv #(                           //串口接收模块
    .CLK_FREQ       (CLK_FREQ),        //设置系统时钟频率
    .UART_BPS       (UART_BPS))        //设置串口接收波特率
u_uart_recv(                 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .uart_rxd       (rs485_uart_rxd),
    .uart_done      (rx_done_w),
    .uart_data      (rx_data_w)
    );
    
uart_send #(                           //串口发送模块
    .CLK_FREQ       (CLK_FREQ),        //设置系统时钟频率
    .UART_BPS       (UART_BPS))        //设置串口发送波特率
u_uart_send(                 
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
     
    .uart_en        (tx_en_w),
    .uart_din       (tx_data_w),
    .uart_txd       (rs485_uart_txd),
    .tx_flag        (rs485_tx_en)      //rs485串口发送使能，高有效  
    );
    
key_debounce u_key_debounce(
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .key            (key),
    .key_flag       (tx_en_w),         //按键有效通知信号
    .key_value      (key_value_w)      //按键消抖后的数据
    );
    
led_ctrl u_led_ctrl(
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n),
    
    .led_en         (rx_done_w),       //led控制使能
    .led_data       (rx_data_w[3:0]),  //led控制数据
    .led            (led)
);

endmodule 