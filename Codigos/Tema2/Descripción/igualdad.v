//Comparador de igualdad

module igualdad(
	input [2:0] A,
	input [2:0] B,
	output F
	);

assign F = (A == B);

endmodule
