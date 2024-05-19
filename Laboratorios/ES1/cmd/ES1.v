module ES1 (
  input [2:0] A,B,
  input s0,s1,
  output [3:0] F
);

wire [2:0] w1;
wire [3:0] w2;

sum U1 (
   .A(A),
   .B(B),
   .F(w2)
);

mux1 U2(
   .A(A),
   .B(B),
   .s(s0),
   .F(w1)   
);

mux2 U3(
   .A(w1),
   .B(w2),
   .s(s1),
   .F(F)   
);

endmodule