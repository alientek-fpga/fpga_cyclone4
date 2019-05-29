//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           ip_receive
// Last modified Date:  2018/3/12 8:37:49
// Last Version:        V1.0
// Descriptions:        以太网数据接收模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2018/3/12 8:37:49
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_receive
  #(
    //开发板MAC地址 00-11-22-33-44-55
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,  
    //开发板IP地址 192.168.1.123   
    parameter BOARD_IP = {8'd192,8'd168,8'd1,8'd123}      
    )
   (
    input                clk         ,    //时钟信号
    input                rst_n       ,    //复位信号，低电平有效
    
    input                eth_rxdv    ,    //MII输入数据有效信号
    input        [3:0]   eth_rx_data ,    //MII输入数据
    output  reg          rec_pkt_done,    //以太网单包数据接收完成信号
    output  reg          rec_en      ,    //以太网接收的数据使能信号
    output  reg  [31:0]  rec_data    ,    //以太网接收的数据
    output  reg  [15:0]  rec_byte_num     //以太网接收的有效字数 单位:byte     
    );

//parameter define
localparam  st_idle     = 7'b000_0001;    //初始状态，等待接收前导码
localparam  st_preamble = 7'b000_0010;    //接收前导码状态 
localparam  st_eth_head = 7'b000_0100;    //接收以太网帧头
localparam  st_ip_head  = 7'b000_1000;    //接收IP首部
localparam  st_udp_head = 7'b001_0000;    //接收UDP首部
localparam  st_rx_data  = 7'b010_0000;    //接收有效数据
localparam  st_rx_end   = 7'b100_0000;    //接收结束

//reg define
reg    [6:0]      cur_state       ;
reg    [6:0]      next_state      ;
                  
reg               rx_byte_sw      ;       //控制字节转换信号                         
reg               rx_byte_val     ;       //字节转换完成有效信号
reg    [7:0]      rx_data         ;       //转换完成的数据
                                  
reg               skip_en         ;       //控制状态跳转使能信号
reg               error_en        ;       //解析错误使能信号
reg    [4:0]      cnt             ;       //解析数据计数器
reg    [47:0]     des_mac         ;       //目的MAC地址
reg    [15:0]     eth_type        ;       //以太网类型
reg    [31:0]     des_ip          ;       //目的IP地址
reg    [5:0]      ip_head_byte_num;       //IP首部长度
reg    [15:0]     udp_byte_num    ;       //UDP长度
reg    [15:0]     data_byte_num   ;       //数据长度
reg    [15:0]     data_cnt        ;       //有效数据计数    
reg    [1:0]      rec_en_cnt      ;       //4bit转32bit计数器

//*****************************************************
//**                    main code
//*****************************************************

