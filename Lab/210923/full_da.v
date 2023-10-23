module full_da(a, b, c, y, x);
	input a, b, c;
	output y, x;
	assign y = a ^ b ^ c; 
	assign x = (a & b)||(b&c)||(c&a); 
endmodule