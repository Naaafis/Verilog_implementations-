`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2020 12:25:10 AM
// Design Name: 
// Module Name: Factorial_testbench
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


module Factorial_testbench();
    wire overflow;
    reg [15:0] ain;
    reg clock;
    wire [15:0] counter;
    wire [20:0] aout;
    
    Factorial Fac(clock, ain, counter, overflow, aout);
    
    initial begin
        clock = 1'b0;
        ain = 16'b0000000000000100;
        
        //#10 ain = 16'b0000000000001000;
        
        //#30 ain = 16'b0000000000001010;
        
        //#40 ain = 16'b0000000000000110;
        
        //#16 ain = 16'b0000000000100010;
        #100 $finish;
        
    end
    
    always begin
        #2 clock = ~clock;
    end
endmodule
