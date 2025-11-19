`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:59:17
// Design Name: 
// Module Name: counter_new_tb
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


module counter_new_tb(

    );

reg CLK, RESET;
wire [2:0] Q;
counter_new uut(CLK, RESET, Q);
initial begin
CLK = 0;
forever #5 CLK = ~CLK;
end

initial begin
RESET = 1;
#12;
RESET = 0;
#120;
$finish;
end
endmodule

