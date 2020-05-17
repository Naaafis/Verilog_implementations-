`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 04:32:17 PM
// Design Name: 
// Module Name: MealyState_testbench
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

module MealyState_testbench();
    wire aout;
    //wire state;
    
    reg clock;
    reg reset;
    reg ain;
    wire state;
    
    MealyState MeS(clock, reset, ain, aout, state);
    
    initial 
    begin
        reset = 1'b0;
        clock = 1'b0;
        ain = 1'b0;
        
        #4 reset = 1'b1;
        #2 reset = 1'b0;
        #10 ain = 1'b1;
        #10 ain = 1'b0;
       #10 ain = 1'b1;
        #10 ain = 1'b0;
       #10 ain = 1'b1;
        #10 ain = 1'b0;
       #10 ain = 1'b1;
        #10 ain = 1'b0;
       #10 ain = 1'b1;
        #10 ain = 1'b0;
       #10 ain = 1'b1;
        #10 ain = 1'b0;
       
    end
    
    always
    begin
        #5 clock = ~clock;
    end
        
endmodule
