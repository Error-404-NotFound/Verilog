module n_full_adder(a,b,y1);
	parameter n=8;
	wire [n:0]c;
	assign c[0]=0;
	input [n-1:0]a;
	input [n-1:0]b;
	output [n-1:0]y1;
	wire y2;
	genvar i;
	generate
		for(i=0;i<n;i=i+1)
		begin
			full_adder dUT(a[i],b[i],c[i],y1[i],c[i+1]);
		end
	endgenerate
	//assign y2=c[8];
endmodule

module n_full_adder_bench();
	parameter n=8;
	reg [n-1:0] a,b;
	//reg s;
	wire [n-1:0] Y;
	n_full_adder x1(.a(a), .b(b), .y1(Y));
	initial
	begin
		a=123; b=123;
	end
endmodule