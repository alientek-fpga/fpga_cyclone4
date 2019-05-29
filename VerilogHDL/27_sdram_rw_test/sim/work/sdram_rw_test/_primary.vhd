library verilog;
use verilog.vl_types.all;
entity sdram_rw_test is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        sdram_clk       : out    vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0);
        sdram_data      : inout  vl_logic_vector(15 downto 0);
        sdram_dqm       : out    vl_logic_vector(1 downto 0);
        led             : out    vl_logic
    );
end sdram_rw_test;
