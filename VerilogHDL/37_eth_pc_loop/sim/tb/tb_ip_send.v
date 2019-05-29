//****************************************Copyright 2017[c]************************//
// ************************Declaration***************************************//
// File name:        tb_                                      
// Author:                                            
// Date:             2017/1/12 21:18:13                              
// Version maxber:   1.0                                                   
// Abstract:         
// Modification history:[including time, version, author and abstract]     
// Abstract:                                                         
//                                                                  

`timescale  1ns/1ns

module        tb_ip_send    ;

parameter  		SYS_PERID = 40 ;

reg           clk          ;
reg           rst_n        ;  

reg           tx_start_en  ;
reg   [31:0]  tx_data      ;
reg   [10:0]  tx_byte_num  ;

always #(SYS_PERID/2) clk <= ~clk ;

initial begin
	        clk <= 1'b0 ;
	        rst_n <= 1'b0 ;
	      #(20*SYS_PERID)
	        rst_n <= 1'b1 ;
	      end
	      

initial begin
      tx_start_en <= 1'b0;
      tx_data <= 32'h66_77_88_99;
      tx_byte_num <= 11'd0;
    #(100*SYS_PERID)
      tx_start_en <= 1'b1;
      tx_byte_num <= 11'd1;
    #(20*SYS_PERID)
      tx_start_en <= 1'b0; 
      
    #(200*SYS_PERID)
      tx_start_en <= 1'b1;
      tx_byte_num <= 11'd20;
    #(20*SYS_PERID)
      tx_start_en <= 1'b0;       
    
end    	      


ip_send  u_ip_send(
    .clk               (clk),
    .rst_n             (rst_n),
    .tx_start_en       (tx_start_en),
    .tx_data           (tx_data),
    .tx_byte_num       (tx_byte_num),
    .crc_data          (32'haa_bb_cc_dd),
    .crc_next          (4'he),
    .tx_done           (),
    .tx_req            (),
    .eth_tx_en         (),
    .eth_tx_data       (),
    .crc_en            (),
    .crc_clr           ()
    );


endmodule	      
	      