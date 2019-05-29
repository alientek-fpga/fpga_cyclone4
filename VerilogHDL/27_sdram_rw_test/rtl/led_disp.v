//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           led_disp
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        LED显示模块，利用LED灯指示SDRAM读写测试的结果
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module led_disp(
    input      clk_50m,     //系统时钟
    input      rst_n,       //系统复位
    
    input      error_flag,  //错误标志信号
    output reg led          //LED灯             
    );

//reg define
reg [24:0] led_cnt;         //控制LED闪烁周期的计数器

//*****************************************************
//**                    main code
//***************************************************** 

//计数器对50MHz时钟计数，计数周期为0.5s
always @(posedge clk_50m or negedge rst_n) begin
    if(!rst_n)
        led_cnt <= 25'd0;
    else if(led_cnt < 25'd25000000) 
        led_cnt <= led_cnt + 25'd1;
    else
        led_cnt <= 25'd0;
end

//利用LED灯不同的显示状态指示错误标志的高低
always @(posedge clk_50m or negedge rst_n) begin
    if(rst_n == 1'b0)
        led <= 1'b0;
    else if(error_flag) begin
        if(led_cnt == 25'd25000000) 
            led <= ~led;    //错误标志为高时，LED灯每隔0.5s闪烁一次
        else
            led <= led;
    end    
    else
        led <= 1'b1;        //错误标志为低时，LED灯常亮
end

endmodule 