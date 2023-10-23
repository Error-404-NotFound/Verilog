module n_bit_arithmetic_compare #(parameter N=8)(input [N-1:0] A,input [N-1:0] B,input [1:0] operation,output [N-1:0] result,output equal,output less_than,output greater_than);

  wire [N-1:0] addition_result;
  wire [N-1:0] subtraction_result;
  assign addition_result = A + B;
  assign subtraction_result = A - B;
  assign result = (operation == 2'b00) ? addition_result :
                 (operation == 2'b01) ? subtraction_result :
                               		0; 
  assign equal = (operation == 2'b10) ? (A == B) : 0;
  assign less_than = (operation == 2'b10) ? (A < B) : 0;
  assign greater_than = (operation == 2'b10) ? (A > B) : 0;
endmodule

module testbench();
  reg [7:0] A;
  reg [7:0] B;
  reg [1:0] operation;
  wire [7:0] result;
  wire equal;
  wire less_than;
  wire greater_than;
  n_bit_arithmetic_compare uut (
    .A(A),
    .B(B),
    .operation(operation),
    .result(result),
    .equal(equal),
    .less_than(less_than),
    .greater_than(greater_than)
  );
  initial begin
    A = 8'b00000110;
    B = 8'b00000101;

    operation = 2'b00;
    #10;
    $display("Addition Result: %b", result);
    operation = 2'b01;
    #10;
    $display("Subtraction Result: %b", result);
    operation = 2'b10;
    #10;
    $display("Equal: %b", equal);
    $display("Less Than: %b", less_than);
    $display("Greater Than: %b", greater_than);
  end
endmodule
