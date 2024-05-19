module circuito_con_or(
    input X,Y,A,B,
	input [2:0]M,P,
	output F1,F3,
    output [2:0]F2
);

or_parametros #(1) un_bit(
    .A(X),
	.B(Y),
	.F(F1)
);

or_parametros #(3) tres_bit(
    .A(M),
	.B(P),
	.F(F2)
);

or_parametros #(1) uno_bit(
    .A(A),
	.B(B),
	.F(F3)
);
endmodule