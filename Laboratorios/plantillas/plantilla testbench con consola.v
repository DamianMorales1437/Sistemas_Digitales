module NombreModuloTestbench();
// DECLARACIÓN DE CONSTANTES Y VARIABLES `


// ===============================================
// CONEXIÓN DEL CIRCUITO QUE SE QUIERE SIMULAR
NombreModuloCircuito  identificador(
  .ENTRADAS(variables),
  .SALIDAS(variables)
);
// -----------------------------------------------


// ===============================================
// ESTÍMULOS: situaciones que se quieren observar en la simulación
initial begin
  
  #100;     // espera
  $finish;  // termina la simulación
end
// -----------------------------------------------


// ===============================================
initial begin   // mostrar mensajes y valores en consola
  $display("-----|---");
  $monitor(" %b %b | %b",variables separadas por comas);
end
// -----------------------------------------------
endmodule 