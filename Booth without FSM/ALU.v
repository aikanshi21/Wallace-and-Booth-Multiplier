`timescale 1ns / 1ps

module simple_alu(out, A, B, Cin);
    output signed [7:0] out;
    input signed [7:0] A;
    input signed [7:0] B;
    input Cin;
    assign out = A + B + Cin;
endmodule
