module key_register (
    input clk,
    input reset,
    input alarm_set,
    output reg alarm_set_sync
);

always @(posedge clk) begin
    if (reset)
        alarm_set_sync <= 1'b0;
    else
        alarm_set_sync <= alarm_set;
end

endmodule
