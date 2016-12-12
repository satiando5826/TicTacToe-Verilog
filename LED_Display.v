module LED_Display(l, b, x, reset);
	output [2:1]l;
	//input from xor and button
	input b, reset;
	input [2:1]x;
	wire clk;
	D_FF d1(clk, 1'b0, b, reset);
	D_FF p1(l[1], x[1], clk, reset);
	D_FF p2(l[2], x[2], clk, reset);
endmodule

module D_FF(q, d, clk, reset);
	output q;
	input d, clk, reset;
	reg q;
	always@(posedge reset or negedge clk)
	if(reset)
		q <= 1'b0;
	else
		q <= d;
endmodule
