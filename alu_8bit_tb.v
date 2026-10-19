`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 12:38:23
// Design Name: 
// Module Name: alu_8bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_8bit_tb;
reg [7:0] A,B;
reg [3:0] ALU_Sel;
wire [7:0] ALU_result;

alu_8bit a1(A,B,ALU_Sel,ALU_result);
initial
begin
ALU_Sel=4'b0000;
    A=8'b0000_0000;B=8'b0000_1111;
#50 A=8'b1111_0000;B=8'b0000_1111;
#50 A=8'b1111_1111;B=8'b1111_1111;
end
initial
begin
$monitor("A=%b,B=%b,ALU_Sel=%b,ALU_result=%b",A,B,ALU_Sel,ALU_result);
end
endmodule
