module data_instr_memory(clk,ADD,mem_write,WD,RD);
input clk,mem_write;
input [7:0] ADD,WD;
output [19:0] RD;
reg [4:0] MEMORY [255:0];
assign RD = {MEMORY[ADD+3],MEMORY[ADD+2],MEMORY[ADD+1],MEMORY[ADD]};
integer location;

initial 
begin

{MEMORY[3],MEMORY[2],MEMORY[1],MEMORY[0]}     =	20'b1110_00_00010_000_001_000; //ADD R2,R0,#4
{MEMORY[7],MEMORY[6],MEMORY[5],MEMORY[4]}     =	20'b1110_00_00010_000_010_000; //ADD R2, R2, #1
{MEMORY[11],MEMORY[10],MEMORY[9],MEMORY[8]}   = 20'b1110_00_10001_000_010_001; //CLR R2 
{MEMORY[15],MEMORY[14],MEMORY[13],MEMORY[12]} = 20'b1110_00_10000_000_001_101; //AND R2,R0, #4  
{MEMORY[19],MEMORY[18],MEMORY[17],MEMORY[16]} = 20'b1110_00_00101_010_001_000; //OR R2,R0, #4  
{MEMORY[23],MEMORY[22],MEMORY[21],MEMORY[20]} = 20'b1110_00_10000_000_001_001; //EXOR R2, R0, #4  
{MEMORY[27],MEMORY[26],MEMORY[25],MEMORY[24]} = 20'b1110_00_1_0110_000_010_100; //LSR R2, #4
{MEMORY[31],MEMORY[30],MEMORY[29],MEMORY[28]} = 20'b1110_00_1_0111_000_010_100; //SL R2, #4  
{MEMORY[35],MEMORY[34],MEMORY[33],MEMORY[32]} = 20'b1110_01_0_1_000_000_010_010; //STR R2, #4  
{MEMORY[39],MEMORY[38],MEMORY[37],MEMORY[36]} = 20'b1110_01_1_0_000_000_010_010; //LDRM R2, #4  
{MEMORY[43],MEMORY[42],MEMORY[41],MEMORY[40]} = 20'b1110_10_0_0_00000000_0100;  //BUN #4 



for(location=44; location<256; location=location+1) 
	begin
	MEMORY[location] = 5'b0;
	end
end

always @(posedge clk) 
begin
	if(mem_write) begin
	{MEMORY[ADD + 3],MEMORY[ADD + 2],MEMORY[ADD + 1],MEMORY[ADD]} <= {12'b0, WD};
	end

end


endmodule









