module Button_Collector(x, b1, b2, b3, b4, b5, b6, b7, b8, b9);
	output [9:1]x;
	input b1, b2, b3, b4, b5, b6, b7, b8, b9;
	
	assign x[1] = b1;
	assign x[2] = b2;
	assign x[3] = b3;
	assign x[4] = b4;
	assign x[5] = b5;
	assign x[6] = b6;
	assign x[7] = b7;
	assign x[8] = b8;
	assign x[9] = b9;
endmodule
