//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                
//----------------------------------------------------------------------------------------
// File name:           seg_led
// Last modified Date:  2018/6/8 9:26:44
// Last Version:        V1.0
// Descriptions:        数码管显示模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/6/8 9:26:47
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:       正点原子
// Modified date:     
// Version:         
// Descriptions:      
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module seg_led(
    input                  sys_clk     ,     //系统时钟 
    input                  sys_rst_n   ,     //系统复位 
    input        [5:0]     ew_time     ,     //东西方向数码管要显示的数值
    input        [5:0]     sn_time     ,     //南北方向数码管要显示数值
    input                  en          ,     //数码管使能信号                                                             
    output  reg  [3:0]     sel         ,     //数码管位选信号
    output  reg  [7:0]     seg_led           //数码管段选信号,包含小数点
);

//parameter define
parameter  WIDTH = 50_000;                   //计数1ms的计数深度

//reg define 
reg    [15:0]             cnt_1ms;           //计数1ms的计数器
reg    [1:0]              cnt_state;         //用于切换要点亮数码管
reg    [3:0]              num;               //数码管要显示的数据

//wire define
wire   [3:0]              data_ew_0;         //东西方向数码管的十位
wire   [3:0]              data_ew_1;         //东西方向数码管的各位
wire   [3:0]              data_sn_0;         //南北方向数码管的十位
wire   [3:0]              data_sn_1;         //南北方向数码管的各位

//*****************************************************
//**                    main code                      
//*****************************************************
assign  data_ew_0   = ew_time / 10;          //取出东西向时间数据的十位
assign  data_ew_1   = ew_time % 10;          //取出东西向时间数据的个位
assign  data_sn_0   = sn_time / 10;          //取出南北向时间数据的十位
assign  data_sn_1   = sn_time % 10;          //取出南北向时间数据的个位

//计数1ms
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        cnt_1ms <= 15'b0;
    else if (cnt_1ms < WIDTH - 1'b1)
        cnt_1ms <= cnt_1ms + 1'b1;
    else
        cnt_1ms <= 15'b0;
end 

//计数器，用来切换数码管点亮的4个状态
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        cnt_state <= 2'd0;
    else  if (cnt_1ms == WIDTH - 1'b1)
        cnt_state <= cnt_state + 1'b1;
    else
        cnt_state <= cnt_state;
end 

//先显示东西方向数码管的十位，然后是个位。再显示南北方向数码管的十位，然后个位
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        sel  <= 4'b1111;
        num  <= 4'b0;
    end 
    else if(en) begin       
        case (cnt_state) 
            3'd0 : begin     
                sel <= 4'b1110;              //驱动东西方向数码管的十位  
                num <= data_ew_0;
            end       
            3'd1 : begin     
                sel <= 4'b1101;              //驱动东西方向数码管的个位
                num <= data_ew_1;
            end 
            3'd2 : begin 
                sel <= 4'b1011;              //驱动南北方向数码管的十位
                num  <= data_sn_0;
            end
            3'd3 : begin 
                sel <= 4'b0111;              //驱动南北方向数码管的个位
                num  <= data_sn_1 ;    
            end
            default : begin     
                sel <= 4'b1111;                     
                num <= 4'b0;
            end 
        endcase
    end
    else  begin
          sel <= 4'b1111;
          num <= 4'b0;    
    end
end 

//数码管要显示的数值所对应的段选信号      
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) 
        seg_led <= 8'b0; 
    else begin
        case (num)              
            4'd0 :     seg_led <= 8'b1100_0000;                                                        
            4'd1 :     seg_led <= 8'b1111_1001;                            
            4'd2 :     seg_led <= 8'b1010_0100;                            
            4'd3 :     seg_led <= 8'b1011_0000;                            
            4'd4 :     seg_led <= 8'b1001_1001;                            
            4'd5 :     seg_led <= 8'b1001_0010;                            
            4'd6 :     seg_led <= 8'b1000_0010;                            
            4'd7 :     seg_led <= 8'b1111_1000;      
            4'd8 :     seg_led <= 8'b1000_0000;      
            4'd9 :     seg_led <= 8'b1001_0000;    
            default :  seg_led <= 8'b1100_0000;
        endcase
    end 
end
 
endmodule