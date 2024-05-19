//My memory

module My_memory
	# (parameter N=2, M=8)
	(
	input clk,
	input we,
	input [N-1:0] dir,
	input [M-1:0] data_in,
	output [M-1:0] data_out
	);

reg [M-1:0] my_mem [2**N-1:0];

always @ (posedge clk)
if (we) my_mem[dir] <= data_in;

assign data_out = my_mem[dir];
endmodule
