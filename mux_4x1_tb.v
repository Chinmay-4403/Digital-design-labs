`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2026 11:01:32
// Design Name: 
// Module Name: mux_4x1_tb
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


`timescale 1ns / 1ps

module mux4x1_tb;

    
    reg  [3:0] in;
    reg  [1:0] sel;
    wire       out;

    // Instantiate the Device Under Test (DUT)
    mux4x1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        
        $monitor("Time = %0t ns | in = %b | sel = %b | out = %b", $time, in, sel, out);

        
        in = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10; 
        sel = 2'b10; #10; 
        sel = 2'b11; #10; 

       
        in = 4'b0111;
        sel = 2'b00; #10; 
        sel = 2'b01; #10; 
        sel = 2'b10; #10; 
        sel = 2'b11; #10; 

        $finish;
    end

endmodule
