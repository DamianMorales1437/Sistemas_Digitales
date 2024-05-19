module display_labsland(
//entradas y salidas
 input [3:0] SW,
 output [6:0] HEX0
);
//conexion 
display2 sim(
.A(SW[3]),
.B(SW[2]),
.C(SW[1]),
.D(SW[0]),
.a(HEX0[0]),
.b(HEX0[1]),
.c(HEX0[2]),
.d(HEX0[3]),
.e(HEX0[4]),
.f(HEX0[5]),
.g(HEX0[6])
);

endmodule