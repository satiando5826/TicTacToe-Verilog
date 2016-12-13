module Split_Winner(p1, p2, draw, w);
	output p1, p2, draw;
	input [3:1]w;
	
	assign p1 = w[1];
	assign p2 = w[2];
	assign draw = w[3];
endmodule