`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 21:07:03
// Design Name: 
// Module Name: up_counter_4bit_tb
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


module up_counter_4bit_tb;
reg clk;
reg enable;
reg reset;
wire [3:0] q;
up_counter_4bit uut(
.clk(clk),
.reset(reset),
.enable(enable),
.q(q)
);
//invert clock at every 5ns
always #5 clk=~clk;
initial
 begin
//initialising input values
clk=0;
reset=1;
enable=0;
//hold reset for 15 ns
#15;
reset=0;
enable=1;
//run through a full 4 bit cycle
#160;
//test enable disable
enable=0;
#30;
enable=1;
#30;

//testing reset
reset=1;
#20;
reset=0;
#10;
$finish;
end
//monitor changes
initial begin
$monitor("Time = %0t | reset = %b | enable = %b | q = %b (%0d)", $time, reset, enable, q, q);
end
endmodule
