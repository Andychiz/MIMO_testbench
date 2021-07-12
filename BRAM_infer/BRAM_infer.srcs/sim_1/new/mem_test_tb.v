`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module mem_test_tb(
    );
    reg clk_tb;
	reg [15:0] out_tb;
	
	mem_test mem( .clk(clk_tb), .out(out_tb));
	
	initial begin
		clk_tb = 0;
	end
	
	always begin
		#10
		clk_tb = ~clk_tb;
	end
endmodule

