module comparadores_labsland(
//entradas y salidas
//modo tipo ancho nombre
 input  [9:0] SW,
 output [2:0] LEDR
);
//********************************
//conexion del circuito
comparadores DUT(
.A(SW[4:0]),
.B(SW[9:5]),
.AmayorB(LEDR[2]),
.AmenorB(LEDR[0]),
.AigualB(LEDR[1])
);

endmodule