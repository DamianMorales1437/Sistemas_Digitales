//Sum4
module Sum4(
	input [3:0] A,
	input [3:0] B,
	output Carry,
	output [3:0] Suma
	);
	
wire w1;
wire w2;
wire w3;

SM U0(
.A(A[0]),
.B(B[0]),
.Cout(w1),
.S(Suma[0])
);

SC U1(
.A(A[1]),
.B(B[1]),
.Cin(w1),
.Cout(w2),
.S(Suma[1])
);

SC U2(
.A(A[2]),
.B(B[2]),
.Cin(w2),
.Cout(w3),
.S(Suma[2])
);

SC U3(
.A(A[3]),
.B(B[3]),
.Cin(w3),
.Cout(Carry),
.S(Suma[3])
);
endmodule
