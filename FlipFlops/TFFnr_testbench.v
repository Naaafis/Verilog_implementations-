`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 10:03:06 PM
// Design Name: 
// Module Name: TFFnr_testbench
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


module TFFnr_testbench(

    );
    
    reg t;
    reg CLK;
    wire Q;
    
    
    TFFnr tff1(t, CLK, Q);
    
    always begin 
       t = 0; 
       #5; 
       CLK = 1;
       #5
       t = 1;
       CLK = 0;
       #5;
       CLK = 1;
       #5;
       t = 0;
       CLK = 0;
       # 5;
       CLK = 1;
       #5;
       t = 1;
       CLK = 0;
       # 5;
       CLK = 1;
       # 10;
            
    end
endmodule
