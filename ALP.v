module ALP #(parameter W = 8)(A, B, I, F, C_out, OVF, Z, N);

	input signed [7:0] A;
	input signed [7:0] B;
	input [3:0] I;

	output reg C_out, OVF, Z, N;
	output reg [7:0] F;

always @(A, B, I)
	begin
	case(I)
		4'b0000:	begin						// A + B, OVF and C_out are updated 
					{C_out, F} = A + B;
					if (A[7] ~^ B[7])
						OVF = F[7] ^ A[7];
					else
						OVF = 0;
					end
		4'b0001:	begin						// A - B, OVF and C_out are updated 
					{C_out, F} = A - B;
					if ((A[7] ^ B[7]))
						OVF = F[7] ^ A[7];
					else
						OVF = 0;
					end
		4'b0010:	begin					// Clear
					F = 0;
					C_out = 0;
					OVF = 0;
					end
		4'b0011:	begin					// A and B
					F = A & B;
					C_out = 0;
					OVF = 0;
					end
		4'b0100:	begin					// A or B
					F = A | B;
					C_out = 0;
					OVF = 0;
					end
		4'b0101:	begin					// A xor B
					F = A ^ B;
					C_out = 0;
					OVF = 0;				
					end
		4'b0110: begin				// logical shift right
					F = A >> B;
					end
		4'b0111: begin				// shift left
					F = A << B;
					end
		4'b1000: begin				// arithmetic shift right
					F = A >>> B;
					end
		4'b1001: begin				// rotate right
						if(B % 8 == 8'b00000001 )
						begin 
						F = {A[0],A[7:1]};
						end
						else if(B % 8 == 8'b00000010)
						begin
						F = {A[1:0],A[7:2]};
						end
						else if(B % 8 == 8'b00000011)
						begin
						F = {A[2:0],A[7:3]};
						end			
						else if(B % 8 == 8'b00000100)
						begin
						F = {A[3:0],A[7:4]};
						end
						else if(B % 8 == 8'b00000101)
						begin
						F = {A[4:0],A[7:5]};
						end
						else if(B % 8 == 8'b00000110)
						begin
						F = {A[5:0],A[7:6]};
						end			
						else if(B % 8 == 8'b00000111)
						begin
						F = {A[6:0],A[7]};
						end
					end
		4'b1010: begin				// rotate left
					if(B % 8 == 8'b00000001 )
						begin 
						F = {A[6:0],A[7]};
						end
						else if(B % 8 == 8'b00000010)
						begin
						F = {A[5:0],A[7:6]};
						end
						else if(B % 8 == 8'b00000011)
						begin
						F = {A[4:0],A[7:5]};
						end			
						else if(B % 8 == 8'b00000100)
						begin
						F = {A[3:0],A[7:4]};
						end
						else if(B % 8 == 8'b00000101)
						begin
						F = {A[2:0],A[7:3]};
						end
						else if(B % 8 == 8'b00000110)
						begin
						F = {A[1:0],A[7:2]};
						end			
						else if(B % 8 == 8'b00000111)
						begin
						F = {A[0],A[7:1]};
						end
					
					end
	endcase			
	N = F[7];
	Z = (F == 0);
	end
endmodule