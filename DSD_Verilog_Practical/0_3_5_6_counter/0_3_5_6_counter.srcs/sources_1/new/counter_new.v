`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:23:03
// Design Name: 
// Module Name: counter_new
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


module counter_new(
    input CLK,
    input RESET,
    output wire [2:0] Q
    );

wire t0, t1, t2;

assign t0 = ~Q[1];   
assign t1 = 1'b1;    
assign t2 = Q[1];   

t_ff ff0(t0, CLK, RESET, Q[0]);
t_ff ff1(t1, CLK, RESET, Q[1]);
t_ff ff2(t2, CLK, RESET, Q[2]);

endmodule