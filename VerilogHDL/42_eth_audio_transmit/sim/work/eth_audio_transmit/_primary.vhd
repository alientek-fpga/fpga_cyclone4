library verilog;
use verilog.vl_types.all;
entity eth_audio_transmit is
    generic(
        BOARD_MAC       : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        BOARD_IP        : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        DES_MAC         : vl_logic_vector(0 to 47) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        DES_IP          : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        eth_rx_clk      : in     vl_logic;
        eth_rxdv        : in     vl_logic;
        eth_tx_clk      : in     vl_logic;
        eth_rx_data     : in     vl_logic_vector(3 downto 0);
        eth_tx_en       : out    vl_logic;
        eth_tx_data     : out    vl_logic_vector(3 downto 0);
        eth_rst_n       : out    vl_logic;
        aud_bclk        : in     vl_logic;
        aud_lrc         : in     vl_logic;
        aud_adcdat      : in     vl_logic;
        aud_mclk        : out    vl_logic;
        aud_dacdat      : out    vl_logic;
        aud_scl         : out    vl_logic;
        aud_sda         : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BOARD_MAC : constant is 1;
    attribute mti_svvh_generic_type of BOARD_IP : constant is 1;
    attribute mti_svvh_generic_type of DES_MAC : constant is 1;
    attribute mti_svvh_generic_type of DES_IP : constant is 1;
end eth_audio_transmit;
