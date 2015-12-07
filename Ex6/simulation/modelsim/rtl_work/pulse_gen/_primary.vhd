library verilog;
use verilog.vl_types.all;
entity pulse_gen is
    generic(
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        HIGH            : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        \WAIT\          : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        clkin           : in     vl_logic;
        trigger         : in     vl_logic;
        load            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of HIGH : constant is 1;
    attribute mti_svvh_generic_type of \WAIT\ : constant is 1;
end pulse_gen;
