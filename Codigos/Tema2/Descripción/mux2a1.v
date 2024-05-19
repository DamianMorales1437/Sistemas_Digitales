//Mux 2 a 1

module mux2a1 #(
	parameter width=2
	)(
	input [width-1:0] A,
	input [width-1:0] B,
	input s0,
	output [width-1:0] F
	);

assign F = s0 ? B : A;

endmodule
