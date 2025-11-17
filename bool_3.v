`timescale 1ns / 1ps

module bool_3(
    input a, b, c, d,
    output y

    );

//AB + ~AC + BCD    
assign y = (a & b)|(~a & c)|(b & c & d);

endmodule
