`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 11:20:58 PM
// Design Name: 
// Module Name: Fib
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


module Fib(clock, reset, aout, state); //no ain needed the states cycle
    input clock, reset;
    output reg [5:0] aout;
    output reg [3:0] state;

    always @(posedge clock or posedge reset)
    begin
       if (reset == 1'b1)
       begin
            state <= 4'b0000;
       end
       else
       begin
            case(state)
                4'b0000:
                    begin
                    aout <= 6'b000000; // 0
                    state <= 4'b0001; // next state
                    end
                4'b0001:
                    begin
                    aout <= 6'b000001; // 1
                    state <= 4'b0010; // next state
                    end
                4'b0010:
                    begin
                    aout <= 6'b000001; // 1
                    state <= 4'b0011; // next state
                    end
                4'b0011:
                    begin
                    aout <= 6'b000010; // 2
                    state <= 4'b0100; // next state
                    end
                4'b0100:
                    begin
                    aout <= 6'b000011; // 3
                    state <= 4'b0101; // next state
                    end
                4'b0101:
                    begin
                    aout <= 6'b000101; // 5
                    state <= 4'b0110; // next state
                    end
                4'b0110:
                    begin
                    aout <= 6'b001000; // 8
                    state <= 4'b0111; // next state
                    end
                4'b0111:
                    begin
                    aout <= 6'b001101; // 13
                    state <= 4'b1000; // next state
                    end
                4'b1000:
                    begin
                    aout <= 6'b010101; // 21
                    state <= 4'b1001; // next state
                    end            
                4'b1001:
                    begin
                    aout <= 6'b100010; // 34
                    state <= 4'b0000; // next state
                    end            
            endcase         
       end      
        
    end    
endmodule
