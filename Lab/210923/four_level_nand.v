module four_level_nand(a,b,c,d,y);
	input a,b,c,d;
	output y;
	wire w1;
	assign w1=~(a&b);
	wire w2;
	assign w2=~(c&d);
	wire w3;
	assign w3=~(w1&w1);
	wire w4;
	assign w4=~(w2&w2);
	assign y=~(w3&w4);
endmodule