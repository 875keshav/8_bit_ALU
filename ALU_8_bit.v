`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:24 09/12/2023 
// Design Name: 
// Module Name:    ALU_8_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_8_bit(clk,opcode,operand1,operand2,result,c_flag,z_flag);
input clk;
input [3:0] opcode;
input [7:0] operand1,operand2;
output reg [15:0] result=16'b0;
output reg c_flag=1'b0;
output reg z_flag=1'b0;

parameter [3:0] ADD= 4'b0000;
parameter [3:0] SUB= 4'b0001;
parameter [3:0] MUL= 4'b0010;
parameter [3:0] DIV= 4'b0011;
parameter [3:0] INC= 4'b0100;
parameter [3:0] DEC= 4'b0101;
parameter [3:0] AND= 4'b0110;
parameter [3:0] OR= 4'b0111;
parameter [3:0] NOT= 4'b1000;
parameter [3:0] XOR= 4'b1001;
parameter [3:0] XNOR= 4'b1010;
parameter [3:0] NAND= 4'b1011;
parameter [3:0] NOR= 4'b1100;
//parameter [3:0] SHL= 4'b1101;
//parameter [3:0] SHR= 4'B1110;
//parameter 

always@(posedge clk)
begin
case (opcode)
	ADD:begin
		 result<=operand1+operand2;
		 c_flag<=result[8];
		 z_flag<=(result==16'b0);
		 end
	SUB:begin
		 result<=operand1-operand2;
		 c_flag<=result[8];
		 z_flag<=(result==16'b0);
		 end
	MUL:begin
		 result<=operand1*operand2;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	DIV:begin
		 result<=operand1/operand2;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	INC:begin
		 result<=operand1+1;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	DEC:begin
		 result<=operand1-1;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end	 
	AND:begin
		 result<=operand1 & operand2;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	OR:begin
		 result<=operand1 | operand2;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	NOT:begin
		 result<= ~ operand1;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end	
	XOR:begin
		 result<=operand1 ^ operand2;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	XNOR:begin
		 result<=operand1 ~^ operand2;
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	NAND:begin
		 result<=~(operand1 & operand2);
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	NOR:begin
		 result<=~(operand1 | operand2);
		 c_flag<=0;
		 z_flag<=(result==16'b0);
		 end
	default:begin
		 result<=0;
		 c_flag<=0;
		 z_flag<=0;
		 end
	endcase
end
endmodule
