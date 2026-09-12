module alarm_clock_tb;

reg clk;
reg reset;
reg alarm_set;

reg [4:0] set_hour;
reg [5:0] set_min;
reg [5:0] set_sec;

wire [4:0] hour;
wire [5:0] min;
wire [5:0] sec;

wire [4:0] alarm_hour;
wire [5:0] alarm_min;
wire [5:0] alarm_sec;

wire alarm_on;

//////////////////////////////////////////
// Instantiate DUT
//////////////////////////////////////////

alarm_clock_top dut (
    .clk(clk),
    .reset(reset),
    .alarm_set(alarm_set),
    .set_hour(set_hour),
    .set_min(set_min),
    .set_sec(set_sec),
    .hour(hour),
    .min(min),
    .sec(sec),
    .alarm_hour(alarm_hour),
    .alarm_min(alarm_min),
    .alarm_sec(alarm_sec),
    .alarm_on(alarm_on)
);

//////////////////////////////////////////
// Clock Generation (10ns period)
//////////////////////////////////////////

always #5 clk = ~clk;

//////////////////////////////////////////
// VCD Dump
//////////////////////////////////////////

initial begin
    $dumpfile("alarm_clock.vcd");
    $dumpvars(0, alarm_clock_tb);
end

//////////////////////////////////////////
// Stimulus
//////////////////////////////////////////

initial begin
    clk = 0;
    reset = 1;
    alarm_set = 0;

    set_hour = 5'd0;
    set_min  = 6'd0;
    set_sec  = 6'd5;   // ALARM AT 00:00:05

    #20;
    reset = 0;

    //----------------------------------
    // Set alarm time
    //----------------------------------
    #10;
    alarm_set = 1;
    #10;
    alarm_set = 0;

    //----------------------------------
    // Let time run
    //----------------------------------
    #2000;

    $finish;
end

endmodule
