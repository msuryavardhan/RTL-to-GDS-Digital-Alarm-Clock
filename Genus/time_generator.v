module time_generator (
    input  clk,
    input  reset,
    output reg tick_1s
);

reg [25:0] div_cnt;   // Adjust width per frequency

always @(posedge clk) begin
    if (reset) begin
        div_cnt <= 0;
        tick_1s <= 0;
    end
    else begin
        if (div_cnt == 10) begin  // Example: 50MHz -> 1s
            div_cnt <= 0;
            tick_1s <= 1;
        end
        else begin
            div_cnt <= div_cnt + 1;
            tick_1s <= 0;
        end
    end
end

endmodule
