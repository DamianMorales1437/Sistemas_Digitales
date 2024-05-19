module punto5simp_t(
//entradas y salidas
//modo tipo ancho nombre
 input A,B,C,
 output F
);
assign F=(A & ~B)|(~B & C)|(A & C);
endmodule