module rest(
    input [2:0] A, B,
	output [2:0] F    
);
// DECLARACIÓN DE VARIABLES

// ==========================
// DESCRIPCIÓN DEL CIRCUITO
assign F = A - B;

endmodule 