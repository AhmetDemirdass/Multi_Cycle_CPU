library verilog;
use verilog.vl_types.all;
entity multicycle_controller is
    generic(
        FETCH           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        DECODE          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        MEMADR          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        EXECUTE_R       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        EXECUTE_I       : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        BRANCH          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        MEMREAD         : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        \MEMWRITE\      : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        ALUWB           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        MEMWB           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        run             : in     vl_logic;
        cond            : in     vl_logic_vector(3 downto 0);
        op              : in     vl_logic_vector(1 downto 0);
        func            : in     vl_logic_vector(4 downto 0);
        Rd              : in     vl_logic_vector(2 downto 0);
        ADRSrc          : out    vl_logic;
        PCWrite         : out    vl_logic;
        \MemWrite\      : out    vl_logic;
        IRWrite         : out    vl_logic;
        RegWrite        : out    vl_logic;
        ALUSrcA         : out    vl_logic;
        ImmSrc          : out    vl_logic_vector(1 downto 0);
        ALUSrcB         : out    vl_logic_vector(1 downto 0);
        ResultSrc       : out    vl_logic_vector(1 downto 0);
        RegSrc          : out    vl_logic_vector(1 downto 0);
        ALUControl      : out    vl_logic_vector(3 downto 0);
        state           : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FETCH : constant is 1;
    attribute mti_svvh_generic_type of DECODE : constant is 1;
    attribute mti_svvh_generic_type of MEMADR : constant is 1;
    attribute mti_svvh_generic_type of EXECUTE_R : constant is 1;
    attribute mti_svvh_generic_type of EXECUTE_I : constant is 1;
    attribute mti_svvh_generic_type of BRANCH : constant is 1;
    attribute mti_svvh_generic_type of MEMREAD : constant is 1;
    attribute mti_svvh_generic_type of \MEMWRITE\ : constant is 1;
    attribute mti_svvh_generic_type of ALUWB : constant is 1;
    attribute mti_svvh_generic_type of MEMWB : constant is 1;
end multicycle_controller;
