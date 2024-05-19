//SM
module SM(
	input A,
	input B,
	output Cout,
	output S
	);
	
Compuerta_and U1(
.A(A),
.B(B),
.F(Cout)
);

Compuerta_xor U2(
.A(A),
.B(B),
.F(S)
);
endmodule
