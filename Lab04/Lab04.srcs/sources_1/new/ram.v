`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2020 11:05:28 PM
// Design Name: 
// Module Name: ram
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


module ram(
    input wire [7:0] d_in, // Data In 
    output reg [7:0] addr , // Address
    input wire oe , // Output Enable
    input wire clk,
    input wire we,
    output reg [7:0] d_out // Data out
    );
    
reg [7:0] mem [255:0];
reg [7:0] addr_tem;

always @(posedge clk)
begin
if(we)
begin
    mem[addr] <= d_in;
    addr = addr + 1;
end
if(oe)
    d_out = mem[addr-1];
end
endmodule

