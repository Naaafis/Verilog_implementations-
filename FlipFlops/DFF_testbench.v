`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 11:03:09 PM
// Design Name: 
// Module Name: DFF_testbench
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


module DFF_testbench(

    );
    
    reg D;
    reg CLK = 0;
    reg RESET_N;
    //reg Q;
    wire Q;
    
    
    DFF Dff1(D, CLK, RESET_N, Q);
    
    always begin 
        D =0;

        RESET_N = 0;
        #5 
        #5 
        #5 RESET_N = 1;
        #5 RESET_N = 0; CLK = 0;
        #5 D = 1;
        #5 
        #5 
        #5 RESET_N = 1;
        #5 RESET_N = 0;
             
    end
    
    always begin 
        #2 CLK = ~CLK;
        end
    
endmodule
