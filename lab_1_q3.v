`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:14:51 PM
// Design Name: 
// Module Name: lab_1_q2
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

module lab_1_q3(
    input [1:0]i0, i1, i2, i3,
    input [1:0]s,
    output reg [1:0]y
    );
    
    always@(*)
    begin
        case(s)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            default: y = 2'bxx;
        endcase
    end
endmodule
