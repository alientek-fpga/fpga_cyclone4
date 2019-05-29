//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           clk_div
// Last modified Date:  2018/11/2 11:12:36
// Last Version:        V1.0
// Descriptions:        时钟分频模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/1 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/11/2 11:12:36
// Version:			    V1.1
// Descriptions:	    时钟分频模块
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module clk_div(
    input                 clk    ,
    input                 rst_n  ,
    input  [15:0]         ID_lcd , //LCD的ID
    output reg            clk_lcd  //驱动LCD的时钟

);

//parameter define
parameter  ID_4342 =  0;
parameter  ID_7084 =  1;
parameter  ID_7016 =  2;
parameter  ID_1018 =  5;

//wire define 
wire  clk_33m;

//reg define 
reg  [1:0]  state_33m_0;
reg  [1:0]  state_33m_1;
reg  [2:0]  cnt_10m;
reg         clk_50m;
reg         clk_10m;

//*****************************************************
//**                    main code
//*****************************************************

//50m hz时钟分频
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        clk_50m <= 1'b0;
    else 
        clk_50m <= ~ clk_50m ;
end 

//33.3m hz时钟分频
always @ (posedge clk ) begin 
    case (state_33m_0)
        2'b00 : state_33m_0 <= 2'b01;
        2'b01 : state_33m_0 <= 2'b10;
        2'b10 : state_33m_0 <= 2'b00;
    default : state_33m_0 <= 2'b00;
    endcase
end 

always @ (negedge clk ) begin 
    case (state_33m_1)
        2'b00 : state_33m_1 <= 2'b01;
        2'b01 : state_33m_1 <= 2'b10;
        2'b10 : state_33m_1 <= 2'b00;
    default : state_33m_1 <= 2'b00;
    endcase
end 

assign clk_33m = state_33m_0[1] | state_33m_1[1];

//10m hz时钟分频
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_10m  <= 3'd0;
    else if(cnt_10m == 3'd4)
        cnt_10m <= 3'd0;
    else 
        cnt_10m <= cnt_10m + 1'b1;
end 

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        clk_10m <= 1'b0;
    else if(cnt_10m == 3'd4)
        clk_10m <= ~ clk_10m;
    else
        clk_10m <= clk_10m;
end 
            
//选择输出的时钟
always @ ( * ) begin
    case(ID_lcd)
        ID_4342: clk_lcd = clk_10m;
        ID_7084: clk_lcd = clk_33m;
        ID_7016: clk_lcd = clk_50m;
        ID_1018: clk_lcd = clk_50m;
    default : clk_lcd = clk_10m;
    endcase
end 

endmodule 