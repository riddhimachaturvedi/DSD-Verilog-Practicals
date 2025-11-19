`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 01:30:05
// Design Name: 
// Module Name: priority_enc_sim
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


module priority_enc_sim(

    );
    
reg d0, d1, d2, d3;
wire y0, y1, v;

priority_enc uut (d0, d1, d2, d3, y0, y1, v);

initial begin
d0 = 0;
d1 = 0;
d2 = 0;
d3 = 0;
#10

d0 = 1;
d1 = 1;
d2 = 0;
d3 = 0;
#10

d0 = 0;
d1 = 0;
d2 = 0;
d3 = 1;
#10

d0 = 0;
d1 = 0;
d2 = 1;
d3 = 1;
#10

$finish;

end

endmodule
