//Compuerta NAND

module Compuerta_nand(
	input A,
	input B,
	output F
	);

assign F = ~(A & B);
endmodule
