`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 11:48:53 PM
// Design Name: 
// Module Name: JKFFsync
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


module JKFFsync(J,K, CLK, RESET, Q);
    input J,K;
    reg D = 0;
    input CLK;
    input RESET;
    output Q;
    
    wire Q;
    
    
always@(J,K)
begin
     
    case({J,K})
    2'b00: D <= Q;
    2'b01: D <= 0;
    2'b10: D <= 1;
    2'b11: D <= ~Q;
    
    endcase
    
    
        
end

    DFF tf(D, CLK, RESET, Q);

endmodule
