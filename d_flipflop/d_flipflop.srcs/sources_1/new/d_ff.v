`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:36:09
// Design Name: 
// Module Name: d_ff
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

module d_ff(
    input D,
    input CLK,
    input RESET,
    output reg Q
);

always @(posedge CLK or posedge RESET) begin
    if (RESET)
        Q <= 0;
    else
        Q <= D;     // D FF simply stores the input
end

endmodule
