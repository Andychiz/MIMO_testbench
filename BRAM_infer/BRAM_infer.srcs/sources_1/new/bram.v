`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/08 13:43:17
// Design Name: 
// Module Name: bram
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


module bram(
        input clk, // System clock
        input wr_en, // When high RAM sets data in input lines to given address
        input [15:0] data_in, // Data lines to write to memory
        input [3:0] addr_in, // Address lines for saving data to memory
        input [3:0] addr_out, // Address for reading from ram
        output [15:0] data_out // Data out
);

parameter ram_size = 16;
reg [15:0] ram_reg [ram_size - 1 : 0];

// Initialize RAM from file
initial begin
        $display("Loading data into ram...");
        $readmemh("sine.mem", ram_reg);
    end
	

always @(posedge clk) begin
    // Save data to RAM
    if (wr_en) begin
        ram[addr_in] <= data_in;
    end

    // Place data from RAM
    data_out <= ram[addr_out];
end        
endmodule
    );
endmodule
