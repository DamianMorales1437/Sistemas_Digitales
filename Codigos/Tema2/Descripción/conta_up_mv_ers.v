// Counter up module 5, Enable and reset sync, flanco ascendente.
module conta_up_mv_ers (
	input clk,
	input enable,
	input reset,
	input [2:0] M,
	output [2:0] q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
  if (reset) begin
    q <= 3'd0;
  end  else if (enable) begin
    if(q==M) begin
     q <= 3'd0;
    end else begin
     q <= q + 1;
    end
  end 

endmodule //Fin del modulo
