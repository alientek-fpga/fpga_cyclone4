library verilog;
use verilog.vl_types.all;
entity tb_top_key_beep is
    generic(
        T               : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of T : constant is 1;
end tb_top_key_beep;
