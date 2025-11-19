`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:33:47
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb(

    );
reg a, b;
wire difference, borrow;
 
half_sub uut (a, b, difference, borrow);  
 
// unit under test
 
initial begin

a = 0;
b = 0;
#10
 
a = 0;
b = 1;
#10

a = 1;
b = 0;
#10

a = 1;
b = 1;
#10

$finish;

end

endmodule