`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 10:21:30 PM
// Design Name: 
// Module Name: DFF
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


module DFF(D, CLK, reset, Q);
    input D;
    input CLK;
    input reset;
    output Q;
    
    wire in;
    
    wire Q;
    
    assign in = D^Q;
    TFF T(in, CLK, reset, Q);
   
    
        
endmodule
