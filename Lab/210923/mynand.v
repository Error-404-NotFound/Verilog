module mynand(a,b,y);
	input a,b;
	output y;
	wire w;
	and x1(w,a,b);
	not x2(y,w);
endmodule