//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           lcd
// Last modified Date:  2018/11/2 11:12:36
// Last Version:        V1.1
// Descriptions:        RGB LCD顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/11/2 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2018/11/2 11:12:36
// Version:			    V1.1
// Descriptions:	    RGB LCD顶层模块
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd(
    input              clk     ,
    input              rst_n   ,
    //RGB LCD接口 
    output             lcd_hs  ,       //LCD 行同步信号
    output             lcd_vs  ,       //LCD 场同步信号
    output             lcd_de  ,       //LCD 数据输入使能
    inout      [15:0]  lcd_rgb ,       //LCD RGB565颜色数据
    output             lcd_bl  ,       //LCD 背光控制信号
    output             lcd_rst ,       //LCD 复位信号
    output             lcd_pclk,       //LCD 采样时钟
       
    output             clk_lcd,
    input      [15:0]  pixel_data,     //像素点数据
    output             rd_en  ,        //请求像素点颜色数据输入 

    output     [15:0]  ID_lcd          //LCD的ID
);

//*****************************************************
//**                    main code
//*****************************************************

//RGB565数据输出                 
assign lcd_rgb = lcd_de ? pixel_data : 16'dz;

//读rgb lcd ID 模块
rd_id    u_rd_id(
    .clk          (clk),
    .rst_n        (rst_n),
    
    .lcd_rgb      (lcd_rgb),
    .ID_lcd       (ID_lcd)

);

//分频模块，根据不同的LCD ID输出相应的频率的驱动时钟
clk_div  u_clk_div(
    .clk          (clk),
    .rst_n        (rst_n),
    
    .ID_lcd       (ID_lcd),
    .clk_lcd      (clk_lcd)
);

//lcd驱动模块    
lcd_driver u_lcd_driver(                      
    .lcd_clk        (clk_lcd),    
    .sys_rst_n      (rst_n),    

    .lcd_hs         (lcd_hs),       
    .lcd_vs         (lcd_vs),       
    .lcd_de         (lcd_de),       
    .lcd_bl         (lcd_bl),
    .lcd_rst        (lcd_rst),
    .lcd_pclk       (lcd_pclk),
    
    .data_req       (rd_en),                 //请求像素点颜色数据输入
    .pixel_xpos     (), 
    .pixel_ypos     (),
    .ID_lcd         (ID_lcd)
    ); 

endmodule
