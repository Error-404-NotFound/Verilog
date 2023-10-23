module n_full#(parameter n=8)(a,b,out);
	input [n-1:0]a,b;
	output [n-1:0]out;
	wire [n:0]c;
	assign c[0]=0;
	wire w;
	genvar i;
	generate
	for(i=0;i<n;i=i+1) begin
		full_adder dUT(a[i],b[i],c[i],out[i],c[i+1]);
	end
	endgenerate
	assign w=c[8];
endmodule

module n_full_bench();
	reg [7:0]a,b;
	wire [7:0]out;
	n_full dUT_1(.a(a),.b(b),.out(out));
	initial
	begin
		a=123;b=100;
	end
endmodule