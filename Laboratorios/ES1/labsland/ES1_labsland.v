module ES1_labsland(
    input [7:0] SW, 
    output wire [6:0] HEX0
);

wire [3:0] w1;

ES1 U0(
 .A(SW[2:0]),
 .B(SW[5:3]),
 .s0(SW[7]),
 .s1(SW[6]),
 .F(w1) 
);

display U1(
   .A(w1[3]),
   .B(w1[2]),
   .C(w1[1]),
   .D(w1[0]),
   .a(HEX0[0]),
   .b(HEX0[1]),
   .c(HEX0[2]),
   .d(HEX0[3]),
   .e(HEX0[4]),
   .f(HEX0[5]),
   .g(HEX0[6])   
);

endmodule 