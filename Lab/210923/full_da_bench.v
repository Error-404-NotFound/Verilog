module full_da_bench();
	reg a1;
	reg b1;
	reg c1;
	wire y1;
	wire x1;
	full_da dUT_1(.a(a1),.b(b1),.c(c1),.y(y1),.x(x1));
	initial
	begin
		a1=1'b0;b1=1'b0;c1=1'b0;
	#100	a1=1'b0;b1=1'b0;c1=1'b1;
	#100	a1=1'b0;b1=1'b1;c1=1'b0;
	#100	a1=1'b0;b1=1'b1;c1=1'b1;
	#100	a1=1'b1;b1=1'b0;c1=1'b0;
	#100	a1=1'b1;b1=1'b0;c1=1'b1;
	#100	a1=1'b1;b1=1'b1;c1=1'b0;
	#100	a1=1'b1;b1=1'b1;c1=1'b1;
	end
endmodule