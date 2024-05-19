module numeros(
    input [2:0] S,
	output reg [6:0] D    
);
always @(*)
	case (S)
	0: D = 7'b0110111;
	1: D = 7'b1111001;
	2: D = 7'b0100100;
	3: D = 7'b0110000;
	4: D = 7'b0011001;
	5: D = 7'b0010010;
	6: D = 7'b0000011;
	7: D = 7'b1111000;
	endcase

endmodule 