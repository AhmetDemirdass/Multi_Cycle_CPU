module multicycle_controller(
input clk,
input reset,
input run,
input [3:0] cond,
input [1:0] op,
input [4:0] func,
input [2:0] Rd,
output reg ADRSrc, PCWrite, MemWrite, IRWrite, RegWrite, ALUSrcA, 
output reg [1:0] ImmSrc, ALUSrcB, ResultSrc, RegSrc,
output reg [3:0] ALUControl,
output reg [3:0] state
);

reg [3:0]  nextstate;
parameter FETCH = 4'b0000 , DECODE = 4'b0001, MEMADR = 4'b0010,EXECUTE_R = 4'b0011, EXECUTE_I = 4'b0100, 
			BRANCH = 4'b0101, MEMREAD = 4'b0110, MEMWRITE = 4'b0111, ALUWB = 4'b1000, MEMWB = 4'b1001;

initial
begin 
state = 0;
nextstate = 0;
end

always@(posedge clk)
begin
if(!reset)
begin
	case(state)
		FETCH : 
		begin
			ADRSrc <= 0;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			ALUControl <= 0;
			ResultSrc <= 2'b10;
			IRWrite <= 1;
			PCWrite <= 1;
			MemWrite <= 0;
			ImmSrc <= 0;
			RegSrc <= 0;
			state <= nextstate;
		end			
		DECODE :
		begin
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			ALUControl <= 0;
			ResultSrc <= 2'b10;
			state <= nextstate;
		end 
		MEMADR :
		begin
			ALUSrcA <= 0;
			ALUSrcB <= 2'b01;
			ALUControl <= 0;
			state <= nextstate;
		end
		EXECUTE_R :
		begin
			ALUSrcA <= 0;
			ALUSrcB <= 2'b00;
			ALUControl <= func[3:0];
			state <= nextstate;
		end
		EXECUTE_I :
		begin
			ALUSrcA <= 0;
			ALUSrcB <= 2'b01;
			ALUControl <= func[3:0];
			state <= nextstate;
		end
		BRANCH :
		begin
			ALUSrcA <= 0;
			ALUSrcB <= 2'b01;
			ALUControl <= 0;
			RegSrc <= 2'b01;
			ResultSrc <= 2'b10;
			PCWrite <= 1;
			state <= nextstate;
		end
		MEMREAD : 
		begin
			ResultSrc <= 2'b00;
			ADRSrc <= 1;
			state <= nextstate;
		end
		MEMWRITE :
		begin
			ResultSrc <= 2'b00;
			ADRSrc <= 1;
			MemWrite <= 1;
			state <= nextstate;
		end
		ALUWB :
		begin
			ResultSrc <= 2'b00;
			RegWrite <= 1;
			state <= nextstate;
		end
		MEMWB :
		begin
			ResultSrc <= 2'b01;
			RegWrite <= 1;
			state <= nextstate;
		end
	endcase
end
else if(reset)
begin
	state <= FETCH;
end
end

always@(state)
begin
	case(state)
	FETCH : 
	begin
		nextstate <= DECODE;
	end			
	DECODE :
	begin
		if(op == 2'b01)
		begin
			nextstate <= MEMADR;
		end
		else if(op == 2'b00 && func[4]==0)
		begin
			nextstate <= EXECUTE_R;
		end
		else if(op == 2'b00 && func[4]==1)
		begin
			nextstate <= EXECUTE_I;
		end
		else if(op == 2'b10)
		begin
			nextstate <= BRANCH;
		end		
	end 
	MEMADR :
	begin
		if(func[3] == 1)
			nextstate <= MEMREAD;
		else 
			nextstate <= MEMWRITE;
	end
	EXECUTE_R :
	begin
		nextstate <= ALUWB;
	end
	EXECUTE_I :
	begin
		nextstate <= ALUWB;
	end
	BRANCH :
	begin
		nextstate <= FETCH;
	end
	MEMREAD : 
	begin
		nextstate <= MEMWB;
	end
	MEMWRITE :
	begin
		nextstate <= FETCH;
	end
	ALUWB :
	begin
		nextstate <= FETCH;
	end
	MEMWB :
	begin
		nextstate <= FETCH;
	end
	endcase
end


endmodule