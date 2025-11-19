`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:51:59
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb(

    );
    
reg a, b, b_in;
wire difference, b_out;

full_sub uut (a, b, b_in, difference, b_out);  
 
// unit under test
 
initial begin

a = 0;
b = 0;
b_in = 0;
#10
 
a = 0;
b = 0;
b_in = 1;

#10

a = 0;
b = 1;
b_in = 0;

#10

a = 0;
b = 1;
b_in = 1;

#10

a = 1;
b = 0;
b_in = 0;
#10
 
a = 1;
b = 0;
b_in = 1;

#10

a = 1;
b = 1;
b_in = 0;

#10

a = 1;
b = 1;
b_in = 1;

#10

$finish;

end

endmodule
