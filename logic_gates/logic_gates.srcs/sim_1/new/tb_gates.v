`timescale 1ns / 1ps

module tb_gates(

    );
    
reg a, b;
wire y1, y2, y3, y4, y5, y6, y7;
 
 gates uut (a, b, y1, y2, y3, y4, y5, y6, y7);  
 
 // unit under test
 //dut - device under test
 
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