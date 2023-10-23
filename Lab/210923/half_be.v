module half_be(a,b,y,x);
	input a,b;
	output reg y,x;
	always @ (a || b)
	begin
		if(a==1'b0 && b==1'b0)
			y=1'b0;
		if(a==1'b0 && b==1'b1)
			y=1'b1;
		if(a==1'b1 && b==1'b0)
			y=1'b1;
		if(a==1'b1 && b==1'b1)
			y=1'b0;
	end
	always @ (a || b)
	begin
		if(a==1'b0 && b==1'b0)
			x=1'b0;
		if(a==1'b0 && b==1'b1)
			x=1'b0;
		if(a==1'b1 && b==1'b0)
			x=1'b0;
		if(a==1'b1 && b==1'b1)
			x=1'b1;
	end
endmodule