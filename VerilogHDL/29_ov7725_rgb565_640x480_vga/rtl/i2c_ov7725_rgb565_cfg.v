//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           i2c_ov7725_rgb565_cfg
// Last modified Date:  2018/3/21 14:26:05
// Last Version:        V1.0
// Descriptions:        i2c配置
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/21 14:26:05
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module i2c_ov7725_rgb565_cfg(  
    input                clk      ,  //时钟信号
    input                rst_n    ,  //复位信号，低电平有效
    
    input                i2c_done ,  //I2C寄存器配置完成信号
    output  reg          i2c_exec ,  //I2C触发执行信号   
    output  reg  [15:0]  i2c_data ,  //I2C要配置的地址与数据(高8位地址,低8位数据)
    output  reg          init_done   //初始化完成信号
    );

//parameter define
parameter  REG_NUM = 7'd70   ;       //总共需要配置的寄存器个数

//reg define
reg    [9:0]   start_init_cnt;       //等待延时计数器
reg    [6:0]   init_reg_cnt  ;       //寄存器配置个数计数器

//*****************************************************
//**                    main code
//*****************************************************

//cam_scl配置成250khz,输入的clk为1Mhz,周期为1us,1023*1us = 1.023ms
//寄存器延时配置
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        start_init_cnt <= 10'b0;    
    else if((init_reg_cnt == 7'd1) && i2c_done)
        start_init_cnt <= 10'b0;
    else if(start_init_cnt < 10'd1023) begin
        start_init_cnt <= start_init_cnt + 1'b1;                    
    end
end

//寄存器配置个数计数    
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        init_reg_cnt <= 7'd0;
    else if(i2c_exec)   
        init_reg_cnt <= init_reg_cnt + 7'b1;
end         

//i2c触发执行信号   
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        i2c_exec <= 1'b0;
    else if(start_init_cnt == 10'd1022)
        i2c_exec <= 1'b1;
    //只有刚上电和配置第一个寄存器增加延时
    else if(i2c_done && (init_reg_cnt != 7'd1) && (init_reg_cnt < REG_NUM))
        i2c_exec <= 1'b1;
    else
        i2c_exec <= 1'b0;    
end 

//初始化完成信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        init_done <= 1'b0;
    else if((init_reg_cnt == REG_NUM) && i2c_done)  
        init_done <= 1'b1;  
end        
   
//配置寄存器地址与数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        i2c_data <= 16'b0;
    else begin
        case(init_reg_cnt)
            //先对寄存器进行软件复位，使寄存器恢复初始值
            //寄存器软件复位后，需要延时1ms才能配置其它寄存器
            7'd0  : i2c_data <= {8'h12, 8'h80}; //COM7 BIT[7]:复位所有的寄存器
            7'd1  : i2c_data <= {8'h3d, 8'h03}; //COM12 模拟过程直流补偿
            7'd2  : i2c_data <= {8'h15, 8'h00}; //COM10 href/vsync/pclk/data信号控制
            7'd3  : i2c_data <= {8'h17, 8'h26}; //HSTART 水平起始位置
            7'd4  : i2c_data <= {8'h18, 8'ha0}; //HSIZE 水平尺寸
            7'd5  : i2c_data <= {8'h19, 8'h07}; //VSTRT 垂直起始位置
            7'd6  : i2c_data <= {8'h1a, 8'hf0}; //VSIZE 垂直尺寸            
            7'd7  : i2c_data <= {8'h32, 8'h00}; //HREF 图像开始和尺寸控制，控制低位
            7'd8  : i2c_data <= {8'h29, 8'ha0}; //HOutSize 水平输出尺寸
            7'd9  : i2c_data <= {8'h2a, 8'h00}; //EXHCH 虚拟像素MSB
            7'd10 : i2c_data <= {8'h2b, 8'h00}; //EXHCL 虚拟像素LSB
            7'd11 : i2c_data <= {8'h2c, 8'hf0}; //VOutSize 垂直输出尺寸
            7'd12 : i2c_data <= {8'h0d, 8'h41}; //COM4 PLL倍频设置(multiplier)
                                                //Bit[7:6]:  0:1x 1:4x 2:6x 3:8x
            7'd13 : i2c_data <= {8'h11, 8'h00}; //CLKRC 内部时钟配置 
                                                //Freq=multiplier/[(CLKRC[5:0]+1)*2]
            7'd14 : i2c_data <= {8'h12, 8'h06}; //COM7 输出VGA RGB565格式                                     
            7'd15 : i2c_data <= {8'h0c, 8'h10}; //COM3 Bit[0]: 0:图像数据 1:彩条测试
            //DSP 控制
            7'd16 : i2c_data <= {8'h42, 8'h7f}; //TGT_B 黑电平校准蓝色通道目标值
            7'd17 : i2c_data <= {8'h4d, 8'h09}; //FixGain 模拟增益放大器
            7'd18 : i2c_data <= {8'h63, 8'hf0}; //AWB_Ctrl0 自动白平衡控制字节0
            7'd19 : i2c_data <= {8'h64, 8'hff}; //DSP_Ctrl1 DSP控制字节1
            7'd20 : i2c_data <= {8'h65, 8'h00}; //DSP_Ctrl2 DSP控制字节2
            7'd21 : i2c_data <= {8'h66, 8'h00}; //DSP_Ctrl3 DSP控制字节3
            7'd22 : i2c_data <= {8'h67, 8'h00}; //DSP_Ctrl4 DSP控制字节4    
            //AGC AEC AWB        
            //COM8 Bit[2]:自动增益使能 Bit[1]:自动白平衡使能 Bit[0]:自动曝光功能
            7'd23 : i2c_data <= {8'h13, 8'hff}; //COM8 
            7'd24 : i2c_data <= {8'h0f, 8'hc5}; //COM6
            7'd25 : i2c_data <= {8'h14, 8'h11};  
            7'd26 : i2c_data <= {8'h22, 8'h98}; 
            7'd27 : i2c_data <= {8'h23, 8'h03};  
            7'd28 : i2c_data <= {8'h24, 8'h40}; 
            7'd29 : i2c_data <= {8'h25, 8'h30};  
            7'd30: i2c_data <= {8'h26, 8'ha1};      
            7'd31: i2c_data <= {8'h6b, 8'haa}; 
            7'd32: i2c_data <= {8'h13, 8'hff};  
            //matrix sharpness brightness contrast UV
            7'd33 : i2c_data <= {8'h90, 8'h0a}; //EDGE1 边缘增强控制1
            //DNSOff 降噪阈值下限,仅在自动模式下有效
            7'd34 : i2c_data <= {8'h91, 8'h01}; //DNSOff 
            7'd35 : i2c_data <= {8'h92, 8'h01}; //EDGE2 锐度(边缘增强)强度上限
            7'd36 : i2c_data <= {8'h93, 8'h01}; //EDGE3 锐度(边缘增强)强度下限
            7'd37 : i2c_data <= {8'h94, 8'h5f}; //MTX1 矩阵系数1
            7'd38 : i2c_data <= {8'h95, 8'h53}; //MTX1 矩阵系数2
            7'd39 : i2c_data <= {8'h96, 8'h11}; //MTX1 矩阵系数3
            7'd40 : i2c_data <= {8'h97, 8'h1a}; //MTX1 矩阵系数4
            7'd41 : i2c_data <= {8'h98, 8'h3d}; //MTX1 矩阵系数5
            7'd42 : i2c_data <= {8'h99, 8'h5a}; //MTX1 矩阵系数6
            7'd43 : i2c_data <= {8'h9a, 8'h1e}; //MTX_Ctrl 矩阵控制
            7'd44 : i2c_data <= {8'h9b, 8'h3f}; //BRIGHT 亮度
            7'd45 : i2c_data <= {8'h9c, 8'h25}; //CNST 对比度            
            7'd46 : i2c_data <= {8'h9e, 8'h81}; 
            7'd47 : i2c_data <= {8'ha6, 8'h06}; //SDE 特殊数字效果控制
            7'd48 : i2c_data <= {8'ha7, 8'h65}; //USAT "U"饱和增益
            7'd49 : i2c_data <= {8'ha8, 8'h65}; //VSAT "V"饱和增益            
            7'd50 : i2c_data <= {8'ha9, 8'h80}; //VSAT "V"饱和增益   
            7'd51 : i2c_data <= {8'haa, 8'h80}; //VSAT "V"饱和增益
            //伽马控制 
            7'd52 : i2c_data <= {8'h7e, 8'h0c}; 
            7'd53 : i2c_data <= {8'h7f, 8'h16}; 
            7'd54 : i2c_data <= {8'h80, 8'h2a}; 
            7'd55 : i2c_data <= {8'h81, 8'h4e}; 
            7'd56 : i2c_data <= {8'h82, 8'h61}; 
            7'd57 : i2c_data <= {8'h83, 8'h6f}; 
            7'd58 : i2c_data <= {8'h84, 8'h7b}; 
            7'd59 : i2c_data <= {8'h85, 8'h86};   
            7'd60 : i2c_data <= {8'h86, 8'h8e}; 
            7'd61 : i2c_data <= {8'h87, 8'h97}; 
            7'd62 : i2c_data <= {8'h88, 8'ha4}; 
            7'd63 : i2c_data <= {8'h89, 8'haf}; 
            7'd64 : i2c_data <= {8'h8a, 8'hc5}; 
            7'd65 : i2c_data <= {8'h8b, 8'hd7}; 
            7'd66 : i2c_data <= {8'h8c, 8'he8}; 
            7'd67 : i2c_data <= {8'h8d, 8'h20}; 
            
            7'd68 : i2c_data <= {8'h0e, 8'h65}; //COM5
            7'd69 : i2c_data <= {8'h09, 8'h00}; //COM2  Bit[1:0] 输出电流驱动能力
            //只读存储器,防止在case中没有列举的情况，之前的寄存器被重复改写
            default:i2c_data <=	{8'h1C, 8'h7F}; //MIDH 制造商ID 高8位
        endcase
    end
end

endmodule