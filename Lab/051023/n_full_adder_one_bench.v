module n_full_adder_one_bench();
	reg [3:0]a1;
	reg [3:0]b1;
	reg k1;
	wire [4:0]S1;
	n_full_adder_one dUT_1(.a(a1),.b(b1),.k(k1),.S(S1));
	initial
	begin
		a1=4'd10;b1=4'd2;k1=1'b0;
	#100	a1=4'd8;b1=4'd5;k1=1'b0;
	end
endmodule