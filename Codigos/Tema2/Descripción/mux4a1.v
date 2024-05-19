//Mux 4 a 1

module mux4a1 #(
	parameter width=4
	)(
	input [width-1:0] A,
	input [width-1:0] B,
	input [width-1:0] C,
	input [width-1:0] D,
	input s0,
	input s1,
	output [width-1:0] F
	);

assign F = s1 ? (s0 ? D : C) : (s0 ? B : A);

endmodule
