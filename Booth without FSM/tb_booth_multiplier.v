`timescale 1ns / 1ps

module tb_booth_multiplier;

reg clk;
reg rst;
reg signed [7:0] multiplier;
reg signed [7:0] multiplicand;

wire signed [15:0] p;
wire flag;

booth_multiplier uut (
    .clk(clk),
    .rst(rst),
    .multiplier(multiplier),
    .multiplicand(multiplicand),
    .p(p),
    .flag(flag)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 0;

    // Test Case 1
    #10;
    multiplier = -7;
    multiplicand = 13;
    rst = 1;

    #10 rst = 0;

    wait(flag);

    #20;
    $display("Time = %0t | Multiplicand = %d | Multiplier = %d | Product = %d | Binary = %b",
              $time, multiplicand, multiplier, p, p);
          
    // Test Case 2
    multiplier = 12;
    multiplicand = -5;
    rst = 1;

    #10 rst = 0;

    wait(flag);

    #20;
    $display("Time = %0t | Multiplicand = %d | Multiplier = %d | Product = %d | Binary = %b",
              $time, multiplicand, multiplier, p, p);
              
    $finish;
end
endmodule
