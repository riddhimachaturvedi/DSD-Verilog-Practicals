`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 22:08:21
// Design Name: 
// Module Name: counter_fix_tb
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
module counter_fix_tb();

reg CLK, RESET;
wire [2:0] Q;

counter_fix uut(CLK, RESET, Q);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;     
end

initial begin
    RESET = 1;
    #20;                      
    RESET = 0;

    #200;
    $finish;
end

endmodule
