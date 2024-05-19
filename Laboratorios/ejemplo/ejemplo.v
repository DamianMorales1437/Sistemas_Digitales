module ejemplo
(//entradas y salidas
 input A,B,C,
 output F
);
//declaracion de variables
wire W1,W2;

//descripcion del circuito
assign W1=A^B;
assign W2=~(B|C);

assign F= W1&W2;

endmodule
