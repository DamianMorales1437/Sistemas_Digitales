module uso_variables_internas(
//entradas y salidas
//modo tipo ancho nombre
 input A,B,
 output F
);
//variables
wire w1,w2;
//descripcion del circuito
assign w1=~(A|A);
assign W2=~(B|B);
assign F=(w1|w2);


endmodule
