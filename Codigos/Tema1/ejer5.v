//Ejercicio 5

module ejer5(
	input A,
	input B,
	input C,
	output F
	);

wire w1;
wire w2;
wire w3;
wire w4;
wire w5;

Compuerta_and U1(
.A(C),
.B(w5),
.F(w1)
);
Compuerta_and U2(
.A(A),
.B(w5),
.F(w2)
);
Compuerta_and U3(
.A(A),
.B(C),
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
.F(F)
);
Compuerta_not U6(
.A(B),
.F(w5)
);
endmodule