`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:08:01
// Design Name: 
// Module Name: counter_fix
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

module counter_fix(
    input CLK,
    input RESET,
    output wire [2:0] Q
);

wire t0, t1, t2;

assign t0 = (~Q[2] & ~Q[1]) | (Q[2] & Q[0]);
assign t1 = Q[1] | (~Q[2] & ~Q[0]) | (Q[2] & Q[0]);
assign t2 = (Q[2] & ~Q[0]) | (Q[1] & Q[0]);

t_ff ff0(t0, CLK, RESET, Q[0]);
t_ff ff1(t1, CLK, RESET, Q[1]);
t_ff ff2(t2, CLK, RESET, Q[2]);

endmodule
