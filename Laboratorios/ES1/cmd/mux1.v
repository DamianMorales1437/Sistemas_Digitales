module mux1(
    input [2:0] A, B,
	input s,
	output [2:0] F  
);
assign F = s ? B : A;

endmodule 