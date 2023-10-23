module four_one_mux(x,y,a,b,c,d,out);
	input a,b,c,d,x,y;
	output out;
	assign out=(a&(~x)&(~y))+(b&(~x)&y)+(c&x&(~y))+(d&x&y);
endmodule