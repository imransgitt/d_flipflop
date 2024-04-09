module dff_tb();
reg clk,reset,d;
wire q;

d_ff dut(.clk(clk),.reset(reset),.d(d),.q(q));

initial begin
$dumpfile("test_dff.vcd");
$dumpvars(0,dff_tb);
end

always #2 clk=~clk;

initial begin
clk=1'b0;
reset=1'b1;
d=1'b1;

#10
reset=1'b0;
d=1'b1;

#10
d=1'b0;

#100 $finish;
end
endmodule

