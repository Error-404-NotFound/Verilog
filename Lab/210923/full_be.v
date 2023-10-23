module full_be(a,b,c,y,x);
	input a,b,c;
	output reg y,x;
	always @ (a || b || c)
	begin
		if(a==1'b0 && b==1'b0 && c==1'b0)
			y=1'b0;
		if(a==1'b0 && b==1'b0 && c==1'b1)
			y=1'b1;
		if(a==1'b0 && b==1'b1 && c==1'b0)
			y=1'b1;
		if(a==1'b0 && b==1'b1 && c==1'b1)
			y=1'b0;
		if(a==1'b1 && b==1'b0 && c==1'b0)
			y=1'b1;
		if(a==1'b1 && b==1'b0 && c==1'b1)
			y=1'b0;
		if(a==1'b1 && b==1'b1 && c==1'b0)
			y=1'b0;
		if(a==1'b1 && b==1'b1 && c==1'b1)
			y=1'b1;
	end
	always @ (a || b || c)
	begin
		if(a==1'b0 && b==1'b0 && c==1'b0)
			x=1'b0;
		if(a==1'b0 && b==1'b0 && c==1'b1)
			x=1'b0;
		if(a==1'b0 && b==1'b1 && c==1'b0)
			x=1'b0;
		if(a==1'b0 && b==1'b1 && c==1'b1)
			x=1'b1;
		if(a==1'b1 && b==1'b0 && c==1'b0)
			x=1'b0;
		if(a==1'b1 && b==1'b0 && c==1'b1)
			x=1'b1;
		if(a==1'b1 && b==1'b1 && c==1'b0)
			x=1'b1;
		if(a==1'b1 && b==1'b1 && c==1'b1)
			x=1'b1;
	end
endmodule