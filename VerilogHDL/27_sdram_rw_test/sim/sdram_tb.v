//****************************************Copyright (c)***********************************//
//?????www.openedv.com
//?????http://openedv.taobao.com 
//????????????"????"?????FPGA & STM32???
//??????????
//Copyright(C) ???? 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           sdram_tb
// Last modified Date:  2018/3/18 8:41:06
// Last Version:        V1.0
// Descriptions:        SDRAM????
//----------------------------------------------------------------------------------------
// Created by:          ????
// Created date:        2018/3/18 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
`timescale 1ns/1ns

module sdram_tb;

//reg define
reg         clock_50m;                    //50Mhz????
reg         rst_n;                        //????????
                                          
//wire define                             
wire        sdram_clk;                    //SDRAM ????    
wire        sdram_cke;                    //SDRAM ????    
wire        sdram_cs_n;                   //SDRAM ??    
wire        sdram_ras_n;                  //SDRAM ???    
wire        sdram_cas_n;                  //SDRAM ???    
wire        sdram_we_n;                   //SDRAM ???    
wire [ 1:0] sdram_ba;                     //SDRAM Bank??    
wire [12:0] sdram_addr;                   //SDRAM ?/???    
wire [15:0] sdram_data;                   //SDRAM ??    
wire [ 1:0] sdram_dqm;                    //SDRAM ????    
                                          
wire        led;                          //led???

//*****************************************************
//**                    main code
//***************************************************** 

//??????????
initial begin
  clock_50m = 0;
  rst_n     = 0;                      
  #100                                    //????100ns
  rst_n     = 1;
end

//??50Mhz??,????20ns
always #10 clock_50m = ~clock_50m; 

//??SDRAM??????
sdram_rw_test u_sdram_rw_test(
    .clk            (clock_50m),          //FPGA???50M
    .rst_n          (rst_n),              //??????????
        
    .sdram_clk      (sdram_clk),          //SDRAM ????
    .sdram_cke      (sdram_cke),          //SDRAM ????
    .sdram_cs_n     (sdram_cs_n),         //SDRAM ??
    .sdram_ras_n    (sdram_ras_n),        //SDRAM ???
    .sdram_cas_n    (sdram_cas_n),        //SDRAM ???
    .sdram_we_n     (sdram_we_n),         //SDRAM ???
    .sdram_ba       (sdram_ba),           //SDRAM Bank??
    .sdram_addr     (sdram_addr),         //SDRAM ?/???
    .sdram_data     (sdram_data),         //SDRAM ??
    .sdram_dqm      (sdram_dqm),          //SDRAM ????
    
    .led            (led)                 //?????
    );  
    
//??SDRAM????    
sdr u_sdram(    
    .Clk            (sdram_clk),          //SDRAM ????
    .Cke            (sdram_cke),          //SDRAM ????
    .Cs_n           (sdram_cs_n),         //SDRAM ??
    .Ras_n          (sdram_ras_n),        //SDRAM ???
    .Cas_n          (sdram_cas_n),        //SDRAM ???
    .We_n           (sdram_we_n),         //SDRAM ???
    .Ba             (sdram_ba),           //SDRAM Bank??
    .Addr           (sdram_addr),         //SDRAM ?/???
    .Dq             (sdram_data),         //SDRAM ??
    .Dqm            (sdram_dqm)           //SDRAM ????
    );
    
endmodule 