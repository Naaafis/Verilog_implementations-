`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2020 09:34:26 PM
// Design Name: 
// Module Name: TFF
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


module TFF(input T, input clk, input reset_n, output reg Q);

    always@(posedge clk)
    if(reset_n)begin
        Q <= 0;
    end
    else begin
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
