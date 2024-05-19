//Compuerta NXOR

module Compuerta_nxor(
	input A,
	input B,
	output F
	);

assign F = ~(A ^ B);
endmodule
