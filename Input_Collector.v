module Input_Collector(o, x1, x2, x3, x4, x5, x6, x7, x8, x9);
	output [18:1]o;
	input [2:1]x1;
	input [2:1]x2;
	input [2:1]x3;
	input [2:1]x4;
	input [2:1]x5;
	input [2:1]x6;
	input [2:1]x7;
	input [2:1]x8;
	input [2:1]x9;
	
	//button pressed from 2 players
	assign o[2:1] = x1[2:1];
	assign o[4:3] = x2[2:1];
	assign o[6:5] = x3[2:1];
	assign o[8:7] = x4[2:1];
	assign o[10:9] = x5[2:1];
	assign o[12:11] = x6[2:1];
	assign o[14:13] = x7[2:1];
	assign o[16:15] = x8[2:1];
	assign o[18:17] = x9[2:1];
	
endmodule
