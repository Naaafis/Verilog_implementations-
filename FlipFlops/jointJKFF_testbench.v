`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 02:07:15 AM
// Design Name: 
// Module Name: jointJKFF_testbench
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


module jointJKFF_testbench();
    
reg CLK = 0; reg J ;reg K; reg RESET_N;
wire Q_async; wire Q_sync;

JKFFasync jffas1(J, K, CLK, RESET_N, Q_async);
JKFFsync jffs1(J, K, CLK, RESET_N, Q_sync);

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
