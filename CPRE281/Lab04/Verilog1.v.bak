module farmers_problem(A, F, C, G, W);
	input F, C, G, W;
	output A;
	reg A;
	
	always @(F, C, G, W)
		if(F == 0)
			if(C == 0 & G == 0)
				A = 1;
			else
				A = 0;
		else
			A = 0;
endmodule