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
// CREATED		"Thu Oct 24 08:57:03 2024"

module signedAdder(
	X1,
	X2,
	X3,
	X4,
	Y1,
	Y2,
	Y3,
	Y4,
	Control,
	S1,
	S2,
	S3,
	S4,
	Cout,
	Ov
);


input wire	X1;
input wire	X2;
input wire	X3;
input wire	X4;
input wire	Y1;
input wire	Y2;
input wire	Y3;
input wire	Y4;
input wire	Control;
output wire	S1;
output wire	S2;
output wire	S3;
output wire	S4;
output wire	Cout;
output wire	Ov;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_0 = Y1 ^ Control;

assign	SYNTHESIZED_WIRE_1 = Y2 ^ Control;

assign	SYNTHESIZED_WIRE_2 = Y3 ^ Control;

assign	SYNTHESIZED_WIRE_3 = Y4 ^ Control;


adder4bt	b2v_inst5(
	.Cin(Control),
	.X1(X1),
	.Y1(SYNTHESIZED_WIRE_0),
	.X2(X2),
	.Y2(SYNTHESIZED_WIRE_1),
	.X3(X3),
	.Y3(SYNTHESIZED_WIRE_2),
	.X4(X4),
	.Y4(SYNTHESIZED_WIRE_3),
	.S1(S1),
	.S2(S2),
	.S3(S3),
	.S4(S4),
	.Cout(Cout),
	.Ov(Ov));


endmodule
