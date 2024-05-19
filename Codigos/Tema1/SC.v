//SC
module SC(
	input A,
	input B,
	input Cin,
	output Cout,
	output S
	);

wire w1;
wire w2;
wire w3;
wire w4;
wire w5;

Compuerta_and U1(
.A(A),
.B(B),
.F(w1)
);

Compuerta_and U2(
.A(B),
.B(Cin),
.F(w2)
);

Compuerta_and U3(
.A(A),
.B(Cin),
.F(w3)
);

Compuerta_or U4(
.A(w1),
.B(w2),
.F(w4)
);

Compuerta_or U5(
.A(w4),
.B(w3),
.F(Cout)
);

Compuerta_xor U6(
.A(A),
.B(B),
.F(w5)
);

Compuerta_xor U7(
.A(w5),
.B(Cin),
.F(S)
);
endmodule
