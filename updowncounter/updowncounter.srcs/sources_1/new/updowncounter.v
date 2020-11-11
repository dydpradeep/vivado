`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 09:57:40 AM
// Design Name: 
// Module Name: updowncounter
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


module updowncounter(
    input clk,
    input reset,
    input updown,
    output [3:0] q
    );
    reg [3:0] q;
    always@(posedge clk or negedge reset)
    begin
         if (!reset)
         q<=0;
         else if ((updown==1'b1) && (q!=4'b1111))
         q<=q+1;
         else if ((updown==1'b0) && (q!=4'b0000))
         q<=q-1;
     end
endmodule
