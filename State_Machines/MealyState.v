`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 04:11:25 PM
// Design Name: 
// Module Name: MealyState
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


module MealyState(clock, reset, ain, aout, state);
    output reg aout;
    input clock, reset, ain;
    
    output reg[0:0] state; //state will be either 0 or 1; 
    
    //default state is 0
    //Current state of 0 or 1 and an input of 0 will cause next state to be 0
    //Current state of 0 or 1 and an input of 1 will cause next state to be 1
    
    always @(posedge clock or posedge reset or negedge clock)
    begin
        if (reset == 1'b1)
            state <= 1'b0;
        else
            case(state)
                1'b0: //state <= (ain==1'b1) ? 1'b1 : 1'b0;
                    if(ain == 1'b1)
                    begin
                        aout = 1;
                        state <= 1'b1;
                    end
                    else
                    begin
                        aout =0;
                        state <= 1'b0;
                    end
                1'b1: //state <= (ain==1'b1) ? 1'b1 : 1'b0;
                    if(ain == 1'b1)
                    begin
                        aout = 0;
                        state <= 1'b1;
                    end
                    else
                    begin
                        aout =0;
                        state <= 1'b0;
                    end
                default: state <= 1'b0;
            endcase
    end
    
    //always @(posedge clock or posedge reset)
    //begin    
        
    //assign aout = (ain && (state == 1'b0)) ? 1'b1 : 1'b0;
    //end
    
endmodule
