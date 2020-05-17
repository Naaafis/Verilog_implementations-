`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2020 03:38:56 AM
// Design Name: 
// Module Name: circuit_analysis
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


module circuit_analysis();
    reg X;
    reg Y;
    reg Z;
    reg S0;
    reg S1;
    reg CLK = 0;
    reg RESET;
    wire T;
    
    FINALBOSS circuit(X, Y, Z, S0, S1, CLK, RESET, T);
    
    always begin
        X = 0; Y = 0; Z = 0; 
        S0 = 0; S1 = 0;
        
        #5 RESET = 0; Y = 0;
        
        #5 Z = 1;
        
        #5 Y = 1;
        
        #5 X = 1;
        
        
        #5 RESET = 1;
        
        #5 Y = 0;
        
        #5 Z = 0;
        
        #5 X = 0;
        
        #5 RESET = 0;
        
        #5 Y = 1;
        
        #5 Z = 0;
     
        #5 X = 0;
       
        #5 Y = 0;
       
        #5 Z = 1;
       
        #5 X = 0;
   
        #5 Y = 0;

        #5 Z = 0;

        #5 X = 1;

        #5 Y = 1;

        #5 Z = 1;

        #5 X = 0;

        #5 Y = 0;

        #5 Z = 1;

        #5 X = 1;

        #5 Y = 1;

        #5 Z = 0;

        #5 X = 1;

        
        
        S1 = 1;

        #5 RESET = 0; Y = 0;

        #5 Z = 1;

        #5 Y = 1;

        #5 X = 1;

        
        #5 RESET = 1;

        #5 Y = 0;

        #5 Z = 0;

        #5 X = 0;

        #5 RESET = 0;

        #5 Y = 1;

        #5 Z = 0;

        #5 X = 0;


        #5 Y = 0;

        #5 Z = 1;

        #5 X = 0;

        #5 Y = 0;

        #5 Z = 0;

        #5 X = 1;

        #5 Y = 1;

        #5 Z = 1;

        #5 X = 0;

        #5 Y = 0;

        #5 Z = 1;

        #5 X = 1;

        #5 Y = 1;

        #5 Z = 0;

        #5 X = 1;

        
        
        S0 = 1; S1 = 0;
  
        #5 RESET = 0; Y = 0;
     
        #5 Z = 1;
   
        #5 Y = 1;
       
        #5 X = 1;
    
        
        #5 RESET = 1;
    
        #5 Y = 0;
     
        #5 Z = 0;
  
        #5 X = 0;
   
        #5 RESET = 0;
 
        #5 Y = 1;

        #5 Z = 0;

        #5 X = 0;
       

        #5 Y = 0;
       
        #5 Z = 1;
        
        #5 X = 0;
       
        #5 Y = 0;
      
        #5 Z = 0;
    
        #5 X = 1;
       
        #5 Y = 1;
     
        #5 Z = 1;
     
        #5 X = 0;
       
        #5 Y = 0;
    
        #5 Z = 1;
    
        #5 X = 1;
       
        #5 Y = 1;
       
        #5 Z = 0;
       
        #5 X = 1;
 
        
        
        S1 = 1;
  
        #5 RESET = 0; Y = 0;
 
        #5 Z = 1;
 
        #5 Y = 1;
     
        #5 X = 1;
        
        
        #5 RESET = 1;
      
        #5 Y = 0;
        
        #5 Z = 0;
     
        #5 X = 0;

        #5 RESET = 0;
      
        #5 Y = 1;
  
        #5 Z = 0;
       
        #5 X = 0;
     
        #5 Y = 0;
      
        #5 Z = 1;

        #5 X = 0;
    
        #5 Y = 0;

        #5 Z = 0;
    
        #5 X = 1;
      
        #5 Y = 1;
  
        #5 Z = 1;
      
        #5 X = 0;
   
        #5 Y = 0;

        #5 Z = 1;

        #5 X = 1;
   
        #5 Y = 1;

        #5 Z = 0;
        
        #5 X = 1;
     
        
        
        
        
        
        
    end
    
    
      always begin 
        #2 CLK = ~CLK;
        end
        
endmodule