//以太网4bit数据转8bit
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rx_byte_sw <= 1'b0;
        rx_byte_val <= 1'b0;
        rx_data <= 1'b0;
    end
    else begin
        rx_byte_val <= rx_byte_sw;
        if(eth_rxdv) begin
            rx_byte_sw <= ~rx_byte_sw;
            if(rx_byte_sw==1'b0) 
                rx_data[3:0] <= eth_rx_data;
            else
                rx_data[7:4] <= eth_rx_data;    
        end   
        else begin
            rx_byte_sw <= 1'b0;
        end    
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;  
    else
        cur_state <= next_state;
end

//解析数据状态跳转
always @(*) begin
    next_state = st_idle;
    case(cur_state)
        st_idle : begin                                     //等待接收前导码
            if(skip_en) 
                next_state = st_preamble;
            else
                next_state = st_idle;    
        end
        st_preamble : begin                                 //接收前导码
            if(skip_en) 
                next_state = st_eth_head;
            else if(error_en) 
                next_state = st_rx_end;    
            else
                next_state = st_preamble;    
        end
        st_eth_head : begin                                 //接收以太网帧头
            if(skip_en) 
                next_state = st_ip_head;
            else if(error_en) 
                next_state = st_rx_end;
            else
                next_state = st_eth_head;           
        end  
        st_ip_head : begin                                  //接收IP首部
            if(skip_en)
                next_state = st_udp_head;
            else if(error_en)
                next_state = st_rx_end;
            else
                next_state = st_ip_head;       
        end 
        st_udp_head : begin                                 //接收UDP首部
            if(skip_en)
                next_state = st_rx_data;
            else
                next_state = st_udp_head;    
        end                
        st_rx_data : begin                                  //接收有效数据
            if(skip_en)
                next_state = st_rx_end;
            else
                next_state = st_rx_data;    
        end                           
        st_rx_end : begin                                   //接收结束
            if(skip_en)
                next_state = st_idle;
            else
                next_state = st_rx_end;          
        end
        default : next_state = st_idle;
    endcase                                          
end    

//解析以太网数据
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        skip_en <= 1'b0;
        error_en <= 1'b0;
        cnt <= 5'd0;
        des_mac <= 48'd0;
        eth_type <= 16'd0;
        des_ip <= 32'd0;
        ip_head_byte_num <= 6'd0;
        udp_byte_num <= 16'd0;
        data_byte_num <= 16'd0;
        data_cnt <= 16'd0;
        rec_en_cnt <= 2'd0;
        rec_en <= 1'b0;
        rec_data <= 32'd0;
        rec_pkt_done <= 1'b0;
        rec_byte_num <= 16'd0;
    end
    else begin
        skip_en <= 1'b0;
        error_en <= 1'b0;  
        rec_en <= 1'b0;
        rec_pkt_done <= 1'b0;
        case(cur_state)
            st_idle : begin
                if((rx_byte_val == 1'b1) && (rx_data == 8'h55)) 
                    skip_en <= 1'b1;
            end
            st_preamble : begin
                if(rx_byte_val) begin                       //解析前导码
                    cnt <= cnt + 5'd1;
                    if((cnt < 5'd6) && (rx_data != 8'h55))  //7个8'h55  
                        error_en <= 1'b1;
                    else if(cnt==5'd6) begin
                        cnt <= 5'd0;
                        if(rx_data==8'hd5)                  //1个8'hd5
                            skip_en <= 1'b1;
                        else
                            error_en <= 1'b1;    
                    end  
                end  
            end
            st_eth_head : begin
                if(rx_byte_val) begin
                    cnt <= cnt + 5'b1;
                    if(cnt < 5'd6) 
                        des_mac <= {des_mac[39:0],rx_data}; //目的MAC地址
                    else if(cnt == 5'd12) 
                        eth_type[15:8] <= rx_data;          //以太网协议类型
                    else if(cnt == 5'd13) begin
                        eth_type[7:0] <= rx_data;
                        cnt <= 5'd0;
                        //判断MAC地址是否为开发板MAC地址或者公共地址
                        if((des_mac == BOARD_MAC)
                            ||(des_mac == 48'hff_ff_ff_ff_ff_ff))           
                            skip_en <= 1'b1;    
                        else
                            error_en <= 1'b1;
                    end        
                end  
            end
            st_ip_head : begin
                if(rx_byte_val) begin
                    cnt <= cnt + 5'd1;
                    if(cnt == 5'd0)
                        ip_head_byte_num <= {rx_data[3:0],2'd0};
                    else if((cnt >= 5'd16) && (cnt <= 5'd18))
                        des_ip <= {des_ip[23:0],rx_data};   //目的IP地址
                    else if(cnt == 5'd19) begin
                        des_ip <= {des_ip[23:0],rx_data}; 
                        //判断IP地址是否为开发板IP地址
                        if((des_ip[23:0] == BOARD_IP[31:8])
                            && (rx_data == BOARD_IP[7:0])) begin  
                            if(cnt == ip_head_byte_num - 1'b1) begin
                                skip_en <=1'b1;                     
                                cnt <= 5'd0;
                            end                             
                        end    
                        else begin            
                        //IP错误，停止解析数据                        
                            error_en <= 1'b1;               
                            cnt <= 5'd0;
                        end                                                  
                    end                          
                    else if(cnt == ip_head_byte_num - 1'b1) begin 
                        skip_en <=1'b1;                     //IP首部解析完成
                        cnt <= 5'd0;                    
                    end    
                end                                
            end 
            st_udp_head : begin
                if(rx_byte_val) begin
                    cnt <= cnt + 5'd1;
                    if(cnt == 5'd4)
                        udp_byte_num[15:8] <= rx_data;      //解析UDP字节长度 
                    else if(cnt == 5'd5)
                        udp_byte_num[7:0] <= rx_data;
                    else if(cnt == 5'd7) begin
                        //有效数据字节长度，（UDP首部8个字节，所以减去8）
                        data_byte_num <= udp_byte_num - 16'd8;    
                        skip_en <= 1'b1;
                        cnt <= 5'd0;
                    end  
                end                 
            end          
            st_rx_data : begin         
                //接收数据，转换成32bit            
                if(rx_byte_val) begin
                    data_cnt <= data_cnt + 16'd1;
                    rec_en_cnt <= rec_en_cnt + 2'd1;
                    if(data_cnt == data_byte_num - 16'd1) begin
                        skip_en <= 1'b1;                    //有效数据接收完成
                        data_cnt <= 16'd0;
                        rec_en_cnt <= 2'd0;
                        rec_pkt_done <= 1'b1;               
                        rec_en <= 1'b1;                     
                        rec_byte_num <= data_byte_num;
                    end    
					//先收到的数据放在了rec_data的高位,所以当数据不是4的倍数时,
					//低位数据为无效数据，可根据有效字节数来判断(rec_byte_num)
                    if(rec_en_cnt == 2'd0)
                        rec_data[31:24] <= rx_data;
                    else if(rec_en_cnt == 2'd1)
                        rec_data[23:16] <= rx_data;
                    else if(rec_en_cnt == 2'd2) 
                        rec_data[15:8] <= rx_data;        
                    else if(rec_en_cnt==2'd3) begin
                        rec_en <= 1'b1;
                        rec_data[7:0] <= rx_data;
                    end    
                end  
            end    
            st_rx_end : begin                               //单包数据接收完成   
                if(eth_rxdv == 1'b0 && skip_en == 1'b0)
                    skip_en <= 1'b1; 
            end    
            default : ;
        endcase                                                        
    end
end

endmodule