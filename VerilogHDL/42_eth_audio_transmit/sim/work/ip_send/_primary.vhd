library verilog;
use verilog.vl_types.all;
entity ip_send is
    generic(
        BOARD_MAC       : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        BOARD_IP        : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        DES_MAC         : vl_logic_vector(0 to 47) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        DES_IP          : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        tx_start_en     : in     vl_logic;
        tx_data         : in     vl_logic_vector(31 downto 0);
        tx_byte_num     : in     vl_logic_vector(15 downto 0);
        crc_data        : in     vl_logic_vector(31 downto 0);
        crc_next        : in     vl_logic_vector(3 downto 0);
        tx_done         : out    vl_logic;
        tx_req          : out    vl_logic;
        eth_tx_en       : out    vl_logic;
        eth_tx_data     : out    vl_logic_vector(3 downto 0);
        crc_en          : out    vl_logic;
        crc_clr         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BOARD_MAC : constant is 1;
    attribute mti_svvh_generic_type of BOARD_IP : constant is 1;
    attribute mti_svvh_generic_type of DES_MAC : constant is 1;
    attribute mti_svvh_generic_type of DES_IP : constant is 1;
end ip_send;
