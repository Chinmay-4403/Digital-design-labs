`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 12:23:59
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit(
input [7:0] A,B,
input [3:0] ALU_Sel,
output [7:0] ALU_result
);
reg [7:0] ALU_result;
always@(*)begin
case(ALU_Sel)
4'b0000: ALU_result=A+B;
4'b0001: ALU_result=A-B;
4'b0010: ALU_result=A/B;
4'b0011: ALU_result=A<<1;
4'b0100: ALU_result=A>>1;
4'b0101: ALU_result={A[6:0],A[7]};
4'b0110: ALU_result={A[0],A[7:1]};
4'b0111: ALU_result=A&B;
4'b1000: ALU_result=A | B;
4'b1001: ALU_result=A^B;
4'b1010: ALU_result=~(A&B);
4'b1011: ALU_result=~(A|B);
4'b1100: ALU_result=~(A^B);
4'b1101: ALU_result=(A>B)?8'd1:8'd0;
4'b1110: ALU_result=(A==B)?8'd1:8'd0;
default:ALU_result=8'bX;
endcase
end
endmodule

    

