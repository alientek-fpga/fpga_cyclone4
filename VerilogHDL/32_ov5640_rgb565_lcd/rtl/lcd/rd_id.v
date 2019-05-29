//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           rd_id
// Last modified Date:  2018/11/2 11:12:36
// Last Version:        V1.1
// Descriptions:        读RGB LCD 的ID
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
// Descriptions:	    读RGB LCD 的ID
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module rd_id(
    input              clk    ,
    input              rst_n  ,
    input      [15:0]  lcd_rgb,   //像素点数据
    
    output reg [15:0]  ID_lcd 
);

//reg define
reg   ID_rd_en;

//*****************************************************
//**                    main code
//*****************************************************

//通过读r、g、b信号的最高位来获取LCD的ID
always @(posedge clk or negedge rst_n) begin         
    if (!rst_n) begin
        ID_lcd   <= 16'd0;
        ID_rd_en <= 1'b0;
    end 
    else if(!ID_rd_en) begin 
        ID_lcd   <= {13'b0,lcd_rgb[4],lcd_rgb[10],lcd_rgb[15]};
        ID_rd_en <= 1'b1;
    end
    else 
        ID_lcd <= ID_lcd;
end 

endmodule 