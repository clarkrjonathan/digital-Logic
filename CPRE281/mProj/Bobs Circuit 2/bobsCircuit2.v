// Copyright (C) 2024  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 23.1std.1 Build 993 05/14/2024 SC Standard Edition"
// CREATED		"Thu Oct 10 09:04:08 2024"

module bobsCircuit2(
	W,
	X,
	Y,
	Z,
	B
);


input wire	W;
input wire	X;
input wire	Y;
input wire	Z;
output wire	B;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





bobsCircuit	b2v_inst(
	.W(W),
	.X(X),
	.Y(Y),
	.Z(Z),
	.B(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_2 = ~(X & W);

assign	SYNTHESIZED_WIRE_0 = Y & Z;


busmux_0	b2v_inst4(
	.sel(SYNTHESIZED_WIRE_0),
	.dataa(SYNTHESIZED_WIRE_1),
	.datab(SYNTHESIZED_WIRE_2),
	.result(B));


endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [0:0] dataa;
input [0:0] datab;
output [0:0] result;

endmodule

