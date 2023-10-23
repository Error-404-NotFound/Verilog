module full_subtractor(a, b, c, y, x);
	input a, b, c;
	output y, x;
	wire S0, C1, C2;
	half_subtractor h1(.a(a),.b(b),.y(S0),.x(C1));
	half_subtractor h2(.a(S0),.b(c),.y(y),.x(C2));
	OR o(.a(C1),.b(C2),.O(x));
endmodule