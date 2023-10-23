module de_morgan_one(a,b,x,y);
	input a,b;
	output y;
	output x;
	assign y=~(a&b);
	assign x=~(a)|~(b);
endmodule