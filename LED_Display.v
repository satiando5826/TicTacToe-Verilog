module LED_Display(l, clk, b, x, gend, reset);
	output [2:1]l;
	output clk;
	//input from xor and button
	input b, gend, reset;
	input [2:1]x;
	wire w;
	//ignore any input if game is end
	//gend = not win
	and a1(w, b, gend);
	
	D_FF d1(clk, 1'b1, w, reset);
	D_FF p1(l[1], x[1], clk, reset);
	D_FF p2(l[2], x[2], clk, reset);
endmodule

module D_FF(q, d, clk, reset);
	output q;
	input d, clk, reset;
	reg q;
	always@(posedge reset or posedge clk)
	if(reset)
		q <= 1'b0;
	else
		q <= d;
endmodule
