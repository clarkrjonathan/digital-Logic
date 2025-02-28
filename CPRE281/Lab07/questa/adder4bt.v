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
// CREATED		"Thu Oct 24 09:31:47 2024"

module adder4bt(
	X1,
	Y2,
	X2,
	Cin,
	Y1,
	X3,
	Y3,
	X4,
	Y4,
	S1,
	S2,
	S3,
	S4,
	Cout,
	Ov
);


input wire	X1;
input wire	Y2;
input wire	X2;
input wire	Cin;
input wire	Y1;
input wire	X3;
input wire	Y3;
input wire	X4;
input wire	Y4;
output wire	S1;
output wire	S2;
output wire	S3;
output wire	S4;
output wire	Cout;
output wire	Ov;

wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	Cout = SYNTHESIZED_WIRE_1;



assign	Ov = SYNTHESIZED_WIRE_5 ^ SYNTHESIZED_WIRE_1;


oneBitAdder	b2v_inst2(
	.Cin(Cin),
	.X(X1),
	.Y(Y1),
	.S(S1),
	.Cout(SYNTHESIZED_WIRE_2));


oneBitAdder	b2v_inst3(
	.Cin(SYNTHESIZED_WIRE_2),
	.X(X2),
	.Y(Y2),
	.S(S2),
	.Cout(SYNTHESIZED_WIRE_3));


oneBitAdder	b2v_inst4(
	.Cin(SYNTHESIZED_WIRE_3),
	.X(X3),
	.Y(Y3),
	.S(S3),
	.Cout(SYNTHESIZED_WIRE_5));


oneBitAdder	b2v_inst5(
	.Cin(SYNTHESIZED_WIRE_5),
	.X(X4),
	.Y(Y4),
	.S(S4),
	.Cout(SYNTHESIZED_WIRE_1));


endmodule
