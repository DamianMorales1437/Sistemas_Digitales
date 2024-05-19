module punto5_pos_sop(
//entradas y salidas
//modo tipo ancho nombre
 input A,B,C,
 output Fsimp,Fpos,Fsop,
 output reg Fcase
);
assign Fsimp=(A & ~B)|(~B & C)|(A & C);
assign Fpos=(A|B|C)&(A|~B|C)&(A|~B|~C)&(~A|~B|C);
assign Fsop=(~A&~B&C)|(A&~B&~C)|(A&~B&C)|(A&B&C);
always @(*)
     case ({A,B,C})
	      3'd0: Fcase = 1'b0;
		  3'd1: Fcase = 1'b1;
		  3'd2: Fcase = 1'b0;
		  3'd3: Fcase = 1'b0;
		  3'd4: Fcase = 1'b1;
		  3'd5: Fcase = 1'b1;
		  3'd6: Fcase = 1'b0;
		  3'd7: Fcase = 1'b1;
	 endcase

endmodule



















