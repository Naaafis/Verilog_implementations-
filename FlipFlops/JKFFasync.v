`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 01:20:52 AM
// Design Name: 
// Module Name: JKFFasync
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


module JKFFasync(J,K, CLK, RESET, Q);

    input J, K;
    reg D = 0;
    input CLK;
    input RESET;
    output Q;
    
    wire Q;
    
    
always@(J, K)
begin
     
    case({J,K})
    2'b00: D <= Q;
    2'b01: D <= 0;
    2'b10: D <= 1;
    2'b11: D <= ~Q;
    
    endcase
    
    
        
end

    DFFasync dtf(D, CLK, RESET, Q);

endmodule
