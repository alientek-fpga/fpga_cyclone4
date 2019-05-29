library verilog;
use verilog.vl_types.all;
entity ram_rw is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        ram_wr_en       : out    vl_logic;
        ram_rd_en       : out    vl_logic;
        ram_addr        : out    vl_logic_vector(4 downto 0);
        ram_wr_data     : out    vl_logic_vector(7 downto 0);
        ram_rd_data     : in     vl_logic_vector(7 downto 0)
    );
end ram_rw;
