//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           i2c_reg_cfg
// Last modified Date:  2018/3/22 15:38:09
// Last Version:        V1.0
// Descriptions:        用于配置I2C器件寄存器（一般用于多寄存器配置）
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/22 15:38:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module i2c_reg_cfg #(parameter WL = 6'd32        // word length音频字长参数设置
)(
    input                clk      ,              // i2c_reg_cfg驱动时钟(一般取1MHz)
    input                rst_n    ,              // 复位信号
    input                i2c_done ,              // I2C一次操作完成反馈信号
    output  reg          i2c_exec ,              // I2C触发执行信号
    output  reg          cfg_done ,              // WM8978配置完成
    output  reg  [15:0]  i2c_data                // 寄存器数据（7位地址+9位数据）
);

//parameter define
localparam   REG_NUM       = 5'd20;              // 总共需要配置的寄存器个数
localparam   PHONE_VOLUME  = 6'd30;              // 耳机输出音量大小参数（0~63）
localparam   SPEAK_VOLUME  = 6'd45;              // 喇叭输出音量大小参数（0~63）

//reg define
reg    [1:0]  wl            ;                    // word length音频字长参数定义
reg    [7:0]  start_init_cnt;                    // 初始化时间计数
reg    [4:0]  init_reg_cnt  ;                    // 寄存器配置个数计数器

//*****************************************************
//**                    main code
//*****************************************************

//音频字长（位数）参数设置
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wl <= 2'b00;
    end
    else begin
        case(WL)
            6'd16:begin wl <= 2'b00; end
            6'd20:begin wl <= 2'b01; end
            6'd24:begin wl <= 2'b10; end
            6'd32:begin wl <= 2'b11; end
        default: wl <= 2'd00;
        endcase
    end
end

//I2C写间隔控制（第1个和第2个寄存器配置时延时一段时间）
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        start_init_cnt <= 8'b0;
    end
    else if(init_reg_cnt == 5'd1 && i2c_done) begin
        start_init_cnt <= 8'b0;
    end
    else if(start_init_cnt < 8'hff && init_reg_cnt <= 5'd1) begin
        start_init_cnt <= start_init_cnt + 1'b1;
    end
end

//触发I2C操作控制
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        i2c_exec <= 1'b0;
    end
    else if(init_reg_cnt == 5'd0 & start_init_cnt == 8'hfc)
        i2c_exec <= 1'b1;
    else if(i2c_done & init_reg_cnt == 5'd1 & start_init_cnt == 8'hfc)
        i2c_exec <= 1'b1;
    else if(i2c_done && init_reg_cnt < REG_NUM)
        i2c_exec <= 1'b1;
    else
        i2c_exec <= 1'b0;
end

//配置寄存器个数计数
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        init_reg_cnt <= 5'd0;
    end
    else if(i2c_exec)
        init_reg_cnt <= init_reg_cnt + 1'b1;
end

//寄存器配置完成信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cfg_done <= 1'b0;
    else if(i2c_done & init_reg_cnt == REG_NUM )
        cfg_done <= 1'b1;
end

//配置I2C器件内寄存器地址及其数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        i2c_data <= 16'b0;
    end
    else begin
        case(init_reg_cnt)
            // R0,软复位
            5'd0 : i2c_data <= {7'd0 ,9'b1          };
            // R1,设置BUFIOEN = 1,VMIDSEL[1:0]设置为:11(5K)
            5'd1 : i2c_data <= {7'd1 ,9'b0_0000_0111};
            // R1,BIASEN设置为1(模拟器工作)，使能PLL（bit5）
            5'd2 : i2c_data <= {7'd1 ,9'b0_0010_1111};
            // R2,使能BOOSTENR,BOOSTENL和ADCENR/L；使能ROUT1,LOUT1
            5'd3 : i2c_data <= {7'd2 ,9'b1_1011_0011};
            // R4,配置wm8978音频接口数据为I2S格式（bit4：3），字长度(wl)
            5'd4 : i2c_data <= {7'd4 ,{2'd0,wl,5'b10000}};
            // R6,设置为MASTER MODE(BCLK和LRC输出)
            5'd5 : i2c_data <= {7'd6 ,9'b0_0000_0001};
            // R7,使能slow clock已使用零交叉，采用率为48KHz（bit3：1）
            5'd6 : i2c_data <= {7'd7 ,9'b0_0000_0001};
            // R10,设置DAC过采样率为128x（bit3）,以实现最佳SNR
            5'd7 : i2c_data <= {7'd10,9'b0_0000_1000};
            // R14,设置ADC过采样率为128x（bit3）,以达到最好的性能
            5'd8 : i2c_data <= {7'd14,9'b1_0000_1000};
            // R43,INVROUT2（bit4）反向,驱动喇叭
            5'd9 : i2c_data <= {7'd43,9'b0_0001_0000};
            // R47,左通道输入增益控制，L2_2BOOSTVOL（bit6：4）
            5'd10: i2c_data <= {7'd47,9'b0_0111_0000};
            // R48,右通道输入增益控制
            5'd11: i2c_data <= {7'd48,9'b0_0111_0000};
            // R49,TSDEN（bit0）,开启过热保护；SPKBOOST（bit2）1.5倍增益
            5'd12: i2c_data <= {7'd49,9'b0_0000_0110};
            // R50,选择左DAC输出至左输出混合器（bit0）
            5'd13: i2c_data <= {7'd50,9'b1          };
            // R51,选择左DAC输出至左输出混合器（bit0）
            5'd14: i2c_data <= {7'd51,9'b1          };
            // R52,耳机左声道音量设置（bit5：0），使能零交叉（bit7）
            5'd15: i2c_data <= {7'd52,{3'b010,PHONE_VOLUME}};
            // R53,耳机右声道音量设置（bit5：0），使能零交叉（bit7）,同步更新(HPVU=1)
            5'd16: i2c_data <= {7'd53,{3'b110,PHONE_VOLUME}};
            // R54,喇叭左声道音量设置（bit5：0），使能零交叉（bit7）
            5'd17: i2c_data <= {7'd54,{3'b010,SPEAK_VOLUME}};
            // R55,喇叭右声道音量设置（bit5：0），使能零交叉（bit7）,同步更新(SPKVU=1)
            5'd18: i2c_data <= {7'd55,{3'b110,SPEAK_VOLUME}};
            // R3,LOUT2,ROUT2输出使能(喇叭工作),RMIX,LMIX,DACENR、DACENL使能
            5'd19: i2c_data <= {7'd3 ,9'b0_0110_1111};
            default : ;
        endcase
    end
end

endmodule