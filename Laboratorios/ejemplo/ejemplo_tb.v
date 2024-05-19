module ejemplo_tb();
//declaracion de constantes y variables
reg [2:0] datos;
wire resultado;
//coneccion del circuito que se quiere simular
ejemplo UUT(//Unit Under Test
  .A(datos[0]),
  .B(datos[1]),
  .C(datos[2]),
  .F(resultado)
);
//estimulos
initial begin
     datos=0;              #10; //espera
repeat (7) begin
     datos=datos+1;       #10;
	 end
	 $finish; //termina la simulacion
end



initial begin //mostrar mensajes y valores en consola
  $display(" CBA | F");
  $display("-----|---");
  $monitor(" %b | %b",datos,resultado);
end

endmodule