//****************************************Copyright 2017[c]************************//
// ************************Declaration***************************************//
// File name:        tb_eth_audio_transmit                                      
// Author:                                            
// Date:             2017/1/12 21:18:13                              
// Version maxber:   1.0                                                   
// Abstract:         
// Modification history:[including time, version, author and abstract]     
// Abstract:                                                         
//                                                                  

`timescale  1ns/1ns

module        tb_eth_audio_transmit    ;

parameter       SYS_PERID = 20 ;
parameter       ETH_PERIOD = 40;

reg           clk         ;
reg           eth_clk     ;    
reg           rst_n       ;  

reg           aud_lrc     ;

wire          eth_rxdv    ;
wire   [3:0]  eth_rx_data ;
wire          eth_tx_en   ;
wire   [3:0]  eth_tx_data ;
wire          aud_mclk    ;
wire          aud_bclk    ;
wire          aud_dacdat  ;
wire          aud_adcdat  ;

assign  eth_rxdv = eth_tx_en;
assign  eth_rx_data = eth_tx_data;
assign  aud_bclk = aud_mclk;
assign  aud_adcdat = aud_adcdat;

always #(SYS_PERID/2) clk <= ~clk ;
always #(ETH_PERIOD/2) eth_clk <= ~eth_clk;

initial begin
            clk <= 1'b0 ;
            rst_n <= 1'b0 ;
            eth_clk <= 1'b0;
          #(20*SYS_PERID)
            rst_n <= 1'b1 ;
          end
          
reg  [6:0]  cnt;

always @(posedge aud_bclk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        aud_lrc <= 1'b0;
        cnt <= 'd0;
    end    
    else begin
        cnt <= cnt + 1'd1;
        if(cnt == 0)
            aud_lrc <= ~aud_lrc;
    end        
end         

eth_audio_transmit u_eth_audio_transmit(
    .sys_clk        (clk),
    .sys_rst_n      (rst_n),    
    .eth_rx_clk     (eth_clk     ),
    .eth_rxdv       (eth_rxdv    ),
    .eth_tx_clk     (eth_clk     ),
    .eth_rx_data    (eth_rx_data ),
    .eth_tx_en      (eth_tx_en   ),
    .eth_tx_data    (eth_tx_data ),
    .eth_rst_n      (),
    .aud_bclk       (aud_bclk),
    .aud_lrc        (aud_lrc),
    .aud_adcdat     (aud_adcdat),
    .aud_mclk       (aud_mclk),
    .aud_dacdat     (aud_dacdat), 
    .aud_scl        (),
    .aud_sda        ()
);

endmodule         
          