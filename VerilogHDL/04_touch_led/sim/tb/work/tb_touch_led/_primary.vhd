library verilog;
use verilog.vl_types.all;
entity tb_touch_led is
    generic(
        T               : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of T : constant is 1;
end tb_touch_led;
