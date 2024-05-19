module comparadores(
//entradas y salidas
//modo tipo ancho nombre
 input [4:0] A,B,
 output AmayorB,AmenorB,AigualB
);
assign AmayorB=(A>B);
assign AmenorB=(A<B);
assign AigualB=(A==B);
endmodule
