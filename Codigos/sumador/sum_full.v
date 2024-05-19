module sum_full(
	input A,B,Cin,
	output S,Cout

);

assign S = A^B^Cin;
assign Cout = (A & B) | (Cin & B) | (Cin & A);

endmodule