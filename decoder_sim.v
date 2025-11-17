`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 01:52:50
// Design Name: 
// Module Name: decoder_sim
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

module decoder_sim(

    );
    
reg a,b;
wire d0, d1, d2, d3;

decoder uut (a, b, d0, d1, d2, d3);

initial begin
a = 0;
b = 0;
#10

a = 0;
b = 1;
#10

a = 1;
b = 0;
#10

a = 1;
b = 1;
#10

$finish;

end
endmodule
