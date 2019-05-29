library verilog;
use verilog.vl_types.all;
entity wm8978_config is
    generic(
        SLAVE_ADDR      : vl_logic_vector(0 to 6) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        AUD_WORD        : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        BIT_CTRL        : vl_logic := Hi0;
        CLK_FREQ        : vl_logic_vector(0 to 25) := (Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        I2C_FREQ        : vl_logic_vector(0 to 17) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        aud_scl         : out    vl_logic;
        aud_sda         : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SLAVE_ADDR : constant is 1;
    attribute mti_svvh_generic_type of AUD_WORD : constant is 1;
    attribute mti_svvh_generic_type of BIT_CTRL : constant is 1;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 1;
    attribute mti_svvh_generic_type of I2C_FREQ : constant is 1;
end wm8978_config;
