//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           seg_led_static
// Last modified Date:  2018/3/9 14:21:12
// Last Version:        V1.0
// Descriptions:        数码管静态显示模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/9 14:21:04
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module seg_led_static (
    input               clk     ,   // 时钟信号
    input               rst_n   ,   // 复位信号（低有效）

    input               add_flag,   // 数码管变化的通知信号
    output  reg  [5:0]  sel     ,   // 数码管位选
    output  reg  [7:0]  seg_led     // 数码管段选
);

//reg define
reg [3:0] num;                      // 数码管显示的十六进制数

//*****************************************************
//**                    main code
//*****************************************************

//控制数码管位选信号（低电平有效），选中所有的数码管
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        sel <= 6'b111111;
    else
        sel <= 6'b000000;
end

//每次通知信号到达时，数码管显示的十六进制数值加1
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        num <= 4'h0;
    else if(add_flag) begin
        if (num < 4'hf)
            num <= num + 1'b1;
        else
            num <= 4'h0;
    end
    else
        num <= num;
end

//根据数码管显示的数值，控制段选信号
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        seg_led <= 8'b0;
    else begin
        case (num)
            4'h0 :    seg_led <= 8'b1100_0000;
            4'h1 :    seg_led <= 8'b1111_1001;
            4'h2 :    seg_led <= 8'b1010_0100;
            4'h3 :    seg_led <= 8'b1011_0000;
            4'h4 :    seg_led <= 8'b1001_1001;
            4'h5 :    seg_led <= 8'b1001_0010;
            4'h6 :    seg_led <= 8'b1000_0010;
            4'h7 :    seg_led <= 8'b1111_1000;
            4'h8 :    seg_led <= 8'b1000_0000;
            4'h9 :    seg_led <= 8'b1001_0000;
            4'ha :    seg_led <= 8'b1000_1000;
            4'hb :    seg_led <= 8'b1000_0011;
            4'hc :    seg_led <= 8'b1100_0110;
            4'hd :    seg_led <= 8'b1010_0001;
            4'he :    seg_led <= 8'b1000_0110;
            4'hf :    seg_led <= 8'b1000_1110;
            default : seg_led <= 8'b1100_0000;
        endcase
    end
end

endmodule 