module temporizador(
//entradas 
input clk,
input reset, 
input enable, 

//salidas
output reg [3:0]q0,          
output reg [2:0]q1
);

//circuito
always @ (posedge clk)
	if (reset) begin
	q0<=4'd0;
	q1<=3'd6;
	end else if(enable)begin
	if(q0!=4'd0)begin 
	q0<=q0-1;
	end else if(q0==4'd0&&q1!=3'd0) begin
	q0<=4'd9;
	q1<=q1-1;
	end else if(q0==4'd0&&q1==3'd0)begin 
	q0<=4'd0;
	q1<=3'd0;
	end 	
	
	end

endmodule