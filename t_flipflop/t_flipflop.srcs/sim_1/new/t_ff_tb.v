`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:30:01
// Design Name: 
// Module Name: t_ff_tb
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
module t_ff_tb;

    reg t;
    reg CLK;
    reg RESET;
    wire Q;

    t_ff uut (t, CLK, RESET, Q);

    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        RESET = 1;
        t = 0;
        #10;

        RESET = 0;
        #10;

        t = 1;
        #10;

        t = 0;
        #10;

        RESET = 1;
        #10;
        RESET = 0;

        t = 1;
        #10;

        $finish;
    end

endmodule

