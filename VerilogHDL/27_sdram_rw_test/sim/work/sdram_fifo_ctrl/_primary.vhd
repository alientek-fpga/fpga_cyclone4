library verilog;
use verilog.vl_types.all;
entity sdram_fifo_ctrl is
    port(
        clk_ref         : in     vl_logic;
        rst_n           : in     vl_logic;
        clk_write       : in     vl_logic;
        wrf_wrreq       : in     vl_logic;
        wrf_din         : in     vl_logic_vector(15 downto 0);
        wr_min_addr     : in     vl_logic_vector(23 downto 0);
        wr_max_addr     : in     vl_logic_vector(23 downto 0);
        wr_length       : in     vl_logic_vector(9 downto 0);
        wr_load         : in     vl_logic;
        clk_read        : in     vl_logic;
        rdf_rdreq       : in     vl_logic;
        rdf_dout        : out    vl_logic_vector(15 downto 0);
        rd_min_addr     : in     vl_logic_vector(23 downto 0);
        rd_max_addr     : in     vl_logic_vector(23 downto 0);
        rd_length       : in     vl_logic_vector(9 downto 0);
        rd_load         : in     vl_logic;
        sdram_read_valid: in     vl_logic;
        sdram_init_done : in     vl_logic;
        sdram_wr_req    : out    vl_logic;
        sdram_wr_ack    : in     vl_logic;
        sdram_wr_addr   : out    vl_logic_vector(23 downto 0);
        sdram_din       : out    vl_logic_vector(15 downto 0);
        sdram_rd_req    : out    vl_logic;
        sdram_rd_ack    : in     vl_logic;
        sdram_rd_addr   : out    vl_logic_vector(23 downto 0);
        sdram_dout      : in     vl_logic_vector(15 downto 0)
    );
end sdram_fifo_ctrl;
