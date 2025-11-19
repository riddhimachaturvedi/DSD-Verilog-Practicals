`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:43:45
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(

    );
    
reg a, b, c_in;
wire sum, c_out;
 
full_adder uut (a, b, c_in, sum, c_out);  
 
// unit under test
 
initial begin

a = 0;
b = 0;
c_in = 0;
#10
 
a = 0;
b = 0;
c_in = 1;

#10

a = 0;
b = 1;
c_in = 0;

#10

a = 0;
b = 1;
c_in = 1;

#10

a = 1;
b = 0;
c_in = 0;
#10
 
a = 1;
b = 0;
c_in = 1;

#10

a = 1;
b = 1;
c_in = 0;

#10

a = 1;
b = 1;
c_in = 1;

#10

$finish;

end

endmodule
