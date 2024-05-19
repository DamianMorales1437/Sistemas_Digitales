module punto5nosimp_t(
//entradas y salidas
//modo tipo ancho nombre
 input A,B,C,
 output F
);
assign F=(A & ~B & C)|(A & ~B & ~C)|(A & B & C)|(~A & ~B & C);
endmodule