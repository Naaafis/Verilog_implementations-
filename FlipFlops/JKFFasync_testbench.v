`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 01:23:00 AM
// Design Name: 
// Module Name: JKFFasync_testbench
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


module JKFFasync_testbench();

reg CLK = 0;
reg J;
reg K;
reg RESET_N;

wire Q;

JKFFasync jffas1(J,K, CLK, RESET_N, Q);

always begin
J = 0; K = 0; RESET_N = 0; CLK = 0;


        #5 J = 0; K = 1;
        #5 
        #5  J = 1; K = 0;
        #5 
        #5  J = 1; K = 1;
        #5  
        #5  RESET_N = 1;
        #5 
        #5  J = 0; K = 1;
        #5 
        #5  J = 1; K = 0;
        #5 
        #5  J = 1; K = 1; RESET_N = 0;
        #5 
        #5  J = 1; K = 1;
        #5 
        #5 
        #5 
        #5 J = 0; K = 0; CLK = 0;
        
        #5 RESET_N = 1; 
        #5 RESET_N = 0; J = 1; K = 1;
        #5 RESET_N = 1; 
        #5 RESET_N = 0; J = 1; K = 0;
        #5 RESET_N = 1;
        #5 RESET_N = 0; J = 1; K = 1;
        #5 RESET_N = 1;             
end

  always begin 
        #2 CLK = ~CLK;
        end
endmodule
