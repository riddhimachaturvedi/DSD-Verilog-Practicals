`timescale 1ns / 1ps

module priority_enc(
        input d0, d1, d2, d3,
        output y0, y1, v
    );
    
assign y0 = d3 | (~d2 & d1);
assign y1 = d2 | d3;
assign v = d0 | d1 | d2 | d3;

endmodule
