//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           sd_read_photo
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        SD卡读取图片
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module sd_read_photo(
    input                clk           ,  //时钟信号
    input                rst_n         ,  //复位信号,低电平有效
    
    input                rd_busy       ,  //SD卡读忙信号
    output  reg          rd_start_en   ,  //开始写SD卡数据信号
    output  reg  [31:0]  rd_sec_addr      //读数据扇区地址
    );

//parameter define                          
parameter PHOTO_SECTION_ADDR0 = 32'd8256; //第一张图片扇区起始地址
parameter PHOTO_SECTION_ADDR1 = 32'd9792; //第二张图片扇区起始地址
//800*480/256 = 1500
parameter  RD_SECTION_NUM     = 11'd1500; //单张图片总共读出的次数  

//reg define
reg    [1:0]          rd_flow_cnt      ;  //读数据流程控制计数器
reg    [10:0]         rd_sec_cnt       ;  //读扇区次数计数器
reg                   rd_addr_sw       ;  //读两张图片切换
reg    [25:0]         delay_cnt        ;  //延时切换图片计数器

reg                   rd_busy_d0       ;  //读忙信号打拍，用来采下降沿
reg                   rd_busy_d1       ;  

//wire define
wire                  neg_rd_busy      ;  //SD卡读忙信号下降沿

//*****************************************************
//**                    main code
//*****************************************************

assign  neg_rd_busy = rd_busy_d1 & (~rd_busy_d0);

//对rd_busy信号进行延时打拍,用于采rd_busy信号的下降沿
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        rd_busy_d0 <= 1'b0;
        rd_busy_d1 <= 1'b0;
    end
    else begin
        rd_busy_d0 <= rd_busy;
        rd_busy_d1 <= rd_busy_d0;
    end
end

//循环读取SD卡中的两张图片（读完之后延时1s再读下一个）
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rd_flow_cnt <= 2'd0;
        rd_addr_sw <= 1'b0;
        rd_sec_cnt <= 11'd0;
        rd_start_en <= 1'b0;
        rd_sec_addr <= 32'd0;
    end
    else begin
        rd_start_en <= 1'b0;
        case(rd_flow_cnt)
            2'd0 : begin
                //开始读取SD卡数据
                rd_flow_cnt <= rd_flow_cnt + 2'd1;
                rd_start_en <= 1'b1;
                rd_addr_sw <= ~rd_addr_sw;                     //读数据地址切换
                if(rd_addr_sw == 1'b0)
                    rd_sec_addr <= PHOTO_SECTION_ADDR0;
                else
                    rd_sec_addr <= PHOTO_SECTION_ADDR1;    
            end
            2'd1 : begin
                //读忙信号的下降沿代表读完一个扇区,开始读取下一扇区地址数据
                if(neg_rd_busy) begin                          
                    rd_sec_cnt <= rd_sec_cnt + 11'd1;
                    rd_sec_addr <= rd_sec_addr + 32'd1;
					//单张图片读完
                    if(rd_sec_cnt == RD_SECTION_NUM - 11'b1) begin 
                        rd_sec_cnt <= 11'd0;
                        rd_flow_cnt <= rd_flow_cnt + 2'd1;
                    end    
                    else
                        rd_start_en <= 1'b1;                   
                end                    
            end
            2'd2 : begin
                delay_cnt <= delay_cnt + 26'd1;                //单张图片读完后延时1秒
                if(delay_cnt == 26'd50_000_000 - 26'd1) begin  //50_000_000*20ns = 1s
                    delay_cnt <= 26'd0;
                    rd_flow_cnt <= 2'd0;
                end 
            end    
            default : ;
        endcase    
    end
end

endmodule
