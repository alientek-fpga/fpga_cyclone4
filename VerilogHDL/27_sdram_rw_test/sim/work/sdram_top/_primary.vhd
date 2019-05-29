library verilog;
use verilog.vl_types.all;
entity sdram_top is
    port(
        ref_clk         : in     vl_logic;
        out_clk         : in     vl_logic;
        rst_n           : in     vl_logic;
        wr_clk          : in     vl_logic;
        wr_en           : in     vl_logic;
        wr_data         : in     vl_logic_vector(15 downto 0);
        wr_min_addr     : in     vl_logic_vector(23 downto 0);
        wr_max_addr     : in     vl_logic_vector(23 downto 0);
        wr_len          : in     vl_logic_vector(9 downto 0);
        wr_load         : in     vl_logic;
        rd_clk          : in     vl_logic;
        rd_en           : in     vl_logic;
        rd_data         : out    vl_logic_vector(15 downto 0);
        rd_min_addr     : in     vl_logic_vector(23 downto 0);
        rd_max_addr     : in     vl_logic_vector(23 downto 0);
        rd_len          : in     vl_logic_vector(9 downto 0);
        rd_load         : in     vl_logic;
        sdram_read_valid: in     vl_logic;
        sdram_init_done : out    vl_logic;
        sdram_clk       : out    vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0);
        sdram_data      : inout  vl_logic_vector(15 downto 0);
        sdram_dqm       : out    vl_logic_vector(1 downto 0)
    );
end sdram_top;
