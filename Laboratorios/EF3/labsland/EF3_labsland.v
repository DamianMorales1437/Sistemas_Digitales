module EF3_labsland
(   // Utilizar los nombres de los puertos 
    // indicados en la documentación en LabsLand
    // INPUT: SW - KEY - CLOCK_50
    // OUTPUT: LEDR - HEXn
    input [3:0] SW,
	output [4:0] LEDR
);
// ===============================================
// CONEXIÓN DEL CIRCUITO QUE SE QUIERE IMPLEMENTAR
EF3  LAB(
  .A(SW[3]),
  .B(SW[2]),
  .C(SW[1]),
  .D(SW[0]),
  .F(LEDR)
);
// -----------------------------------------------
endmodule