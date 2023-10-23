module four_one_mux_bench();
	reg x1;
	reg y1;
	reg a1,b1,c1,d1;
	wire out1;
	four_one_mux dUT_1(.x(x1),.y(y1),.a(a1),.b(b1),.c(c1),.d(d1),.out(out1));
	initial
	begin
		x1=1'b0;y1=1'b0;
	#100	x1=1'b0;y1=1'b1;
	#100	x1=1'b1;y1=1'b0;
	#100	x1=1'b1;y1=1'b1;
	end
endmodule