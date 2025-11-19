`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:28:26
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,
    input CLK,
    input RESET,
    output reg Q
);

always @(posedge CLK or posedge RESET) begin
    if (RESET)
        Q <= 0;
    else if (t == 1)
        Q <= ~Q;
    else
        Q <= Q;
end

endmodule


