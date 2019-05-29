//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ds18b20_dri
// Last modified Date:  2018-03-30 14:45:44
// Last Version:        V1.0
// Descriptions:        DS18B20驱动模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018-03-30 14:46:40
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ds18b20_dri(
    //module clock
    input              clk        ,         // 时钟信号（50MHz）
    input              rst_n      ,         // 复位信号

    //user interface
    inout              dq         ,         // DS18B20的DQ引脚数据
    output reg [19:0]  temp_data  ,         // 转换后得到的温度值
    output reg         sign                 // 符号位
);

//parameter define
localparam  ROM_SKIP_CMD = 8'hcc;           // 跳过 ROM 命令
localparam  CONVERT_CMD  = 8'h44;           // 温度转换命令
localparam  READ_TEMP    = 8'hbe;           // 读 DS1820 温度暂存器命令
//state define
localparam  init         = 3'd1 ;           // 初始化状态
localparam  rom_skip     = 3'd2 ;           // 加载跳过ROM命令
localparam  wr_byte      = 3'd3 ;           // 写字节状态
localparam  temp_convert = 3'd4 ;           // 加载温度转换命令
localparam  delay        = 3'd5 ;           // 延时等待温度转换结束
localparam  rd_temp      = 3'd6 ;           // 加载读温度命令
localparam  rd_byte      = 3'd7 ;           // 读字节状态

//reg define
reg     [ 4:0]         cnt         ;        // 分频计数器
reg                    clk_1us     ;        // 1MHz时钟
reg     [19:0]         cnt_1us     ;        // 微秒计数
reg     [ 2:0]         cur_state   ;        // 当前状态
reg     [ 2:0]         next_state  ;        // 下一状态
reg     [ 3:0]         flow_cnt    ;        // 流转计数
reg     [ 3:0]         wr_cnt      ;        // 写计数
reg     [ 4:0]         rd_cnt      ;        // 读计数
reg     [ 7:0]         wr_data     ;        // 写入DS18B20的数据
reg     [ 4:0]         bit_width   ;        // 读取的数据的位宽
reg     [15:0]         rd_data     ;        // 采集到的数据
reg     [15:0]         org_data    ;        // 读取到的原始温度数据
reg     [10:0]         data1       ;        // 对原理温度进行符号处理
reg     [ 3:0]         cmd_cnt     ;        // 发送命令计数
reg                    init_done   ;        // 初始化完成信号
reg                    st_done     ;        // 完成信号
reg                    cnt_1us_en  ;        // 使能计时
reg                    dq_out      ;        // DS18B20的dq输出

//wire define
wire    [19:0]         data2       ;        // 对处理后的进行转换处理

//*****************************************************
//**                    main code
//*****************************************************

assign dq = dq_out;

