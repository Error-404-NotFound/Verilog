module half_st(a, b, y, x);
	input a, b;
	output y, x;
	assign y = a ^ b; 
	assign x = a & b; 
endmodule