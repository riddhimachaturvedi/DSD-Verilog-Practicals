`timescale 1ns / 1ps

module bool_1(
    input a, b, c,
    output y
    );
 
 // (A + B)(~A + C)(B + C)  
assign y = (a | b) & (~a | c) & (b | c);

endmodule
