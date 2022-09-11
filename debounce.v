`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:12 06/28/2022 
// Design Name: 
// Module Name:    debounce 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debounce(clk,rst,cnt,start
    );
input clk,rst,start;
output reg [2:0]cnt;

wire [2:0]d;
wire bus;

always @(posedge clk or negedge rst)
begin
 if(!rst) cnt<=0;
 else     cnt<=d;
end

assign bus = cnt==start ? 1 : 0;
assign d = cnt==0 ? bus : cnt+1;

endmodule
