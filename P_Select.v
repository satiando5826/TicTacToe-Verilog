module P_Select(x, i);
	output [2:1]x;
	//18 inputs
	input [18:1]i;
	//do xors 9+4+2+1+1 times
	wire [16:1]xout;
	xor x1(xout[1], i[1], i[2]);
	xor x2(xout[2], i[3], i[4]);
	xor x3(xout[3], i[5], i[6]);
	xor x4(xout[4], i[7], i[8]);
	xor x5(xout[5], i[9], i[10]);
	xor x6(xout[6], i[11], i[12]);
	xor x7(xout[7], i[13], i[14]);
	xor x8(xout[8], i[15], i[16]);
	xor x9(xout[9], i[17], i[18]);
	
	xor x10(xout[10], xout[1], xout[2]);
	xor x11(xout[11], xout[3], xout[4]);
	xor x12(xout[12], xout[5], xout[6]);
	xor x13(xout[13], xout[7], xout[8]);
	
	xor x14(xout[14], xout[10], xout[11]);
	xor x15(xout[15], xout[12], xout[13]);
	
	xor x16(xout[16], xout[14], xout[15]);
	
	xor p2(x[2], xout[9], xout[16]);
	not p1(x[1], x[2]);
endmodule
