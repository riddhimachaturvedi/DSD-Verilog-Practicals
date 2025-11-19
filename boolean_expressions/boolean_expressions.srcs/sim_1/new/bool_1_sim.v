`timescale 1ns / 1ps

module bool_1_sim(

    );


reg a, b, c;
wire y;
 
bool_1 uut (a,b,c,y);
 

initial begin

a = 0;
b = 0;
c = 1;
#10
 
a = 0;
b = 1;
c = 1;
#10

a = 1;
b = 0;
c = 1;
#10

a = 1;
b = 1;
c = 0;
#10

$finish;

end

endmodule