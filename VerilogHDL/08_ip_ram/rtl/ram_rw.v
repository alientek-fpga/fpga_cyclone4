//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           ram_rw
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:       
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ram_rw(
    input               clk        ,  //时钟信号
    input               rst_n      ,  //复位信号，低电平有效
    
    output              ram_wr_en  ,  //ram写使能
    output              ram_rd_en  ,  //ram读使能
    output  reg  [4:0]  ram_addr   ,  //ram读写地址
    output  reg  [7:0]  ram_wr_data,  //ram写数据
    
    input        [7:0]  ram_rd_data   //ram读数据        
    );

//reg define
reg    [5:0]  rw_cnt ;                //读写控制计数器

//*****************************************************
//**                    main code
//*****************************************************

//rw_cnt计数范围在0~31,ram_wr_en为高电平;32~63时,ram_wr_en为低电平
assign  ram_wr_en = ((rw_cnt >= 6'd0) && (rw_cnt <= 6'd31))  ?  1'b1  :  1'b0;
//rw_cnt计数范围在32~63,ram_rd_en为高电平;0~31时,ram_rd_en为低电平
assign  ram_rd_en = ((rw_cnt >= 6'd32) && (rw_cnt <= 6'd63))  ?  1'b1  :  1'b0;

//读写控制计数器,计数器范围0~63
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rw_cnt <= 6'd0;    
    else if(rw_cnt == 6'd63)
        rw_cnt <= 6'd0;
    else
        rw_cnt <= rw_cnt + 6'd1;    
end    

//读写控制器计数范围：0~31 产生ram写使能信号和写数据信号
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        ram_wr_data <= 8'd0;  
    else if(rw_cnt >= 6'd0 && rw_cnt <= 6'd31)
        ram_wr_data <= ram_wr_data + 8'd1;
    else
        ram_wr_data <= 8'd0;         
end    

//读写地址信号 范围:0~31
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        ram_addr <= 5'd0;
    else if(ram_addr == 5'd31)
        ram_addr <= 5'd0;
    else
        ram_addr <= ram_addr + 1'b1; 
end

endmodule