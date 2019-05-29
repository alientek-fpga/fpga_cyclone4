//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           pulse_sync_pro
// Last modified Date:  2018/3/14 17:04:35
// Last Version:        V1.0
// Descriptions:        脉冲信号跨时钟域处理
//                      支持慢时钟域信号到快时钟域信号和快时钟域信号到慢时钟域信号
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/14 17:04:35
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module pulse_sync_pro(
    input      clk_a  ,    //输入时钟A
    input      rst_n  ,    //复位信号
    input      pulse_a,    //输入脉冲A
    input      clk_b  ,    //输入时钟B
    output     pulse_b     //输出脉冲B
);

//reg define
reg      pulse_inv    ;    //脉冲信号转换成电平信号
reg      pulse_inv_d0 ;    //时钟B下打拍
reg      pulse_inv_d1 ;
reg      pulse_inv_d2 ;

//*****************************************************
//**                    main code
//*****************************************************

assign pulse_b = pulse_inv_d1 ^ pulse_inv_d2 ;

//输入脉冲转成电平信号，确保时钟B可以采到
always @(posedge clk_a or negedge rst_n) begin
    if(rst_n==1'b0)
        pulse_inv <= 1'b0 ;
    else if(pulse_a)
        pulse_inv <= ~pulse_inv;
end

//A时钟下电平信号转成时钟B下的脉冲信号
always @(posedge clk_b or negedge rst_n) begin
    if(rst_n==1'b0) begin
        pulse_inv_d0 <= 1'b0;
        pulse_inv_d1 <= 1'b0;
        pulse_inv_d2 <= 1'b0;
    end
    else begin
        pulse_inv_d0 <= pulse_inv   ;
        pulse_inv_d1 <= pulse_inv_d0;
        pulse_inv_d2 <= pulse_inv_d1;
    end
end

endmodule