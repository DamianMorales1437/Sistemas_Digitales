module circuito_con_or_LabsLand(
    input [9:0] SW,
	output [4:0] LEDR
);

circuito_con_or top(
     .X(SW[0]),
	 .Y(SW[5]),
	 .M(SW[3:1]),
	 .P(SW[8:6]),
	 .A(SW[4]),
	 .B(SW[9]),
	 .F1(LEDR[0]),
	 .F2(LEDR[3:1]),
	 .F3(LEDR[4])
);
endmodule