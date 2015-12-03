library verilog;
use verilog.vl_types.all;
entity shift_pattern is
    port(
        clk             : in     vl_logic;
        pattern         : out    vl_logic_vector(9 downto 0)
    );
end shift_pattern;
