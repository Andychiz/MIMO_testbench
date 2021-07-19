`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/19 15:24:52
// Design Name: 
// Module Name: adda_test
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

module adda_test(
	input clk,
	input rst_n,
	input [7:0] da_data,
	output [11:0] ad_data
    );
    
    wire [13:0] extend_da_data;
    reg ad_data_reg;
    assign ad_data = ad_data_reg;
    assign extend_da_data = {{6{da_data[7]}},da_data};
  
    always@(posedge clk or negedge rst_n) begin
    	if(!rst_n)
    		ad_data_reg <= 12'd0;
    	else begin
    		ad_data_reg <= extend_da_data;
    	end	
    end
endmodule
