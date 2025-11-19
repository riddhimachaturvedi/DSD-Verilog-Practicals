`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 20:16:49
// Design Name: 
// Module Name: mux_8_sim
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


module mux_8_sim(

    );

    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg s0, s1, s2;
    wire y;

    mux_8 uut (i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);

    initial begin
        i0=1; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
        s2=0; s1=0; s0=0;
        #10;

        i0=0; i1=1; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
        s2=0; s1=0; s0=1;
        #10;

        i0=0; i1=0; i2=1; i3=0; i4=0; i5=0; i6=0; i7=0;
        s2=0; s1=1; s0=0;
        #10;

        i0=0; i1=0; i2=0; i3=1; i4=0; i5=0; i6=0; i7=0;
        s2=0; s1=1; s0=1;
        #10;

        i0=0; i1=0; i2=0; i3=0; i4=1; i5=0; i6=0; i7=0;
        s2=1; s1=0; s0=0;
        #10;

        i0=0; i1=0; i2=0; i3=0; i4=0; i5=1; i6=0; i7=0;
        s2=1; s1=0; s0=1;
        #10;

        i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=1; i7=0;
        s2=1; s1=1; s0=0;
        #10;

        i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=1;
        s2=1; s1=1; s0=1;
        #10;

        $finish;
    end

endmodule
