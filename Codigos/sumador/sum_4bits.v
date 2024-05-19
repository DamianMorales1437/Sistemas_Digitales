module sum_4bits(
	input [3:0] A,
	input [3:0] B,
	output [3:0] F
);

wire c1,c2,c3,c4;

sum_half M0(
	.A(A[0]),
	.B(B[0]),
	.S(F[0]),
	.Cout(c1)
);

sum_full M1(
	.A(A[1]),
	.B(B[1]),
	.Cin(c1),
	.S(F[1]),
	.Cout(c2)
);

sum_full M2(
	.A(A[2]),
	.B(B[2]),
	.Cin(c2),
	.S(F[2]),
	.Cout(c3)
);

sum_full M3(
	.A(A[3]),
	.B(B[3]),
	.Cin(c3),
	.S(F[3]),
	.Cout(c4)
);

endmodule