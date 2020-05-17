`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 02:25:11 AM
// Design Name: 
// Module Name: FINALBOSS
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


module FINALBOSS(X, Y, Z, S0, S1, CLK, RESET, T);
    input X, Y, Z, S0, S1;
    input CLK, RESET;
    output reg T;

    wire D, Tf, J, K;
    wire Qd, Qt, Qjk;

       assign D = ((~Qd ^ X) + ( X & Qd));
       assign Tf = ~(Qd & Y) & Qt;
       assign J = ~(Qd & Y) & Qt;
       assign K = ~( (Y ^ Z) & (Y ^ Z) );
        
    
    always@ (S0, S1)
    begin 
        
        case ({S0, S1})
            2'b00: T <= Qd;
            2'b01: T <= (((Qt) ^ (Qjk)) ^ Qt);
            2'b10: T <= ~(Qjk & Qjk); 
            2'b11: T <= 0;
        endcase
        
        
    end

    DFF dff(D, CLK, RESET, Qd);
    TFF tff(Tf, CLK, RESET, Qt);
    JKFFsync jkff(J, K, CLK, RESET, Qjk);
endmodule
