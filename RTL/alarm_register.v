module alarm_register (
    input clk,
    input reset,
    input alarm_set_sync,
    input [4:0] set_hour,
    input [5:0] set_min,
    input [5:0] set_sec,
    output reg [4:0] alarm_hour,
    output reg [5:0] alarm_min,
    output reg [5:0] alarm_sec,
    output reg alarm_enable
);

always @(posedge clk) begin
    if (reset) begin
        alarm_hour   <= 5'd0;
        alarm_min    <= 6'd0;
        alarm_sec    <= 6'd0;
        alarm_enable <= 1'b0;
    end
    else if (alarm_set_sync) begin
        alarm_hour   <= set_hour;
        alarm_min    <= set_min;
        alarm_sec    <= set_sec;
        alarm_enable <= 1'b1;
    end
end

endmodule
