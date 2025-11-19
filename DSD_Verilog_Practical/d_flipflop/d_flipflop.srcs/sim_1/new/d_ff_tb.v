`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:36:30
// Design Name: 
// Module Name: d_ff_tb
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

module d_ff_tb;

    reg D;
    reg CLK;
    reg RESET;
    wire Q;

    d_ff uut (D, CLK, RESET, Q);

    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        RESET = 1;
        D = 0;
        #10;

        RESET = 0;     
        #10;

        D = 1;  #10;
        D = 0;  #10;
        D = 1;  #10;

        RESET = 1; #10;
        RESET = 0; #10;

        D = 0;  #20;
        D = 1;  #20;

        $finish;
    end

endmodule
