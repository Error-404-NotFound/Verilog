module full_adder(input a,b,c, output y1,y2);
	wire y3,y4;
	half_adder_a uut1(a,b,y3,y4);
	half_adder_a uut2(y3,c,y1,y5);
	or(y2,y4,y5);
endmodule

module full_adder_bench();
	reg a1,b1,c1; 
	wire ya,yb; 
	full_adder dUT_(.a(a1),.b(b1),.c(c1),.y1(ya),.y2(yb));
	initial  
	begin
	      	a1=1'b0;b1=1'b0;c1=1'b0;  
	#100    a1=1'b0;b1=1'b0;c1=1'b1;  
	#100    a1=1'b0;b1=1'b1;c1=1'b0; 
	#100    a1=1'b0;b1=1'b1;c1=1'b1;
	#100    a1=1'b1;b1=1'b0;c1=1'b0;
	#100    a1=1'b1;b1=1'b0;c1=1'b1;
	#100    a1=1'b1;b1=1'b1;c1=1'b0;
	#100    a1=1'b1;b1=1'b1;c1=1'b1;   
	end
endmodule