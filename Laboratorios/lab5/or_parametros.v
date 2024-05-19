module or_parametros #(parameter n=2)(
    input [n-1:0] A,B,
    output [n-1:0]F
);
assign F=A|B;

endmodule