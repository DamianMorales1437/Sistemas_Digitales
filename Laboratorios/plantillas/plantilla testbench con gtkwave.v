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
initial begin // los resultados se guardan en ARCHIVO.vcd
  $dumpfile("ARCHIVO.vcd");
  $dumpvars;
end

endmodule 