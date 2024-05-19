module EF3
(   // ENTRADAS y SALIDAS
    input A,B,C,D,
    output reg [4:0] F
);
// = = = = = = = = = = = = =
// DECLARACIÓN DE VARIABLES
wire [3:0] conca;

// = = = = = = = = = = = = =
// DESCRIPCIÓN DEL CIRCUITO

assign conca ={A,B,C,D};
// -------------------------
 always @(*)
 case (conca)
 4'd0: F= 5'b10100;
 4'd1: F= 5'b10011;
 4'd2: F= 5'b10011;
 4'd3: F= 5'b10010;
 4'd4: F= 5'b10010;
 4'd5: F= 5'b10001;
 4'd6: F= 5'b10001;
 4'd7: F= 5'b10000;
 4'd8: F= 5'b10000;
 4'd9: F= 5'b01111;
 4'd10: F = 5'b01111;
 4'd11: F = 5'b01110;
 4'd12: F = 5'b01110;
 4'd13: F = 5'b01101;
 4'd14: F = 5'b01101;
 4'd15: F = 5'b01100;
 endcase

endmodule 