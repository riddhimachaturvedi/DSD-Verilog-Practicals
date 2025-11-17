`timescale 1ns / 1ps

module mux(
    input i0, i1, i2, i3, s, s0, s1,
    output y

    );
    
// 2x1 mux:
assign y = (~s & i0 ) | (s & i1);

//4x1 mux:
assign y = (~s0 & ~s1 & i0) | (s0 & ~s1 & i1) | (~s0 & s1 & i2) | (s0 & s1 & i3);
endmodule
