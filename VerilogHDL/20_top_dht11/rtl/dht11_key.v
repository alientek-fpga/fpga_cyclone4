//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           dht11_key
// Last modified Date:  2018-04-08 17:55:53
// Last Version:        V1.0
// Descriptions:        按键控制温湿度显示模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018-04-08 17:55:53
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:         正点原子
// Modified date:       
// Version:             
// Descriptions:        
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module dht11_key(
    input             sys_clk,
    input             sys_rst_n,
    
    input             key_flag,
    input             key_value,
    input      [31:0] data_valid,
    
    output     [31:0] data,
    output reg        sign,
    output            en,                     
    output     [ 5:0] point
);

//reg define                            
reg       flag ; // 温/湿度标志信号
reg [7:0] data0; // 小数部分
reg [7:0] data1; // 整数部分

//*****************************************************
//**                    main code
//*****************************************************

//数码管使能信号
assign en    = 1'b1;

//显示的数值为 (整数 + 0.1*小数)*100
assign data  = data1 * 100 + data0*10;

//小数点左移两位
assign point = 6'b000100;

//检测到按键按下时，切换温/湿度标志信号
always @ (posedge sys_clk or negedge sys_rst_n) begin 
    if(!sys_rst_n)                                    
        flag <= 1'b0;
    else if (key_flag & (~key_value))
        flag <= ~flag;
end 

//flag为“0”时显示温度，为“1”时显示湿度
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        data0 <= 8'd0;
        data1 <= 8'd0;
        sign  <= 1'b0;
    end
    else if(flag == 1'b0) begin
        data0 <= data_valid[6:0];  //温度小数部分最高位为符号位
        data1 <= data_valid[15:8];
        if(data_valid[7])
            sign <= 1'b1;          //bit7为1表示负温度
        else
            sign <= 1'b0;
    end
    else begin
        data0 <= data_valid[23:16];
        data1 <= data_valid[31:24];
        sign  <= 1'b0;
    end
end

endmodule 