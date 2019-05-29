//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           lcd_rgb_top
// Last modified Date:  2018/3/21 13:58:23
// Last Version:        V1.0
// Descriptions:        LCD显示模块
//                      LCD分辨率800*480,CMOS分辨率600*480,将CMOS像素数据在LCD中间位置显示
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/21 13:58:23
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_display(
    input             lcd_clk,                  //lcd驱动时钟
    input             sys_rst_n,                //复位信号
    
    input      [10:0] pixel_xpos,               //像素点横坐标
    input      [10:0] pixel_ypos,               //像素点纵坐标
    
    input      [6:0]  line_cnt,                 //频点
    input      [15:0] line_length,              //频谱数据
    output            data_req,                 //请求频谱数据
    output            wr_over,                  //绘制频谱完成
    output     [15:0] lcd_data                  //LCD像素点数据
    );    

//parameter define  
parameter  H_LCD_DISP = 11'd480;                //LCD分辨率——行
localparam BLACK  = 16'b00000_000000_00000;     //RGB565 黑色
localparam WHITE  = 16'b11111_111111_11111;     //RGB565 白色

//*****************************************************
//**                    main code
//*****************************************************

//请求像素数据信号（这里加8是为了图像居中显示）
assign data_req = ((pixel_ypos == line_cnt * 4'd4 + 4'd8 - 4'd1)
                    && (pixel_xpos == H_LCD_DISP - 1)) ? 1'b1 : 1'b0;

//在要显示图像的列，显示line_length长度的白色条纹
assign lcd_data = ((pixel_ypos == line_cnt * 4'd4 + 4'd8)
                    && (pixel_xpos <= line_length)) ? WHITE : BLACK;

//wr_over标志着一个频点上的频谱绘制完成,该信号会触发line_cnt加1
assign wr_over  = ((pixel_ypos == line_cnt * 4'd4 + 4'd8)
                    && (pixel_xpos == H_LCD_DISP - 1)) ? 1'b1 : 1'b0;

endmodule 