module impresion(
    input [2:0] A, B,
	output [6:0] F1
);
// DECLARACIÓN DE VARIABLES
wire [2:0] F2;

restador U0(
	.A(A), 
	.B(B),	
	.F(F2)     // variables tipo wire
);

numeros U1(
	.S(F2), 	
	.D(F1)     // variables tipo wire
);

// ==========================
// DESCRIPCIÓN DEL CIRCUITO


endmodule 