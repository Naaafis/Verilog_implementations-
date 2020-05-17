`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 12:52:53 AM
// Design Name: 
// Module Name: JKFFsync_testbench
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


module JKFFsync_testbench();

reg CLK = 0;
reg J;
reg K;
reg RESET_N;

wire Q;

JKFFsync jffs1(J, K, CLK, RESET_N, Q);

always begin
J = 0; K = 0;
RESET_N = 0;
CLK = 0;

        #5 
        #5  J = 0; K = 1;
        #5 
        #5  J = 2; K = 0;
        #5 
        #5  J = 1; K = 1;
        #5  
        #5  RESET_N = 1;
        #5 
        #5  J = 0; K = 1;
        #5
        #5 J = 1; K = 0;
        #5 
        #5  J = 1; K = 1; 
             
end

always begin 
        #2 CLK = ~CLK;
        end

endmodule
