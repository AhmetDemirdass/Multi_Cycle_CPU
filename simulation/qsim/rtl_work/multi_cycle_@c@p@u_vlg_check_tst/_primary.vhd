library verilog;
use verilog.vl_types.all;
entity multi_cycle_CPU_vlg_check_tst is
    port(
        AluFlags        : in     vl_logic_vector(3 downto 0);
        RESULT          : in     vl_logic_vector(7 downto 0);
        STATE           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end multi_cycle_CPU_vlg_check_tst;
