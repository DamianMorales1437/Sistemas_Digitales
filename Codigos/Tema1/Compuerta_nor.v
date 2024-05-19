//Compuerta NOR

module Compuerta_nor(
	input A,
	input B,
	output F
	);

assign F = ~(A | B);
endmodule
