module n_full_adder_one #(parameter N=4)(A,B, k, S);
	input [N-1:0]A,B; 
	input k; 
	output [N:0]S; 
	wire [N+1:0]C;
	wire [N:0] A1, B1;
	wire [N:0]xB;
	assign A1 = {A[N-1],A};
	assign B1 = {B[N-1],B};
	assign xB = k?~B1:B1; 
	assign C[0] = k;
	genvar i; 
	generate 
	for (i = 0; i < N+1; i= i+1) begin : FA  
		full_adder FA_ (.a(A1[i]), .b(xB[i]), .c(C[i]), .y(S[i]), .x(C[i+1]));
	end
	endgenerate
endmodule