//分频生成1MHz的时钟信号
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt     <= 5'b0;
        clk_1us <= 1'b0;
    end
    else if(cnt < 5'd24) begin
        cnt     <= cnt + 1'b1;
        clk_1us <= clk_1us;
    end
    else begin
        cnt     <= 5'b0;
        clk_1us <= ~clk_1us;
    end
end

//微秒计时
always @ (posedge clk_1us or negedge rst_n) begin
    if (!rst_n)
        cnt_1us <= 20'b0;
    else if (cnt_1us_en)
        cnt_1us <= cnt_1us + 1'b1;
    else
        cnt_1us <= 20'b0;
end

//状态跳转
always @ (posedge clk_1us or negedge rst_n) begin
    if(!rst_n)
        cur_state <= init;
    else 
        cur_state <= next_state;
end

//组合逻辑状态判断转换条件
always @( * ) begin
    case(cur_state)
        init: begin                             // 初始化状态
            if (init_done)
                next_state = rom_skip;
            else
                next_state = init;
        end
        rom_skip: begin                         // 加载跳过ROM命令
            if(st_done)
                next_state = wr_byte;
            else
                next_state = rom_skip;
        end
        wr_byte: begin                          // 发送命令
            if(st_done)
                case(cmd_cnt)                   // 根据命令序号，判断下个状态
                    4'b1: next_state = temp_convert;
                    4'd2: next_state = delay;
                    4'd3: next_state = rd_temp;
                    4'd4: next_state = rd_byte;
                    default: 
					      next_state = temp_convert;
                endcase
            else
                next_state = wr_byte;
        end
        temp_convert: begin                     // 加载温度转换命令
            if(st_done)
                next_state = wr_byte;
            else
                next_state = temp_convert;
        end
        delay: begin                            // 延时等待温度转换结束
            if(st_done)
                next_state = init;
            else
                next_state = delay;
        end
        rd_temp: begin                          // 加载读温度命令
            if(st_done)
                next_state = wr_byte;
            else
                next_state = rd_temp;
        end
        rd_byte: begin                          // 读数据线上的数据
            if(st_done)
                next_state = init;
            else
                next_state = rd_byte;
        end
        default: next_state = init;
    endcase
end

//整个操作步骤为初始化、发送跳过ROM操作命令、发送温度转换指令、
//再初始化、再发送跳过ROM操作指令、发送读数据指令。
always @ (posedge clk_1us or negedge rst_n) begin
    if(!rst_n) begin
        flow_cnt     <=  4'b0;
        init_done    <=  1'b0;
        cnt_1us_en   <=  1'b1;
        dq_out       <=  1'bZ;
        st_done      <=  1'b0;
        rd_data      <= 16'b0;
        rd_cnt       <=  5'd0;
        wr_cnt       <=  4'd0;
        cmd_cnt      <=  3'd0;
    end
    else begin
        st_done <= 1'b0;
        case (next_state)
            init:begin                              //初始化
                init_done <= 1'b0;
                case(flow_cnt)
                    4'd0:
						flow_cnt <= flow_cnt + 1'b1;
						4'd1: begin					//发出500us复位脉冲
                        cnt_1us_en <= 1'b1;         
                        if(cnt_1us < 20'd500)
                            dq_out <= 1'b0;         
                        else begin
                            cnt_1us_en <= 1'b0;
                            dq_out <= 1'bz;
                            flow_cnt <= flow_cnt + 1'b1;
                        end
                    end
                    4'd2:begin						//释放总线，等待30us
                        cnt_1us_en <= 1'b1;
                        if(cnt_1us < 20'd30)
                            dq_out <= 1'bz;
                        else
                            flow_cnt <= flow_cnt + 1'b1;
                    end
                    4'd3: begin						//检测响应信号
                        if(!dq)
                            flow_cnt <= flow_cnt + 1'b1;
                        else
                            flow_cnt <= flow_cnt;
                    end
                    4'd4: begin						//等待初始化结束
                        if(cnt_1us == 20'd500) begin
                            cnt_1us_en <= 1'b0;
                            init_done  <= 1'b1;		//初始化完成
                            flow_cnt   <= 4'd0;
                        end
                        else
                            flow_cnt <= flow_cnt;
                    end
                    default: flow_cnt <= 4'd0;
                endcase
            end
            rom_skip: begin                         //加载跳过ROM操作指令
                wr_data  <= ROM_SKIP_CMD;
                flow_cnt <= 4'd0;
                st_done  <= 1'b1;
            end
            wr_byte: begin                          //写字节状态（发送指令）
                if(wr_cnt <= 4'd7) begin
                    case (flow_cnt)
                        4'd0: begin
                            dq_out <= 1'b0;			//拉低数据线，开始写操作
                            cnt_1us_en <= 1'b1;		//启动计时器
                            flow_cnt <= flow_cnt + 1'b1;
                        end
                        4'd1: begin					//数据线拉低1us
                            flow_cnt <= flow_cnt + 1'b1;
                        end
                        4'd2: begin
                            if(cnt_1us < 20'd60)	//发送数据
                                dq_out <= wr_data[wr_cnt];
                            else if(cnt_1us < 20'd63) 	
                                dq_out <= 1'bz;		//释放总线（发送间隔）
                            else
                                flow_cnt <= flow_cnt + 1'b1;
                        end
                        4'd3: begin					//发送1位数据完成
                            flow_cnt <= 0;
                            cnt_1us_en <= 1'b0;
                            wr_cnt <= wr_cnt + 1'b1;//写计数器加1
                        end
                        default : flow_cnt <= 0;
                    endcase
                end
                else begin							//发送指令（1Byte）结束
                    st_done <= 1'b1;
                    wr_cnt <= 4'b0;
                    cmd_cnt <= (cmd_cnt == 3'd4) ?  //标记当前发送的指令序号
					           3'd1 : (cmd_cnt+ 1'b1);
                end
            end
            temp_convert: begin                     //加载温度转换命令
                wr_data <= CONVERT_CMD;
                st_done <= 1'b1;
            end
            delay: begin                            //延时500ms等待温度转换结束
                cnt_1us_en <= 1'b1;
                if(cnt_1us == 20'd500000) begin
                    st_done <= 1'b1;
                    cnt_1us_en <= 1'b0;
                end 
            end 
            rd_temp: begin                          //加载读温度命令
                wr_data <= READ_TEMP;
                bit_width <= 5'd16;					//指定读数据个数
                st_done <= 1'b1;
            end
            rd_byte: begin                          //接收16位温度数据
                if(rd_cnt < bit_width) begin
                    case(flow_cnt)
                        4'd0: begin
                            cnt_1us_en <= 1'b1;
                            dq_out <= 1'b0;			//拉低数据线，开始读操作
                            flow_cnt <= flow_cnt + 1'b1;
                        end
                        4'd1: begin
                            dq_out <= 1'bz;			//释放总线并在15us内接收数据
                            if(cnt_1us == 20'd14) begin
                                rd_data <= {dq,rd_data[15:1]};
                                flow_cnt <= flow_cnt + 1'b1 ;
                            end
                        end
                        4'd2: begin
                            if (cnt_1us <= 20'd64)	//读1位数据结束
                                dq_out <= 1'bz;
                            else begin
                                flow_cnt <= 4'd0;	
                                rd_cnt <= rd_cnt + 1'b1;//读计数器加1
                                cnt_1us_en <= 1'b0;
                            end
                        end
                        default : flow_cnt <= 4'd0;
                    endcase
                end
                else begin
                    st_done <= 1'b1;
                    org_data  <= rd_data;
                    rd_cnt <= 5'b0;
                end
            end
            default: ;
        endcase
    end 
end

//判断符号位
always @(posedge clk_1us or negedge rst_n) begin
    if(!rst_n) begin
        sign  <=  1'b0;
        data1 <= 11'b0;
    end
    else if(org_data[15] == 1'b0) begin
        sign  <= 1'b0;
        data1 <= org_data[10:0];
    end
    else if(org_data[15] == 1'b1) begin
        sign  <= 1'b1;
        data1 <= ~org_data[10:0] + 1'b1;
    end
end

//对采集到的温度进行转换
assign data2 = (data1 * 11'd625)/ 7'd100;

//温度输出
always @(posedge clk_1us or negedge rst_n) begin
    if(!rst_n)
        temp_data <= 20'b0;
    else
        temp_data <= data2;
end

endmodule