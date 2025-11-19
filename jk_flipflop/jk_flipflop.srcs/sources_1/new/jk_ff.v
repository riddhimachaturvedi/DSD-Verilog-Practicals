`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 17:28:25
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j, k, clk,
    output reg q,
    output q_bar
    );
    
wire j_g, k_g;
assign q_bar = ~q;   


always @(posedge clk) begin
    case ({j, k})
        2'b10: q <= 1'b1;
        2'b01: q <= 1'b0;
        2'b00: q <= q;
        2'b11: q <= ~q;
    endcase
end
endmodule

