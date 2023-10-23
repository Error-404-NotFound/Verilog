module notbynand(a,y);
	input a;
	output y;
	assign y = ~(a&a);
endmodule