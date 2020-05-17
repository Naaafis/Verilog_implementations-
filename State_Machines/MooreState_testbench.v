`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 10:26:15 PM
// Design Name: 
// Module Name: MooreState_testbench
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


module MooreState_testbench();
    wire aout;
    //wire state;
    
    reg clock;
    reg reset;
    reg [1:0] ain;
    wire [1:0] state;
    
    //MooreState MoS(clock, reset, ain, aout, state);
    MooreState Mos(clock, reset, ain, aout, state);
    
    initial 
    begin
        reset = 1'b0;
        clock = 1'b0;
        ain = 2'b00;
        
        #4 reset = 1'b1;
        #2 reset = 1'b0;
        #10 ain = 2'b00;
        #10 ain = 2'b01;
        #10 ain = 2'b10;
        #10 ain = 2'b11;
        #10 ain = 2'b01;
        #10 ain = 2'b00;
        #10 ain = 2'b10;
        #10 ain = 2'b00;
        #10 ain = 2'b01;
        #10 ain = 2'b11;
        #10 ain = 2'b00;
        #10 ain = 2'b01;
        #10 ain = 2'b00;
        #10 ain = 2'b10;
        #10 ain = 2'b00;
        #10 ain = 2'b11;
        #10 ain = 2'b00;
        #10 ain = 2'b01;
        #10 ain = 2'b10;
        #10 ain = 2'b11;
        #10 ain = 2'b00;
        #10 ain = 2'b01;
        #10 ain = 2'b10;
        #10 ain = 2'b11;
        #10 ain = 2'b00;
        #10 ain = 2'b01;
        #10 ain = 2'b10;
        #10 ain = 2'b11;
        
        
               
    end
    
    always
    begin
        #3 clock = ~clock;
    end


endmodule