`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 16:03:04
// Design Name: 
// Module Name: uni_add_sub
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


module uni_add_sub(
    input m, a3, a2, a1, a0, b3, b2 ,b1, b0, 
    output c3, s3, s2, s1, s0, v 

    );
 
assign c_in = m;   
assign s0 = a0 ^ (b0 ^ m)^ c_in;
assign c0 = (a0 & (b0 ^ m)) | (c_in & ( a0 ^ (b0 ^ m)));

assign s1 = a1 ^ (b1 ^ m)^ c0;
assign c1 = (a1 & (b1 ^ m)) | (c0 & ( a1 ^ (b1 ^ m)));

assign s2 = a2 ^ (b2 ^ m)^ c1;
assign c2 = (a2 & (b2 ^ m)) | (c1 & ( a2 ^ (b2 ^ m)));

assign s3 = a3 ^ (b3 ^ m)^ c2;
assign c3 = (a3 & (b3 ^ m)) | (c2 & ( a3 ^ (b3 ^ m)));

assign v = c3 ^ c2;
endmodule
