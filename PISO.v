`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 17:51:38
// Design Name: 
// Module Name: PISO
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


module PISO(v,clk,sel,reset,d);

    reg [3:0] q;
    input [3:0] d;
    input sel, clk, reset;
    output reg v;
    
    always @ (posedge clk)
        if (reset ==1)
            q <= 4'b0000;
        else if ( sel == 0)
            q <= d;
        else begin
            v <= q[0];
            q <= q >> 1;
        end
endmodule
