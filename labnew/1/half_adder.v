module half_adder_a(input a,b, output y1,y2);
	xor(y1,a,b);
	and(y2,a,b);
endmodule

module half_adder_b(input a,b, output y1,y2);
	assign y1=a^b;
	assign y2=a*b;
endmodule

module half_adder_c(input a,b, output reg y1,y2);
	always @(a or b)
	begin
	if ((a==1 && b==0) || (a==0 && b==1)) assign y1=1'b1;
	else assign y1=1'b0;
	if(a==1 && b==1) assign y2=1'b1;
	else assign y2=1'b0;
	end
endmodule

module half_adder_bench();
	reg a1,b1,a2,b2; 
	wire ya,yb; 
	half_adder_b dut1 (.a(a1),.b(b1),.y1(ya),.y2(yb));
	initial  
	begin
	      	a1=1'b0;b1=1'b0;  
	#100    a1=1'b1;b1=1'b0;  
	#100    a1=1'b0;b1=1'b1; 
	#100    a1=1'b1;b1=1'b1;  
	end
endmodule