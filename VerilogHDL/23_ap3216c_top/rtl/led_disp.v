//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           led_disp
// Last modified Date:  2018/05/10 16:48:59
// Last Version:        V1.0
// Descriptions:        数据大小决定led灯显示的个数
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/05/10 16:49:07
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module led_disp(
    //system clock
    input                          clk  ,     // 时钟信号
    input                          rst_n,     // 复位信号

    //led interface
    output   reg   [3:0]           led  ,     // led灯接口

    //user interface
    input          [9:0]           data       // 数据
);

//*****************************************************
//**                    main code
//*****************************************************

//led灯亮灭个数显示数据大小
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        led <=  4'd0;
    end
    else if(data < 10'd16)
        led <= 4'b0001;
    else if(data < 10'd128)
        led <= 4'b0011;
    else if(data < 10'd512)
        led <= 4'b0111;
    else
        led <= 4'b1111;
end

endmodule