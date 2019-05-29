//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           myram
// Last modified Date:  2019/03/08 10:04:18
// Last Version:        V1.0
// Descriptions:        自定义RAM
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/03/08 10:04:21
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module myram #(
    parameter WIDTH = 1  ,               // 数据的位宽(位数)
    parameter DEPTH = 800,               // 数据的深度(个数)
    parameter DEPBIT= 10                 // 地址的位宽
)(
    //module clock
    input                     clk  ,     // 时钟信号

    //ram interface
    input                     we   ,
    input  [DEPBIT- 1'b1:0]   waddr,
    input  [DEPBIT- 1'b1:0]   raddr,
    input  [WIDTH - 1'b1:0]   dq_i ,
    output [WIDTH - 1'b1:0]   dq_o

    //user interface
);

//reg define
reg [WIDTH - 1'b1:0] mem [DEPTH - 1'b1:0];

//*****************************************************
//**                    main code
//*****************************************************

assign dq_o = mem[raddr];

always @ (posedge clk) begin
    if(we)
        mem[waddr-1] <= dq_i;
end

endmodule




