module alarm_clock_top (
    input clk,
    input reset,
    input alarm_set,
    input [4:0] set_hour,
    input [5:0] set_min,
    input [5:0] set_sec,
    output [4:0] hour,
    output [5:0] min,
    output [5:0] sec,
    output [4:0] alarm_hour,
    output [5:0] alarm_min,
    output [5:0] alarm_sec,
    output alarm_on
);

wire tick_1s;
wire alarm_set_sync;
wire alarm_enable;

time_generator tg (
    .clk(clk),
    .reset(reset),
    .tick_1s(tick_1s)
);

time_counter tc (
    .clk(clk),
    .reset(reset),
    .tick_1s(tick_1s),
    .sec(sec),
    .min(min),
    .hour(hour)
);

key_register kr (
    .clk(clk),
    .reset(reset),
    .alarm_set(alarm_set),
    .alarm_set_sync(alarm_set_sync)
);

alarm_register ar (
    .clk(clk),
    .reset(reset),
    .alarm_set_sync(alarm_set_sync),
    .set_hour(set_hour),
    .set_min(set_min),
    .set_sec(set_sec),
    .alarm_hour(alarm_hour),
    .alarm_min(alarm_min),
    .alarm_sec(alarm_sec),
    .alarm_enable(alarm_enable)
);

alarm_controller ac (
    .clk(clk),
    .reset(reset),
    .alarm_enable(alarm_enable),
    .hour(hour),
    .min(min),
    .sec(sec),
    .alarm_hour(alarm_hour),
    .alarm_min(alarm_min),
    .alarm_sec(alarm_sec),
    .alarm_on(alarm_on)
);

endmodule
