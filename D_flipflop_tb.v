`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2026 20:27:02
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb;
reg clk;
reg rst_n;
reg d;
wire q;
D_flipflop uut(
.clk(clk),
.rst_n(rst_n),
.d(d),
.q(q)
);

//invert clk every 5 ns
always #5 clk=~clk;
//initialising inputs
initial begin
clk =0;
rst_n=0;
d=0;
//displaying signal changes
$monitor("Time = %0t ns | clk = %b | rst_n = %b | d = %b | q = %b", $time, clk, rst_n, d, q);
//apply reset for 15ns
#15;
rst_n=1;
//testing
#10 d=1;
#20 d=0;
#15 d=1;
//verifying asynchronous reset behaviour
#12 rst_n=0;
#10 rst_n=1;
//operation after reset
#10 d=1;
//end simulation
#20;
$finish;
end
endmodule
