`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module mem_test(
    input clk ,
    output reg [15:0] out
    );
	parameter SIZE = 16;    
	reg [15:0] ram_memory [SIZE-1:0];
	integer i;
	initial begin
		$readmemh("sine.mem", ram_memory); //File with the signal
		i = 0;
	end    
	//At every positive edge of the clock, output a sine wave sample.
	always@(posedge clk)
	begin
		out <= ram_memory[i];
		i = i+ 1;
		if(i == SIZE)
			i = 0;
	end
endmodule