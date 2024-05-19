module punto5_pos_sop_labsland(
//entradas y salidas
 input [2:0] SW,
 output [3:0] LEDR
);
//conexion 
punto5_pos_sop sim(
.A(SW[2]),
.B(SW[1]),
.C(SW[0]),
.Fsimp(LEDR[0]),
.Fpos(LEDR[1]),
.Fsop(LEDR[2]),
.Fcase(LEDR[3])
);

endmodule

