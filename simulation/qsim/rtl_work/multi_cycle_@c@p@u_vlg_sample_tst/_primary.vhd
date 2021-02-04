library verilog;
use verilog.vl_types.all;
entity multi_cycle_CPU_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multi_cycle_CPU_vlg_sample_tst;
