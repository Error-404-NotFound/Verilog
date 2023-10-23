module n_full_adder#(parameter N=4)(a, b, k, S);
	input [N-1:0]a,b;
	input k;
	output [N:0]S;

	wire [N+1:0]c;
	wire [N:0] a1, b1;
	wire [N:0] d;
	assign c[0]=k;
	assign d=k?~b1:b1;
	genvar i;
	generate
	for(i=0;i<N;i=i+1) begin: fa
		full_adder fa_(.a(a1[i]),.b(d[i]),.c(c[i]),.y(S[i]),.x(c[i+1]));
	end
	endgenerate
	//half_adder h1(.a(a),.b(b),.y(S0),.x(C1));
	//half_adder h2(.a(c),.b(S0),.y(y),.x(C2));
	//OR o(.a(C1),.b(C2),.O(x));
endmodule