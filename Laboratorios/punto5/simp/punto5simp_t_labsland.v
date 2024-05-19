module punto5simp_t_labsland(
//entradas y salidas
 input [2:0] SW,
 output [0:0] LEDR
);
//conexion 
punto5simp_t sim(
.A(SW[2]),
.B(SW[1]),
.C(SW[0]),
.F(LEDR[0])
);

endmodule
