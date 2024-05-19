module resultados_labsland(
    input [5:0] SW, 
	output wire [6:0] HEX0
    
);

impresion U0(
	.A(SW[2:0]),
	.B(SW[5:3]),	
	.F1(HEX0[6:0])    
);


endmodule 