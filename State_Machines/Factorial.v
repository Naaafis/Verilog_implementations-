`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2020 12:11:09 AM
// Design Name: 
// Module Name: Factorial
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


module Factorial(clock, ain, counter, overflow, aout);
    input [15:0] ain; // could calculate factorial of an input of the number up to 131071
    input clock;
    output reg [15:0] counter = 16'b0000000000000001;
    //output reg [15:0] checknew;
    output overflow;
    output reg [20:0] aout = 21'b000000000000000000001; // extra bits added if necessary
    
    assign overflow = (ain > 16'b1111111111111111) ? 1 : 0;
    //assign checknew = ain;
    
    //initial begin
        //counter = 16'b0000000000000001;
    //end
    
    always @(posedge clock or negedge clock)
    begin
        if (overflow == 0)
        begin
            if(counter <= ain) //counter will increment until it reached the value of ain
            begin
                
                aout = aout*counter;
                counter = counter + 1;
            end
        end
    end
    
    
endmodule
