module DECODER3_8(
input wire [2:0] dec_in,
output [7:0] dec_out
);

assign dec_out[7] = dec_in[2] & dec_in[1] & dec_in[0],
		 dec_out[6] = dec_in[2] & dec_in[1] & ~dec_in[0],
		 dec_out[5] = dec_in[2] & ~dec_in[1] & dec_in[0],
		 dec_out[4] = dec_in[2] & ~dec_in[1] & ~dec_in[0],
		 dec_out[3] = ~dec_in[2] & dec_in[1] & dec_in[0],
		 dec_out[2] = ~dec_in[2] & dec_in[1] & ~dec_in[0],
		 dec_out[1] = ~dec_in[2] & ~dec_in[1] & dec_in[0],
		 dec_out[0] = ~dec_in[2] & ~dec_in[1] & ~dec_in[0];
		 
endmodule
