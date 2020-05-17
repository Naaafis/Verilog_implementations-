`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 09:16:11 PM
// Design Name: 
// Module Name: TFFasync
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


module TFFasync(input wire T, input wire clk, input wire clear, output reg Q = 0);

    always@(posedge clk or posedge clear)
    if(clear)begin
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
