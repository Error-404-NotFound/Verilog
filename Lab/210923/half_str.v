module half_str(a, b, y, x);
	input a, b;
	output y,x;
	xor x1(y,a,b);
	and x2(x,a,b);
endmodule