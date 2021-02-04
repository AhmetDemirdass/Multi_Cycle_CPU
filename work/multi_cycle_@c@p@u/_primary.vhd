library verilog;
use verilog.vl_types.all;
entity multi_cycle_CPU is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        AluFlags        : out    vl_logic_vector(3 downto 0);
        RESULT          : out    vl_logic_vector(7 downto 0);
        STATE           : out    vl_logic_vector(3 downto 0)
    );
end multi_cycle_CPU;
