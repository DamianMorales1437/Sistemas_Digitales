`timescale 1ns / 10 ps
module uso_variables_internas_tb();
//********************************
//declaracion de variables para conexion
 reg inA,inB;
 wire outF;
//********************************
//conexion del circuito
uso_variables_internas EJR(
.A(inA),
.B(inB),
.F(outF)
);
//*********************************
//estimulos
initial begin
  {inA,inB}=2'd0;  #10;
  repeat(3) begin
     {inA,inB}={inA,inB}+1;
     #10;  
  end 
  $finish;
end
//***********************************
//mostrar resultados con gtkwave
initial begin
 $dumpfile("ARCHIVO.vcd");
 $dumpvars;
 end

endmodule