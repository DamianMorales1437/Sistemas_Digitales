// Counter down, Enable and reset sync, flanco ascendente.
module conta_down_ers (
	input clk,
	input enable,
	input reset,
	output [2:0] q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
  if (reset) begin
    q <= 3'd0;
  end  else if (enable) begin
    q <= q - 1;
  end 

endmodule //Fin del modulo
