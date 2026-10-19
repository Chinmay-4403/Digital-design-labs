`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 14:06:59
// Design Name: 
// Module Name: priority_encoder_8to3_tb
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


module priority_encoder_8to3_tb;


    
    reg  [7:0] in;
    wire [2:0] out;
    wire       valid;

    
    priority_encoder_8to3 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
       
        $monitor("Time = %0tns | in = %b | out = %b (%0d) | valid = %b", 
                 $time, in, out, out, valid);

        
        in = 8'b00000000; #10;

        
        in = 8'b00000001; #10;
        in = 8'b00000100; #10;
        in = 8'b00010000; #10;
        in = 8'b10000000; #10;

        
        in = 8'b00000011; #10; // Bits 0 and 1 active -> Output should be 1
        in = 8'b00101010; #10; // Bits 1, 3, 5 active -> Highest bit 5 takes priority -> Output: 5
        in = 8'b11111111; #10; // All bits active -> Highest bit 7 takes priority -> Output: 7

        $finish;
    end

endmodule
