module contador #(parameter n=4)(
input CLOCK,
input RESET,
input ENABLE,
input [n-1:0] MAX_CNT,
output END_CNT,
output [n-1:0] COUNT
);

wire [n-1:0] d,mas1;
wire compara,fin;
reg [n-1:0] q={n{1'b0}};

//sumador
assign mas1=q+1;

//comparador
assign compara = (q>=MAX_CNT);
assign fin = compara & ENABLE;

//mux 2-1
assign d=fin? {n{1'b0}} : mas1;

//registro 
always @(posedge CLOCK)
if (RESET)
q<={n{1'b0}};
else if (ENABLE)
q<=d;

//salidas
assign COUNT=q;
assign END_CNT=fin;
endmodule