module fullAdder(Cin, X, Y, S, Cout);
	input Cin, X, Y;
	output Cout, S;
	
	assign S = (~X & Y & ~Cin) | (X & ~Y & ~Cin) | (~X & ~Y & ~Cin) | (X & Y & Cin);
	assign Cout = (X & Y) | (X & Cin) | (Y & Cin);
endmodule