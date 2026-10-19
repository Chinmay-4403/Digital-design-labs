`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 20:20:17
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop(
input wire clk,
input wire rst_n,
input wire d,
output reg q
);
always @ (posedge clk or negedge rst_n)
begin
if (!rst_n) begin
q<= 1'b0;
end 
else begin
q<=d;
end
end
endmodule
