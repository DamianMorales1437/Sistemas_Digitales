module cronometro(
//entradas 
input clk,
input reset, 

//salidas
output reg [3:0]q0,          ///9999
output reg [3:0]q1,
output reg [3:0]q2,
output reg [3:0]q3,//mayor peso
output [15:0]q
);

//circuito
always @ (posedge clk)
	if (reset) begin
	q0<=4'd0;
	q1<=4'd0;
	q2<=4'd0;
	q3<=4'd0;
	end else begin
	if(q0!=4'd9)begin 
	q0<=q0+1;
	end else if(q0==4'd9&&q1!=4'd9) begin
	q0<=4'd0;
	q1<=q1+1;
	end else if(q1==4'd9&&q2!=4'd9)begin 
	q0<=4'd0;
	q1<=4'd0;
	q2<=q2+1;
	end else if(q2==4'd9&&q3!=4'd9)begin 
	q0<=4'd0;
	q1<=4'd0;
	q2<=4'd0;
	q3<=q3+1;
	end
	
	end
	assign q={q3,q2,q1,q0};	


endmodule