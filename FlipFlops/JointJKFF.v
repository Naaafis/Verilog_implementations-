`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 02:01:25 AM
// Design Name: 
// Module Name: JointJKFF
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


module JointJKFF(JK, CLK, RESET, Q_sync, Q_async);
input [1:0] JK;
input CLK;
input RESET;
output Q_sync;
output Q_async;

JKFFsync jkffsync(J,K, CLK, RESET, Q_sync);
JKFFasync jkssasync(J,K, CLK, RESET, Q_async);

endmodule
