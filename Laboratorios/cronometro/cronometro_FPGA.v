module cronometro_FPGA(
//entradas 
input CLOCK_50,
input [0:0] V_BT, //resetea 

//salidas
output reg [6:0] G_HEX0,          ///9999
output reg [6:0] G_HEX1,
output reg [6:0] G_HEX2,
output reg [6:0] G_HEX3    //mayor peso
);

reg [3:0] q1;
reg [3:0] q2;
reg [3:0] q0;         
reg [3:0] q3;

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
always @ (posedge clkk) begin
	if (~V_BT[0:0]) begin
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
        4'B0000: G_HEX1 = 7'B1000000;
        4'B0001: G_HEX1 = 7'B1111001;
        4'B0010: G_HEX1 = 7'B0100100;
        4'B0011: G_HEX1 = 7'B0110000;
        4'B0100: G_HEX1 = 7'B0011001;
        4'B0101: G_HEX1 = 7'B0010010;
        4'B0110: G_HEX1 = 7'B0000010;
        4'B0111: G_HEX1 = 7'B1111000;
        4'B1000: G_HEX1 = 7'B0000000;
        4'B1001: G_HEX1 = 7'B0010000;
    endcase
	
	 case( q2 )
        4'B0000: G_HEX2 = 7'B1000000;
        4'B0001: G_HEX2 = 7'B1111001;
        4'B0010: G_HEX2 = 7'B0100100;
        4'B0011: G_HEX2 = 7'B0110000;
        4'B0100: G_HEX2 = 7'B0011001;
        4'B0101: G_HEX2 = 7'B0010010;
        4'B0110: G_HEX2 = 7'B0000010;
        4'B0111: G_HEX2 = 7'B1111000;
        4'B1000: G_HEX2 = 7'B0000000;
        4'B1001: G_HEX2 = 7'B0010000;
    endcase
    
    case( q3 )
        4'B0000: G_HEX3 = 7'B1000000;
        4'B0001: G_HEX3 = 7'B1111001;
        4'B0010: G_HEX3 = 7'B0100100;
        4'B0011: G_HEX3 = 7'B0110000;
        4'B0100: G_HEX3 = 7'B0011001;
        4'B0101: G_HEX3 = 7'B0010010;
        4'B0110: G_HEX3 = 7'B0000010;
        4'B0111: G_HEX3 = 7'B1111000;
        4'B1000: G_HEX3 = 7'B0000000;
        4'B1001: G_HEX3 = 7'B0010000;
    endcase
    
	end
    
endmodule