// Counter up and down, Enable and reset sync, flanco ascendente.
module conta_up_down_ers (
	input clk,
	input enable,
	input reset,
	input up_down,
	output [2:0] q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
  if (reset) begin
    q <= 3'd0;
  end  else if (enable) begin
    if(up_down==1'b1)begin
	q <= q + 1;
    end else begin
	q <= q - 1;
    end
  end 

endmodule //Fin del modulo
