module and_of_bits #(parameter N=8)(input [N-1:0] a,output result);
	wire [N:0]ans;
	assign ans[0]=1;
	genvar i;
	generate
		for(i=0;i<N;i=i+1)
		begin
			myand uut(a[i],ans[i],ans[i+1]);
		end
	endgenerate
	assign result=ans[N];
endmodule

module and_of_bits_bench();
	reg [7:0] a;
	wire result;
	and_of_bits dUT_1(.a(a),.result(result));
  	initial begin
    		a = 8'b11111111;
  	end
endmodule