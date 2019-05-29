library verilog;
use verilog.vl_types.all;
entity sdram_ctrl is
    generic(
        TRP_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        TRC_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        TRSC_CLK        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        TRCD_CLK        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        TCL_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        TWR_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        sdram_wr_req    : in     vl_logic;
        sdram_rd_req    : in     vl_logic;
        sdram_wr_ack    : out    vl_logic;
        sdram_rd_ack    : out    vl_logic;
        sdram_wr_burst  : in     vl_logic_vector(9 downto 0);
        sdram_rd_burst  : in     vl_logic_vector(9 downto 0);
        sdram_init_done : out    vl_logic;
        init_state      : out    vl_logic_vector(4 downto 0);
        work_state      : out    vl_logic_vector(3 downto 0);
        cnt_clk         : out    vl_logic_vector(9 downto 0);
        sdram_rd_wr     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TRP_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRC_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRSC_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRCD_CLK : constant is 1;
    attribute mti_svvh_generic_type of TCL_CLK : constant is 1;
    attribute mti_svvh_generic_type of TWR_CLK : constant is 1;
end sdram_ctrl;
