module mi_primera_funcion(
//entradas y salidas
//modo tipo ancho nombre
 input [1:0] S,
 output reg Y
);
always @(*)
     case (S)
	      2'd0: Y = 1'b1;
		  2'd1: Y = 1'b1;
		  2'd2: Y = 1'b0;
		  2'd3: Y = 1'b1;
	 endcase  
endmodule