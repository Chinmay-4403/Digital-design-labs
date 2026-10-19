
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 13:51:02
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb;

    
    reg  [2:0] in;
    reg        enable;
    wire [7:0] out;

   
    decoder_3to8 uut (
        .in(in),
        .enable(enable),
        .out(out)
    );

    integer i;

    initial begin
        
        $monitor("Time = %0tns | enable = %b | in = %b (%0d) | out = %b", 
                 $time, enable, in, in, out);
        enable = 0;
        in = 3'b000; #10;
        in = 3'b101; #10;

        
        enable = 1;
        for (i = 0; i < 8; i = i + 1) begin
            in = i;
            #10;
        end

        $finish;
    end

endmodule
