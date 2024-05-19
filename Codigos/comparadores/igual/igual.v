//comparador igual

module igual(
   input [2:0] A,
   input [2:0] B,
   output F
);

assign F=(A==B);

endmodule