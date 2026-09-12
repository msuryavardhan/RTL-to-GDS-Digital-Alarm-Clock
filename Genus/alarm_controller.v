module alarm_controller (
    input clk,
    input reset,
    input alarm_enable,
    input [4:0] hour,
    input [5:0] min,
    input [5:0] sec,
    input [4:0] alarm_hour,
    input [5:0] alarm_min,
    input [5:0] alarm_sec,
    output reg alarm_on
);

reg [1:0] state;
reg [1:0] alarm_cnt;

localparam IDLE       = 2'b00,
           WAIT_MATCH = 2'b01,
           ALARM_ON_S = 2'b10,
           ALARM_OFF  = 2'b11;

always @(posedge clk) begin
    if (reset) begin
        state <= IDLE;
        alarm_on <= 1'b0;
        alarm_cnt <= 2'd0;
    end
    else begin
        case (state)

            IDLE: begin
                alarm_on <= 1'b0;
                if (alarm_enable)
                    state <= WAIT_MATCH;
            end

            WAIT_MATCH: begin
                alarm_on <= 1'b0;
                if (hour == alarm_hour &&
                    min  == alarm_min  &&
                    sec  == alarm_sec) begin
                        state <= ALARM_ON_S;
                        alarm_cnt <= 2'd2;
                end
            end

            ALARM_ON_S: begin
                alarm_on <= 1'b1;
                if (alarm_cnt == 2'd0)
                    state <= ALARM_OFF;
                else
                    alarm_cnt <= alarm_cnt - 1'b1;
            end

            ALARM_OFF: begin
                alarm_on <= 1'b0;
                state <= WAIT_MATCH;
            end

        endcase
    end
end

endmodule
