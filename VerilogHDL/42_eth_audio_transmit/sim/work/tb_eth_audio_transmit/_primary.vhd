library verilog;
use verilog.vl_types.all;
entity tb_eth_audio_transmit is
    generic(
        SYS_PERID       : integer := 20;
        ETH_PERIOD      : integer := 40
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SYS_PERID : constant is 1;
    attribute mti_svvh_generic_type of ETH_PERIOD : constant is 1;
end tb_eth_audio_transmit;
