`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2020 11:15:17 PM
// Design Name: 
// Module Name: TFF_testbench
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


module TFF_testbench();
    
    reg t;
    reg CLK = 0;
    reg RESET_N;
    //reg Q;
    wire Q;
    
    
    TFF tff1(t, CLK, RESET_N, Q);
    
    always begin 
        RESET_N = 1'b1;
        t = 0;
        
        #5;
        RESET_N = 1'b0;
        #5;
        t = 1;
        #5;
        #5;
        t = 0;
        RESET_N = 1'b1;
        #5;
        #10;      
    end
    
    always begin
        #5 CLK = ~CLK;
    end
    
  
    
  
endmodule
