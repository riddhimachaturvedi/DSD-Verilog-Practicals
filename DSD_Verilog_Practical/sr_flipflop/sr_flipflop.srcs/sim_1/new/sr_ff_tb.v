`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 10:21:08
// Design Name: 
// Module Name: sr_ff_tb
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

module sr_ff_tb(
);
reg S, R, CLK;
wire Q, Qbar;
sr_ff uut (S,R,CLK,Q,Qbar);
initial begin
CLK = 0;
forever #5 CLK = ~CLK;
end
initial begin
S = 0; R = 0;
#12;
S = 0; R = 1;
#10;
S = 0; R = 0;
#10;
S = 1; R = 0;
#10;
S = 0; R = 0;
#10;
S = 1; R = 1;
#10;
$finish;
end
endmodule