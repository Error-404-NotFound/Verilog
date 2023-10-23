module CountOnes(input [8:0] number,output reg [3:0] ones_count);
	integer i; 
	always @* begin 
    	ones_count = 0; 
    	for (i = 0; i < 9; i = i + 1) begin
        	if (number[i] == 1'b1)
            		ones_count = ones_count + 1;
    		end	
	end
endmodule

module CountOnes_bench;
    reg [8:0] number;
    wire [3:0] ones_count;
    CountOnes UUT (.number(number),.ones_count(ones_count));
    initial begin
        	number = 9'b101010101;
        #100	number = 9'b111111111;
    end

endmodule

