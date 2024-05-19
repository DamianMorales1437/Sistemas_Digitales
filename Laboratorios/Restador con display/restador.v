module restador(
    input [2:0] A, B,
	output [2:0] F 
);
// DECLARACIÓN DE VARIABLES
wire [2:0] w1, w2;
wire w3;

// ==========================
// DESCRIPCIÓN DEL CIRCUITO
rest1 U1(
	.A(A), 
	.B(B),	
	.F(w1)     // variables tipo wire
);

rest U2(
	.A(A), 
	.B(B),	
	.F(w2)     // variables tipo wire
);

comparador U3(
	.A(A), 
	.B(B),	
	.F(w3)     // variables tipo wire
);

mux2a1 U4(
	.A(w1), 
	.B(w2),
	.s0(w3),
	.F(F)     // variables tipo wire
);
endmodule 