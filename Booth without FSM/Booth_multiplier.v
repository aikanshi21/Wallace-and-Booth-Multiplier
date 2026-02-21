`timescale 1ns / 1ps

module booth_multiplier(p, flag, multiplicand, multiplier, clk, rst);
        output signed [15:0] p;
        output flag;
        input signed [7:0] multiplicand; 
        input signed [7:0] multiplier;
        input clk;
        input rst;

    reg signed [7:0] Acc, Q, M;
    reg Q_1;
    reg [3:0] count;
    wire [7:0] sum, diff;

    always @(posedge clk)
    begin
        if (rst) 
        begin
            Acc <= 8'b0;
            M <= multiplicand;
            Q <=  multiplier;
            Q_1 <= 1'b0;
            count <= 1'd0;
        end
        else if (count<8)
        begin
            case ({Q[0], Q_1}) 
                2'b01 : {Acc, Q, Q_1} <= {sum[7], sum, Q};               
                2'b10 : {Acc, Q, Q_1} <= {diff[7], diff, Q}; 
                default: {Acc, Q, Q_1} <= {Acc[7], Acc, Q}; 
            endcase
            count <= count + 1;
        end
    end

    simple_alu add (sum, Acc, M, 1'b0);
    simple_alu sub (diff, Acc, ~M, 1'b1);
    assign p = {Acc, Q};
    assign flag = (count == 8) ;
endmodule
