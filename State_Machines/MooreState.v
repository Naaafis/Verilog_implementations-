`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 05:47:05 PM
// Design Name: 
// Module Name: MooreState
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


module MooreState(clock, reset, ain, aout, state);
    input [1:0] ain;
    input reset, clock;
    output reg aout;
    output reg [1:0] state;
    
    always @(posedge clock or posedge reset)
    begin
        if (reset == 1'b1)
            begin
                state <= 2'b01;
            end
        else
            begin
                case(ain)
                    //2'b00: state <= 2'b01;
                    2'b01: state <= 2'b01;
                    2'b10: state <= 2'b10;
                    2'b11: state <= 2'b11; 
                endcase
                case(state)
                    2'b01: //aout <= 0;
                        if(ain == 2'b00)
                        begin
                            aout <= 0;
                        end
                        else
                        begin 
                            aout <= aout;
                        end
                    2'b10: //aout <= ~aout;
                        if(ain == 2'b00)
                        begin
                            aout <= ~aout;
                        end
                        else
                        begin 
                            aout <= aout;
                        end
                    2'b11: //aout <= 1;
                        if(ain == 2'b00)
                        begin
                            aout <= 1;
                        end
                        else
                        begin 
                            aout <= aout;
                        end
                endcase
            end
    end

endmodule
