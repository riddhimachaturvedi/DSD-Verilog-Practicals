`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 17:02:19
// Design Name: 
// Module Name: univ_add_sub_tb
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


module univ_add_sub_tb(

    );
    
reg m, a3, a2, a1, a0, b3, b2 ,b1, b0;
wire c3, s3, s2, s1, s0, v ;

uni_add_sub uut(m, a3, a2, a1, a0, b3, b2 ,b1, b0, c3, s3, s2, s1, s0, v);

initial begin

//Add 9 and 10 [1001 + 1010]
m = 0;
a3 = 1; a2 = 0; a1 = 0; a0 = 1;
b3 = 1; b2 = 0; b1 = 1; b0 = 0;
#10

//Sub 10 from 9 [1001 - 1010]
m = 1;
a3 = 1; a2 = 0; a1 = 0; a0 = 1;
b3 = 1; b2 = 0; b1 = 1; b0 = 0;
#10

$finish;

end 

endmodule
