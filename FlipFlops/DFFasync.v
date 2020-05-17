`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 11:21:04 PM
// Design Name: 
// Module Name: DFFasync
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


module DFFasync(D, CLK, reset, Q);
    input D;
    input CLK;
    input reset;
    output Q;
    
    wire in;
    
    wire Q;
    
    assign in = D^Q;
    TFFasync TF(in, CLK, reset, Q);
endmodule
