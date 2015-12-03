library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        count           : out    vl_logic_vector(15 downto 0)
    );
end counter;
