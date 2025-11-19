`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:15:27
// Design Name: 
// Module Name: mux_8
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

module mux_8(
    input i0, i1, i2, i3, i4, i5, i6, i7,
    input s0, s1, s2,
    output y
    );

assign y = (~s2 & ~s1 & ~s0 & i0) | (~s2 & ~s1 &  s0 & i1) | (~s2 &  s1 & ~s0 & i2) | (~s2 &  s1 &  s0 & i3) | ( s2 & ~s1 & ~s0 & i4) | ( s2 & ~s1 &  s0 & i5) | ( s2 &  s1 & ~s0 & i6) | ( s2 &  s1 &  s0 & i7);

endmodule


