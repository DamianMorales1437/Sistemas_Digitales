module EF3_tb();
// DECLARACIÓN DE CONSTANTES Y VARIABLES `
reg [3:0] in;
wire [4:0] F;

// ===============================================
// CONEXIÓN DEL CIRCUITO QUE SE QUIERE SIMULAR
EF3  OUT(
  .A(in[3]),
  .B(in[2]),
  .C(in[1]),
  .D(in[0]),
  .F(F)
);
// ===============================================
// ESTÍMULOS: situaciones que se quieren observar en la simulación
initial begin
   in=0;     #20;
   repeat (15) begin
   in=in+1;  #20;
   end     // espera
  $finish;  // termina la simulación
end
// ===============================================
initial begin // los resultados se guardan en ARCHIVO.vcd
  $dumpfile("ARCHIVO.vcd");
  $dumpvars;
end
// ===============================================
initial begin
$display("|--------|-------|");
$display("|  ABCD  |   F   |");
$display("|--------|-------|");
$monitor("|  %b  | %b |",in,F);
end
// -----------------------------------------------
endmodule 