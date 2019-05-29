library verilog;
use verilog.vl_types.all;
entity sdram_test is
    port(
        clk_50m         : in     vl_logic;
        rst_n           : in     vl_logic;
        wr_en           : out    vl_logic;
        wr_data         : out    vl_logic_vector(15 downto 0);
        rd_en           : out    vl_logic;
        rd_data         : in     vl_logic_vector(15 downto 0);
        sdram_init_done : in     vl_logic;
        error_flag      : out    vl_logic
    );
end sdram_test;
