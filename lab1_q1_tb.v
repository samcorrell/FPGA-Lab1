`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: multiplexer_tb
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

`timescale 1ns/1ps
module lab1_q1_tb;
wire y; //output 
reg [7:0]i;
reg [2:0]s; //input
 
// Instantiate original module (named DUT {device under test}) 
lab_1_q1 uut (.i(i), .s(s), .y(y));

integer it;
initial begin
    for(it=0; it<8; it=it+1) begin
        s=it;
        #10 i = 8'b00000000;
        #10 i = 8'b11111111;
    end
    #10 $stop;
end
endmodule