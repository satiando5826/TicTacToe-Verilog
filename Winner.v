module Winner(w, sw, b);
	//takes all outputs from LED_Displays
	//from Input_Collector box
	output [3:1]w;
	input [18:1]sw;
	input [9:1]b;
	wire [16:1]c;
	//p1 8 conditons
	and p11(c[1], sw[1], sw[3], sw[5]);
	and p12(c[2], sw[7], sw[9], sw[11]);
	and p13(c[3], sw[13], sw[15], sw[17]);
	and p14(c[4], sw[1], sw[9], sw[17]);
	and p15(c[5], sw[5], sw[9], sw[13]);
	and p16(c[6], sw[1], sw[7], sw[13]);
	and p17(c[7], sw[3], sw[9], sw[15]);
	and p18(c[8], sw[5], sw[11], sw[17]);
	or p1(w[1], c[1], c[2], c[3], c[4], c[5], c[6], c[7], c[8]);
	
	//p2 8 conditons
	and p21(c[9], sw[2], sw[4], sw[6]);
	and p22(c[10], sw[8], sw[10], sw[12]);
	and p23(c[11], sw[14], sw[16], sw[18]);
	and p24(c[12], sw[2], sw[10], sw[18]);
	and p25(c[13], sw[6], sw[10], sw[14]);
	and p26(c[14], sw[2], sw[8], sw[14]);
	and p27(c[15], sw[4], sw[10], sw[16]);
	and p28(c[16], sw[6], sw[12], sw[18]);
	or p2(w[2], c[9], c[10], c[11], c[12], c[13], c[14], c[15], c[16]);
	
	//draw
	and draw(w[3], b[1], b[2], b[3], b[4], b[5], b[6], b[7], b[8], b[9]);
	
endmodule
