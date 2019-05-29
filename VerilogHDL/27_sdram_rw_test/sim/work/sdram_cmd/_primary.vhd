library verilog;
use verilog.vl_types.all;
entity sdram_cmd is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        sys_wraddr      : in     vl_logic_vector(23 downto 0);
        sys_rdaddr      : in     vl_logic_vector(23 downto 0);
        sdram_wr_burst  : in     vl_logic_vector(9 downto 0);
        sdram_rd_burst  : in     vl_logic_vector(9 downto 0);
        init_state      : in     vl_logic_vector(4 downto 0);
        work_state      : in     vl_logic_vector(3 downto 0);
        cnt_clk         : in     vl_logic_vector(9 downto 0);
        sdram_rd_wr     : in     vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0)
    );
end sdram_cmd;
