library verilog;
use verilog.vl_types.all;
entity i2c_reg_cfg is
    generic(
        AUD_WORD        : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        i2c_done        : in     vl_logic;
        i2c_exec        : out    vl_logic;
        cfg_done        : out    vl_logic;
        i2c_data        : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUD_WORD : constant is 1;
end i2c_reg_cfg;
