`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 21:00:14
// Design Name: 
// Module Name: up_counter_4bit
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


module up_counter_4bit(
input wire clk,
input wire reset,
input wire enable,
output reg [3:0] q
);
always@(posedge clk)
begin
if (reset) begin
q<=4'b0000; // reset counter value to 0
end else if (enable) begin
q<= q+1'b1;// increment value of counter if enable is active high
end
end
endmodule
