library verilog;
use verilog.vl_types.all;
entity crc32_d4 is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        data            : in     vl_logic_vector(0 to 3);
        crc_en          : in     vl_logic;
        crc_clr         : in     vl_logic;
        crc_data        : out    vl_logic_vector(31 downto 0);
        crc_next        : out    vl_logic_vector(31 downto 0)
    );
end crc32_d4;
