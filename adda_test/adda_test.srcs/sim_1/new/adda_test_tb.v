`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/19 16:36:00
// Design Name: 
// Module Name: adda_test_tb
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


module adda_test_tb(

    );
    reg clk_tb;
    reg rst_n_tb;
    reg [7:0] da_data_tb;
    wire [11:0] ad_data_tb;
    initial begin
    	clk_tb = 0;
    	rst_n_tb = 1;
    	#15
    	rst_n_tb = 0;
    end
    always #10 clk_tb = ~clk_tb;
    always@(posedge clk_tb or negedge rst_n_tb) begin
    	if(!rst_n_tb)
    		da_data_tb <= 0;
    	else
    		da_data_tb <= readmemh("sine.mem");
    end
    adda_test adda_test_inst(clk(clk_tb), rst_n(rst_n_tb), );
endmodule
