`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:51:42 09/12/2023
// Design Name:   ALU_8_bit
// Module Name:   /home/ise/ALU_8_bit/ALU_8_bit_testbench.v
// Project Name:  ALU_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_8_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_8_bit_testbench;
reg clk;
reg [3:0] opcode;
reg [7:0] operand1,operand2;
wire [15:0] result;
wire c_flag,z_flag;
ALU_8_bit uut(clk,opcode,operand1,operand2,result,c_flag,z_flag);
initial
begin
$monitor($time,"clk=%b,opcode=%b,operand1=%b,operand2=%b,result=%b,c_flag=%b,z_flag=%b",clk,opcode,operand1,operand2,result,c_flag,z_flag);
end

initial
begin
clk=1'b0;
forever
#5 clk=~clk;
end

initial 
begin
#10 opcode=4'b0000; operand1=8'b00110011; operand2= 11001100;
#10
$display ("ADD_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b0001; operand1=8'b00110011; operand2= 11001100;
#10
$display ("SUB_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b0010; operand1=8'b00110011; operand2= 11001100;
#10
$display ("MUL_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b0011; operand1=8'b00110011; operand2= 11001100;
#10
$display ("DIV_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);
    
#10 opcode=4'b0100; operand1=8'b00110011;
#10
$display ("INC_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b0101;operand1= 11001100;
#10
$display ("DEC_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b0110; operand1=8'b00110011; operand2= 11001100;
#10
$display ("AND_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b0111; operand1=8'b00110011; operand2= 11001100;
#10
$display ("OR_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b1000; operand1=8'b00110011; 
#10
$display ("NOT_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b1001; operand1=8'b00110011; operand2= 11001100;
#10
$display ("XOR_result: %b, carry_flag: %b, zero_flag:%b",result,c_flag,z_flag);

#10 opcode=4'b1010; operand1=8'b00110011; operand2= 11001100;
#10
$display ("XNOR_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b1011; operand1=8'b00110011; operand2= 11001100;
#10
$display ("NAND_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

#10 opcode=4'b1100; operand1=8'b00110011; operand2= 11001100;
#10
$display ("NOR_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

//#10 opcode=4'b1101; operand1=8'b00110011; operand2= 11001100;
//$display ("SHL_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

//#10 opcode=4'b1110; operand1=8'b00110011; operand2= 11001100;
//$display ("SHR_result: %b, carry_flag: %b, zero_flag: %b",result,c_flag,z_flag);

$finish;
end
endmodule
