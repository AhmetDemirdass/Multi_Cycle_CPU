library verilog;
use verilog.vl_types.all;
entity multi_cycle_CPU_vlg_sample_tst is
    port(
        ADRSrc          : in     vl_logic;
        ALUControl      : in     vl_logic_vector(3 downto 0);
        ALUSrcA         : in     vl_logic;
        ALUSrcB         : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        ImmSrc          : in     vl_logic_vector(1 downto 0);
        IRWrite         : in     vl_logic;
        MemWrite        : in     vl_logic;
        PCWrite         : in     vl_logic;
        RegSrc          : in     vl_logic_vector(1 downto 0);
        RegWrite        : in     vl_logic;
        ResultSrc       : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multi_cycle_CPU_vlg_sample_tst;
