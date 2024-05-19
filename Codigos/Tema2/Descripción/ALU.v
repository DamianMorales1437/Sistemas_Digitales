// ALU
module ALU(
	input [3:0] A,
	input [3:0] B,
	input [2:0] F,
	output [3:0] Y
	);

wire [3:0] w1,w2,w3,w4,w7,w8,w9,w10;
wire w5,w6;

Compuerta_and4 U0(
.A(A),
.B(w2),
.F(w7)
);

Compuerta_or4 U1(
.A(A),
.B(w2),
.F(w8)
);

Sum4 S1(
.A(A),
.B(w4),
.Carry(),
.Suma(w9)
);

Sum4 S2(
.A(w2),
.B(4'b0001),
.Carry(),
.Suma(w3)
);

mux2a1 #(.width(4)) M1(
.A(B),
.B(~B),
.s0(F[2]),
.F(w2)
);

mux2a1 #(.width(4)) M2(
.A(w2),
.B(w3),
.s0(F[2]),
.F(w4)
);

mayor C1(
.A(A),
.B(B),
.F(w5)
);

igualdad C2(
.A(A),
.B(B),
.F(w6)
);

mux2a1 #(.width(4)) M3(
.A({3'b000,w5}),
.B({3'b000,w6}),
.s0(F[2]),
.F(w10)
);

mux4a1 #(.width(4)) M4(
.A(w7),
.B(w8),
.C(w9),
.D(w10),
.s0(F[0]),
.s1(F[1]),
.F(Y)
);

endmodule
