// Flip flop J-K enable sync y reset async, flanco descendente.
module ffjk_ers (
	input J,
	input K,
	input clk,
	input enable,
	input reset,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (negedge clk or posedge reset)
 if (reset) begin
   q <= 1'b0;
 end  else if (enable) begin
   if (J==1'b0 && K==1'b1) begin 
     q <= 1'b0;
   end else if (J==1'b1 && K==1'b0) begin
     q <= 1'b1;
   end else if (J==1'b1 && K==1'b1) begin
     q <= !q;
   end
 end

endmodule //Fin del modulo
