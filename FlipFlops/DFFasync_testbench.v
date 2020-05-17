`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 11:22:38 PM
// Design Name: 
// Module Name: DFFasync_testbench
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


module DFFasync_testbench(

    );
    
    reg D;
    reg CLK = 0;
    reg CLEAR;
    //reg Q;
    wire Q;
    
    
    DFFasync dffasync1(D, CLK, CLEAR, Q);
    
    always begin 
        CLEAR = 1'b1;
        D = 1;
        #5;
        CLEAR = 1'b0;
        #5; 
      
        #5;
     
        D = 0;
        #5;
        CLEAR = 1;
        #5;
    
        D = 1;
        #5;
        CLEAR = 1'b1;
        
      
    end
    
      always begin 
        #2 CLK = ~CLK;
        end
    
endmodule
