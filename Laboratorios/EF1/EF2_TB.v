`timescale 1ns / 10 ps
module EF1_tb();
//********************************
//declaracion de variables para conexion
 reg [0:2] SW;
 reg [2:1] KEY;
 wire [9:0] LEDR;
//********************************
//conexion del circuito
EF1 EJR(
.SW(SW),
.KEY(KEY),
.LEDR(LEDR)
);
//*********************************
//estimulos
initial begin
 SW=3'b000; KEY=2'b00; #20;
 SW=3'b001; KEY=2'b00; #20;
 SW=3'b010; KEY=2'b00; #20;
 SW=3'b100; KEY=2'b00; #20;
 SW=3'b000; KEY=2'b01; #20;
 SW=3'b000; KEY=2'b10; #20;
 SW=3'b111; KEY=2'b11; #20;
   $finish;                         
end
//************************************
//mostrar resultados con gtkwave
initial begin
  $dumpfile("ARCHIVO.vcd");
  $dumpvars;
end
//**********************************
//mostrar resultados en consola
initial begin
$display("|-----|-----|------------|");
$display("| SW  | KEY |    LEDR    |");
$display("| 012 | 21  | 9876543210 |");
$display("|-----|-----|------------|");
$monitor("| %b | %b  | %b |",SW,KEY,LEDR);
end

endmodule