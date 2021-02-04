module register_file #(parameter W=8)(
input clock,
input rst,
input [2:0] A3,
input [2:0] A2,
input [2:0] A1,
input [W-1:0] WD3,
input [W-1:0] R7,
input enable,
output [W-1:0] RD1,
output [W-1:0] RD2
); 

wire [7:0] decoder_out;
wire wen_0,wen_1,wen_2,wen_3,wen_4,wen_5,wen_6,wen_7;
wire register0,register1,register2,register3,register4,register5,register6,register7;

assign wen_0 = decoder_out[0] & enable,
		 wen_1 = decoder_out[1] & enable,
		 wen_2 = decoder_out[2] & enable,
		 wen_3 = decoder_out[3] & enable,
		 wen_4 = decoder_out[4] & enable,
		 wen_5 = decoder_out[5] & enable,
		 wen_6 = decoder_out[6] & enable,
		 wen_7 = decoder_out[7] & enable;
		 
		 
MUX8to1 mux1(A1,register0,register1,register2,register3,register4,register5,register6,register7,RD1);
MUX8to1 mux2(A2,register0,register1,register2,register3,register4,register5,register6,register7,RD2);

register_wen  #(W) register_0(clock,rst,wen_0,WD3,register0);
register_wen  #(W) register_1(clock,rst,wen_1,WD3,register1);
register_wen  #(W) register_2(clock,rst,wen_2,WD3,register2);
register_wen  #(W) register_3(clock,rst,wen_3,WD3,register3);
register_wen  #(W) register_4(clock,rst,wen_4,WD3,register4);
register_wen  #(W) register_5(clock,rst,wen_5,WD3,register5);
register_wen  #(W) register_6(clock,rst,wen_6,WD3,register6);
register_wen  #(W) register_7(clock,rst,wen_7,R7,register7);


DECODER3_8 dec(A3,decoder_out);

endmodule