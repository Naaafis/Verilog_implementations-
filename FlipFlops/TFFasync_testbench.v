`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 09:29:00 PM
// Design Name: 
// Module Name: TFFasync_testbench
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


module TFFasync_testbench();

    reg t;
    reg CLK = 0;
    reg CLEAR;
    //reg Q;
    wire Q;
    
    
    TFFasync tffasync1(t, CLK, CLEAR, Q);
    
    always begin 
        CLEAR = 1'b1;
        t = 1;
        #5;
        CLEAR = 1'b0;
        #5 t = 1;
        #5
        #5  t = 0;
        #5 CLEAR = 1;
        #5;
       
        t = 0;
        #5;
   
        #5;
      
        t = 1;
        #5;
        CLEAR = 1'b1;
        
      
    end
    
    always begin
        #5 CLK = ~CLK;
    end
    
    
endmodule
