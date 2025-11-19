`timescale 1ns / 1ps

//Whatever simulation you run 'lns' -> Basic Timing Unit of the Simulation
// '1 ps' refering to Time Precision or Time Step

module gates(
    input a, b,
    output y1, y2, y3, y4, y5, y6, y7
    );
     
assign y1 = a & b; //AND
assign y2 = ~a; //NOT
assign y3 = a | b; //OR
assign y4 = a ^ b;  // XOR
assign y5 = a ~^ b;  //XNOR
assign y6 = ~(a | b); //XOR
assign y7 = ~(a & b); //NAND
 

endmodule