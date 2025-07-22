module test_bench;
//inputs
reg clk;
reg [1:0] in;
reg rst;
//outputs
wire out;
wire [1:0]change;
wire c_state,n_state;

vending_machine uut(
.clk(clk),
.rst(rst),
.in(in), 
.out(out),
.change(change),
.c_state(c_state),
.n_state(n_state)
);
initial
begin
rst = 1;
clk = 0;
#6 rst = 0;
in = 1;
#11 in = 1;
#16 in = 1;
#25 $finish;
end
always #5 clk = ~clk;
endmodule
