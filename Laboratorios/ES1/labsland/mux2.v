module mux2(
    input [2:0] A,
    input [3:0]	B,
	input s,
	output [3:0] F  
);
assign F = s ? B : A;

endmodule 