library verilog;
use verilog.vl_types.all;
entity i2c_dri is
    generic(
        SLAVE_ADDR      : vl_logic_vector(0 to 6) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        CLK_FREQ        : vl_logic_vector(0 to 25) := (Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        I2C_FREQ        : vl_logic_vector(0 to 17) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        i2c_exec        : in     vl_logic;
        bit_ctrl        : in     vl_logic;
        i2c_rh_wl       : in     vl_logic;
        i2c_addr        : in     vl_logic_vector(15 downto 0);
        i2c_data_w      : in     vl_logic_vector(7 downto 0);
        i2c_data_r      : out    vl_logic_vector(7 downto 0);
        i2c_done        : out    vl_logic;
        scl             : out    vl_logic;
        sda             : inout  vl_logic;
        dri_clk         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SLAVE_ADDR : constant is 1;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 1;
    attribute mti_svvh_generic_type of I2C_FREQ : constant is 1;
end i2c_dri;
