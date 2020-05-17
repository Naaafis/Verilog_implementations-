`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 11:43:48 PM
// Design Name: 
// Module Name: Fib_testbench
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


module Fib_testbench();
    wire [5:0] aout;
    wire [3:0] state;
    reg clock;
    reg reset;
    
    Fib fibonacci(clock, reset, aout, state);
    
    initial
    begin
        reset = 1'b0;
        clock = 1'b0;
        
        #4 reset = 1'b1;
        #2 reset = 1'b0;
        
    end
    
    always
    begin
        #3 clock = ~clock;
    end
    
    
endmodule
