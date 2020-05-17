`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 10:00:31 PM
// Design Name: 
// Module Name: TFFnr
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


module TFFnr(
    input wire T,
    input wire CLK,
    output reg Q
    );
    
    initial begin
        Q <= 0;
    end
    
    always@(posedge CLK)begin
        case(T) 
            1'b0: begin
                Q <= Q;
            end
            1'b1: begin
                Q <= ~Q;
            end
        endcase
    end
    
endmodule
