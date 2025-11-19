`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 01:14:44
// Design Name: 
// Module Name: mux_sim
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

module mux_sim();

reg i0, i1, i2, i3, s0, s1;
wire y;

mux uut(i0, i1, i2, i3, s0, s1, y);

initial begin
    i0 = 1; i1 = 0; i2 = 0; i3 = 0;
    s0 = 0; s1 = 0;
    #10;

    i0 = 0; i1 = 1; i2 = 0; i3 = 0;
    s0 = 1; s1 = 0;
    #10;

    i0 = 0; i1 = 0; i2 = 1; i3 = 0;
    s0 = 0; s1 = 1;
    #10;

    i0 = 0; i1 = 0; i2 = 0; i3 = 1;
    s0 = 1; s1 = 1;
    #10;

    $finish;
end

endmodule
