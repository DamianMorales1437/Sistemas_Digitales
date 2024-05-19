module temporizador_fpga(
//entradas 
input CLOCK_50,
input [1:0] V_BT, //0 <--clear    1 <--comienzo/pausa
input [6:0] SW, 
//salidas
output reg [6:0] G_HEX0,          ///9999
output reg [6:0] G_HEX1,
output reg [9:0] LEDR
);

reg [3:0]q0;
reg [2:0]q1;


//---divisor de frecuencia ----no se aumenta mas la frecuencia porque comenzaria a saltarse numeros 
reg [25:0] q;
reg clkk;
// ---- Descripcion------
always @(posedge CLOCK_50)
if(q==26'd60000000) begin
q<= 3'd0;
clkk<=1'b1;
end else  begin 
q <= q+1;
clkk<=1'b0;
end


//circuito
always @ (posedge CLOCK_50)begin 
	if (~V_BT[0:0]) begin
	q0<=SW[6:3];
	q1<=SW[2:0];
	end else if (clkk)begin
	if(V_BT[1:1])begin
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
	end
	
	case( q0 )
        4'B0000: G_HEX0 = 7'B1000000;
        4'B0001: G_HEX0 = 7'B1111001;
        4'B0010: G_HEX0 = 7'B0100100;
        4'B0011: G_HEX0 = 7'B0110000;
        4'B0100: G_HEX0 = 7'B0011001;
        4'B0101: G_HEX0 = 7'B0010010;
        4'B0110: G_HEX0 = 7'B0000010;
        4'B0111: G_HEX0 = 7'B1111000;
        4'B1000: G_HEX0 = 7'B0000000;
        4'B1001: G_HEX0 = 7'B0010000;
    endcase
    
     case( q1 )
        3'B000: G_HEX1 = 7'B1000000;
        3'B001: G_HEX1 = 7'B1111001;
        3'B010: G_HEX1 = 7'B0100100;
        3'B011: G_HEX1 = 7'B0110000;
        3'B100: G_HEX1 = 7'B0011001;
        3'B101: G_HEX1 = 7'B0010010;
        3'B101: G_HEX1 = 7'B0000010;
    endcase
	end

endmodule