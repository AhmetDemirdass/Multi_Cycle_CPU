// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Mon May 11 14:07:12 2020"

module multi_cycle_CPU(
	clk,
	reset,
	AluFlags,
	RESULT,
	STATE
);


input wire	clk;
input wire	reset;
output wire	[3:0] AluFlags;
output wire	[7:0] RESULT;
output wire	[3:0] STATE;

wire	[3:0] AluFlags_ALTERA_SYNTHESIZED;
wire	[7:0] FOUR;
wire	[19:0] INSTR_OUT;
wire	[19:0] MEMO;
wire	[1:0] RegSrc;
wire	[2:0] SEVEN;
wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_38;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_39;
wire	[1:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[7:0] SYNTHESIZED_WIRE_40;
wire	[7:0] SYNTHESIZED_WIRE_41;
wire	[7:0] SYNTHESIZED_WIRE_14;
wire	[1:0] SYNTHESIZED_WIRE_15;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_21;
wire	[2:0] SYNTHESIZED_WIRE_22;
wire	[2:0] SYNTHESIZED_WIRE_23;
wire	[7:0] SYNTHESIZED_WIRE_42;
wire	[1:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_30;
wire	[7:0] SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_36;

assign	RESULT = SYNTHESIZED_WIRE_42;
assign	SYNTHESIZED_WIRE_38 = 0;




ALP	b2v_alp(
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.I(SYNTHESIZED_WIRE_2),
	.C_out(AluFlags_ALTERA_SYNTHESIZED[3]),
	.OVF(AluFlags_ALTERA_SYNTHESIZED[2]),
	.Z(AluFlags_ALTERA_SYNTHESIZED[1]),
	.N(AluFlags_ALTERA_SYNTHESIZED[0]),
	.F(SYNTHESIZED_WIRE_39));
	defparam	b2v_alp.W = 8;


registerRes	b2v_DATA_REG(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.reg_in(MEMO[7:0]),
	.reg_out(SYNTHESIZED_WIRE_7));
	defparam	b2v_DATA_REG.W = 8;


registerRes	b2v_inst(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.reg_in(SYNTHESIZED_WIRE_5),
	.reg_out(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst.W = 8;


multicycle_controller	b2v_inst1(
	.clk(clk),
	.reset(reset),
	
	.cond(INSTR_OUT[19:16]),
	.func(INSTR_OUT[13:9]),
	.op(INSTR_OUT[15:14]),
	.Rd(INSTR_OUT[5:3]),
	.ADRSrc(SYNTHESIZED_WIRE_27),
	.PCWrite(SYNTHESIZED_WIRE_36),
	.MemWrite(SYNTHESIZED_WIRE_30),
	.IRWrite(SYNTHESIZED_WIRE_34),
	.RegWrite(SYNTHESIZED_WIRE_21),
	.ALUSrcA(SYNTHESIZED_WIRE_10),
	.ALUControl(SYNTHESIZED_WIRE_2),
	.ALUSrcB(SYNTHESIZED_WIRE_15),
	.ImmSrc(SYNTHESIZED_WIRE_26),
	.RegSrc(RegSrc),
	.ResultSrc(SYNTHESIZED_WIRE_9),
	.state(STATE));
	defparam	b2v_inst1.ALUWB = 4'b1000;
	defparam	b2v_inst1.BRANCH = 4'b0101;
	defparam	b2v_inst1.DECODE = 4'b0001;
	defparam	b2v_inst1.EXECUTE_I = 4'b0100;
	defparam	b2v_inst1.EXECUTE_R = 4'b0011;
	defparam	b2v_inst1.FETCH = 4'b0000;
	defparam	b2v_inst1.MEMADR = 4'b0010;
	defparam	b2v_inst1.MEMREAD = 4'b0110;
	defparam	b2v_inst1.MEMWB = 4'b1001;
	defparam	b2v_inst1.MEMWRITE = 4'b0111;


MUX2to1	b2v_inst10(
	.select(RegSrc[1]),
	.mux_in_0(INSTR_OUT[2:0]),
	.mux_in_1(INSTR_OUT[5:3]),
	.mux_out(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst10.W = 3;


MUX4to1	b2v_inst11(
	.mux_in_0(SYNTHESIZED_WIRE_6),
	.mux_in_1(SYNTHESIZED_WIRE_7),
	.mux_in_2(SYNTHESIZED_WIRE_39),
	
	.select(SYNTHESIZED_WIRE_9),
	.mux_out(SYNTHESIZED_WIRE_42));
	defparam	b2v_inst11.W = 8;


MUX2to1	b2v_inst14(
	.select(SYNTHESIZED_WIRE_10),
	.mux_in_0(SYNTHESIZED_WIRE_11),
	.mux_in_1(SYNTHESIZED_WIRE_40),
	.mux_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst14.W = 8;


MUX4to1	b2v_inst15(
	.mux_in_0(SYNTHESIZED_WIRE_41),
	.mux_in_1(SYNTHESIZED_WIRE_14),
	.mux_in_2(FOUR),
	
	.select(SYNTHESIZED_WIRE_15),
	.mux_out(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst15.W = 8;


registerRes	b2v_inst18(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.reg_in(SYNTHESIZED_WIRE_17),
	.reg_out(SYNTHESIZED_WIRE_41));
	defparam	b2v_inst18.W = 8;


registerRes	b2v_inst19(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.reg_in(SYNTHESIZED_WIRE_39),
	.reg_out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst19.W = 8;


register_file	b2v_inst20(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.enable(SYNTHESIZED_WIRE_21),
	.A1(SYNTHESIZED_WIRE_22),
	.A2(SYNTHESIZED_WIRE_23),
	.A3(INSTR_OUT[5:3]),
	.R7(SYNTHESIZED_WIRE_42),
	.WD3(SYNTHESIZED_WIRE_42),
	.RD1(SYNTHESIZED_WIRE_5),
	.RD2(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst20.W = 8;






EXTEND	b2v_inst26(
	.imm_source(SYNTHESIZED_WIRE_26),
	.in_ext(INSTR_OUT[3:0]),
	.out_ext(SYNTHESIZED_WIRE_14));



MUX2to1	b2v_inst6(
	.select(SYNTHESIZED_WIRE_27),
	.mux_in_0(SYNTHESIZED_WIRE_40),
	.mux_in_1(SYNTHESIZED_WIRE_42),
	.mux_out(SYNTHESIZED_WIRE_31));
	defparam	b2v_inst6.W = 8;


data_instr_memory	b2v_inst7(
	.clk(clk),
	.mem_write(SYNTHESIZED_WIRE_30),
	.ADD(SYNTHESIZED_WIRE_31),
	.WD(SYNTHESIZED_WIRE_41),
	.RD(MEMO));


MUX2to1	b2v_inst9(
	.select(RegSrc[0]),
	.mux_in_0(INSTR_OUT[8:6]),
	.mux_in_1(SEVEN),
	.mux_out(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst9.W = 3;


register_wen	b2v_INSTR_REG(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.enable(SYNTHESIZED_WIRE_34),
	.reg_in(MEMO),
	.reg_out(INSTR_OUT));
	defparam	b2v_INSTR_REG.W = 20;


register_wen	b2v_PC(
	.clock(clk),
	.rst(SYNTHESIZED_WIRE_38),
	.enable(SYNTHESIZED_WIRE_36),
	.reg_in(SYNTHESIZED_WIRE_42),
	.reg_out(SYNTHESIZED_WIRE_40));
	defparam	b2v_PC.W = 8;

assign	AluFlags = AluFlags_ALTERA_SYNTHESIZED;
assign	FOUR[2] = 1;
assign	FOUR[7:3] = 5'b00000;
assign	FOUR[1:0] = 2'b00;
assign	SEVEN = 3'b111;

endmodule
