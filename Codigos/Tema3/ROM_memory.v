//My memory

module ROM_memory
	# (parameter BITS_DATA=8, //Data width
           parameter BITS_ADDR=3 //Address width
        )(
	input clk,				// Clock
	input [BITS_ADDR-1:0] ADDR,		// Address bus
	output reg [BITS_DATA-1:0] D_out	//Output data
	);
// Memory array (depth x width): 2^3= 8_rows x 4_bits
reg [BITS_DATA-1:0] memoria [0: (2**BITS_ADDR)-1];
// 	data_width 	name	memory_depth
//	big-endian: the most significant byte  is at the lowest address

// Output update
always @ (posedge clk)
 D_out <= memoria[ADDR];

//The following code initializes the ROM contents via an external file
//with data in hexadecimal readmemh or use $readmemb for data in binary

initial
 $readmemb("Datos_memoria.txt",	//File name
	    memoria,		//Memory array name
	    0,			//Start Address
	    (2**BITS_ADDR)-1	//Stop Address
);
endmodule
