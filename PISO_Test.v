`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 18:10:37
// Design Name: 
// Module Name: PISO_Test
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


module PISO_Test();
    
    reg clk,reset,sel;
    reg [3:0] D;
    wire v;
    
      parameter CLK_PERIOD = 2; // Clock period in nanoseconds
    
    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;
    
    //Instantiating module
    PISO Dut ( .v(v), .clk(clk), .sel(sel), .reset(reset), .d(D) );
    
    initial begin
    
        clk = 0;
        reset = 1;
        #2 reset = 0;
        sel = 0;
        D = 4'b0100;
        
        #2 sel = 1;
        #10 sel = 0;
        D = 4'b1110;
        #2 sel = 1;
    end
    
     initial begin
    
        $monitor("Clock = %b, D = %b,  Output = %b",clk,D,v);
        #25 $finish;
    end    
endmodule
