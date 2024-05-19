`timescale 1ns/10ps
module contador_tb();
parameter bits=3;
parameter dt=50;

reg clock;
reg reset;
reg enable;
wire fin_cuenta 
wire [bits-1:0] cuenta;

contador #(bits) uut(
.CLOCK(clock),
.RESET(reset),
.ENABLE(enable),
.MAX_CNT(3'd6),
.END_CNT(fin_cuenta),
.COUNT(cuenta)
);

always begin 
clock =1'b0;  #(1*dt);
clock =1'b1;  #(1*dt);
end 

initial begin 
reset=1'b0;
enable=1'b1; #(dt*38.5);
enable=1'b0; #(dt*4);
enable=1'b1; #(dt*7.5);
$finish;
end 

initial begin 
$dumpfile ("archivo.vcd);
$dumpvars;
end 
end module
