module time_counter (
    input clk,
    input reset,
    input tick_1s,
    output reg [5:0] sec,
    output reg [5:0] min,
    output reg [4:0] hour
);

always @(posedge clk) begin
    if (reset) begin
        sec  <= 6'd0;
        min  <= 6'd0;
        hour <= 5'd0;
    end
    else if (tick_1s) begin
        if (sec == 6'd59) begin
            sec <= 6'd0;
            if (min == 6'd59) begin
                min <= 6'd0;
                if (hour == 5'd23)
                    hour <= 5'd0;
                else
                    hour <= hour + 1'b1;
            end
            else
                min <= min + 1'b1;
        end
        else
            sec <= sec + 1'b1;
    end
end

endmodule
