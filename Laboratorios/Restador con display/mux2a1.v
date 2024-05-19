module mux2a1(
    input [2:0] A, B,
	input s0,
	output [2:0] F  
);
assign F = s0 ? B : A;

endmodule 