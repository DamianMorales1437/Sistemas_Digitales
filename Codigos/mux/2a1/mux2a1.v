// mux 2 a 1 
module mux2a1(
input [2:0] A,
input [2:0] B,
input s0,
output [2:0] F
);

assign F=s0?A:B;

endmodule