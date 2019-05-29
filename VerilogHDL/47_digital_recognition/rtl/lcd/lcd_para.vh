// usage 
// add `include "lcd_para.vh" at the head of the file used this parameter
// uncomment used define list below 

   `define LCD_480_272
// `define LCD_800_480
// `define LCD_1024_600
// `define LCD_1280_800
// `define COLOR_565

//**************************************************************
//                define colors in RGB_565
//**************************************************************

//define colors in RGB_565
`ifdef COLOR_565
`define   BLACK     16'h0000          /*黑色    0  ,   0,   0*/
`define   NAVY      16'h000F          /*深蓝色  0  ,   0, 127*/
`define   DGREEN    16'h03E0          /*深绿色  0  , 127,   0*/
`define   DCYAN     16'h03EF          /*深青色  0  , 127, 127*/
`define   MAROON    16'h7800          /*深红色  127,   0,   0*/
`define   PURPLE    16'h780F          /*紫色    127,   0, 127*/
`define   OLIVE     16'h7BE0          /*橄榄绿  127, 127,   0*/
`define   LGRAY     16'hC618          /*灰白色  192, 192, 192*/
`define   DGRAY     16'h7BEF          /*深灰色  127, 127, 127*/
`define   BLUE      16'h001F          /*蓝色    0  ,   0, 255*/
`define   GREEN     16'h07E0          /*绿色    0  , 255,   0*/
`define   CYAN      16'h07FF          /*青色    0  , 255, 255*/
`define   RED       16'hF800          /*红色    255,   0,   0*/
`define   MAGENTA   16'hF81F          /*品红    255,   0, 255*/
`define   YELLOW    16'hFFE0          /*黄色    255, 255,   0*/
`define   WHITE     16'hFFFF          /*白色    255, 255, 255*/
`endif

//**************************************************************
//                define LCD RGB timing parameter
//**************************************************************

// 4.3' 480*272
`ifdef  LCD_480_272
parameter    H_SYNC   =  11'd41 ;    //行同步
parameter    H_BACK   =  11'd2  ;    //行显示后沿
parameter    H_DISP   =  11'd480;    //行有效数据
parameter    H_FRONT  =  11'd2  ;    //行显示前沿
parameter    H_TOTAL  =  11'd525;    //行扫描周期

parameter    V_SYNC   =  11'd10 ;    //场同步
parameter    V_BACK   =  11'd2  ;    //场显示后沿
parameter    V_DISP   =  11'd272;    //场有效数据
parameter    V_FRONT  =  11'd2  ;    //场显示前沿
parameter    V_TOTAL  =  11'd286;    //场扫描周期
`endif

// 7' 800*480
`ifdef  LCD_800_480
parameter  H_SYNC   =   11'd128 ;   //行同步
parameter  H_BACK   =   11'd88  ;   //行显示后沿
parameter  H_DISP   =   11'd800 ;   //行有效数据
parameter  H_FRONT  =   11'd40  ;   //行显示前沿
parameter  H_TOTAL  =   11'd1056;   //行扫描周期

parameter  V_SYNC   =   11'd2   ;   //场同步
parameter  V_BACK   =   11'd33  ;   //场显示后沿
parameter  V_DISP   =   11'd480 ;   //场有效数据
parameter  V_FRONT  =   11'd10  ;   //场显示前沿
parameter  V_TOTAL  =   11'd525 ;   //场扫描周期
`endif

// 7' 1024*600
`ifdef  LCD_1024_600
parameter  H_SYNC   =   11'd20  ;   //行同步
parameter  H_BACK   =   11'd140 ;   //行显示后沿
parameter  H_DISP   =   11'd1024;   //行有效数据
parameter  H_FRONT  =   11'd160 ;   //行显示前沿
parameter  H_TOTAL  =   11'd1344;   //行扫描周期

parameter  V_SYNC   =   11'd3   ;   //场同步
parameter  V_BACK   =   11'd20  ;   //场显示后沿
parameter  V_DISP   =   11'd600 ;   //场有效数据
parameter  V_FRONT  =   11'd12  ;   //场显示前沿
parameter  V_TOTAL  =   11'd635 ;   //场扫描周期
`endif

// 10.1' 1280*800
`ifdef  LCD_1280_800
parameter  H_SYNC   =   11'd10  ;   //行同步
parameter  H_BACK   =   11'd80  ;   //行显示后沿
parameter  H_DISP   =   11'd1280;   //行有效数据
parameter  H_FRONT  =   11'd70  ;   //行显示前沿
parameter  H_TOTAL  =   11'd1440;   //行扫描周期

parameter  V_SYNC   =   11'd3   ;   //场同步
parameter  V_BACK   =   11'd10  ;   //场显示后沿
parameter  V_DISP   =   11'd800 ;   //场有效数据
parameter  V_FRONT  =   11'd10  ;   //场显示前沿
parameter  V_TOTAL  =   11'd823 ;   //场扫描周期
`endif