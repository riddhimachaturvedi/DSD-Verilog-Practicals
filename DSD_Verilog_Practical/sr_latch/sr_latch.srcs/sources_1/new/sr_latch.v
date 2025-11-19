`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:01:46
// Design Name: 
// Module Name: sr_latch
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

module sr_latch(
input S, R,
output reg Q, Qbar
);

always @(*) begin
if (S == 0 && R == 0) begin
$display("Invalid SR Inputs at Time %0t", $time);
Q = 1'bx;
Qbar = 1'bx;
end
else begin
Q = ~(S & Qbar);
Qbar = ~(Q & R);
end
end
endmodule