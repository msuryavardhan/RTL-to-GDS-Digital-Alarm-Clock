
//input ports
add mapped point clk clk -type PI PI
add mapped point reset reset -type PI PI
add mapped point alarm_set alarm_set -type PI PI
add mapped point set_hour[4] set_hour[4] -type PI PI
add mapped point set_hour[3] set_hour[3] -type PI PI
add mapped point set_hour[2] set_hour[2] -type PI PI
add mapped point set_hour[1] set_hour[1] -type PI PI
add mapped point set_hour[0] set_hour[0] -type PI PI
add mapped point set_min[5] set_min[5] -type PI PI
add mapped point set_min[4] set_min[4] -type PI PI
add mapped point set_min[3] set_min[3] -type PI PI
add mapped point set_min[2] set_min[2] -type PI PI
add mapped point set_min[1] set_min[1] -type PI PI
add mapped point set_min[0] set_min[0] -type PI PI
add mapped point set_sec[5] set_sec[5] -type PI PI
add mapped point set_sec[4] set_sec[4] -type PI PI
add mapped point set_sec[3] set_sec[3] -type PI PI
add mapped point set_sec[2] set_sec[2] -type PI PI
add mapped point set_sec[1] set_sec[1] -type PI PI
add mapped point set_sec[0] set_sec[0] -type PI PI

//output ports
add mapped point hour[4] hour[4] -type PO PO
add mapped point hour[3] hour[3] -type PO PO
add mapped point hour[2] hour[2] -type PO PO
add mapped point hour[1] hour[1] -type PO PO
add mapped point hour[0] hour[0] -type PO PO
add mapped point min[5] min[5] -type PO PO
add mapped point min[4] min[4] -type PO PO
add mapped point min[3] min[3] -type PO PO
add mapped point min[2] min[2] -type PO PO
add mapped point min[1] min[1] -type PO PO
add mapped point min[0] min[0] -type PO PO
add mapped point sec[5] sec[5] -type PO PO
add mapped point sec[4] sec[4] -type PO PO
add mapped point sec[3] sec[3] -type PO PO
add mapped point sec[2] sec[2] -type PO PO
add mapped point sec[1] sec[1] -type PO PO
add mapped point sec[0] sec[0] -type PO PO
add mapped point alarm_hour[4] alarm_hour[4] -type PO PO
add mapped point alarm_hour[3] alarm_hour[3] -type PO PO
add mapped point alarm_hour[2] alarm_hour[2] -type PO PO
add mapped point alarm_hour[1] alarm_hour[1] -type PO PO
add mapped point alarm_hour[0] alarm_hour[0] -type PO PO
add mapped point alarm_min[5] alarm_min[5] -type PO PO
add mapped point alarm_min[4] alarm_min[4] -type PO PO
add mapped point alarm_min[3] alarm_min[3] -type PO PO
add mapped point alarm_min[2] alarm_min[2] -type PO PO
add mapped point alarm_min[1] alarm_min[1] -type PO PO
add mapped point alarm_min[0] alarm_min[0] -type PO PO
add mapped point alarm_sec[5] alarm_sec[5] -type PO PO
add mapped point alarm_sec[4] alarm_sec[4] -type PO PO
add mapped point alarm_sec[3] alarm_sec[3] -type PO PO
add mapped point alarm_sec[2] alarm_sec[2] -type PO PO
add mapped point alarm_sec[1] alarm_sec[1] -type PO PO
add mapped point alarm_sec[0] alarm_sec[0] -type PO PO
add mapped point alarm_on alarm_on -type PO PO

//inout ports




//Sequential Pins
add mapped point ac/alarm_on/q ac/alarm_on_reg/Q -type DFF DFF
add mapped point ac/alarm_cnt[0]/q ac/alarm_cnt_reg[0]/Q -type DFF DFF
add mapped point ac/alarm_cnt[1]/q ac/alarm_cnt_reg[1]/Q -type DFF DFF
add mapped point ac/state[0]/q ac/state_reg[0]/Q -type DFF DFF
add mapped point ac/state[1]/q ac/state_reg[1]/Q -type DFF DFF
add mapped point ar/alarm_min[4]/q ar/alarm_min_reg[4]/Q -type DFF DFF
add mapped point ar/alarm_hour[3]/q ar/alarm_hour_reg[3]/Q -type DFF DFF
add mapped point ar/alarm_hour[4]/q ar/alarm_hour_reg[4]/Q -type DFF DFF
add mapped point ar/alarm_sec[5]/q ar/alarm_sec_reg[5]/Q -type DFF DFF
add mapped point ar/alarm_min[0]/q ar/alarm_min_reg[0]/Q -type DFF DFF
add mapped point ar/alarm_min[1]/q ar/alarm_min_reg[1]/Q -type DFF DFF
add mapped point ar/alarm_min[2]/q ar/alarm_min_reg[2]/Q -type DFF DFF
add mapped point ar/alarm_min[3]/q ar/alarm_min_reg[3]/Q -type DFF DFF
add mapped point ar/alarm_hour[0]/q ar/alarm_hour_reg[0]/Q -type DFF DFF
add mapped point ar/alarm_enable/q ar/alarm_enable_reg/Q -type DFF DFF
add mapped point ar/alarm_min[5]/q ar/alarm_min_reg[5]/Q -type DFF DFF
add mapped point ar/alarm_sec[0]/q ar/alarm_sec_reg[0]/Q -type DFF DFF
add mapped point ar/alarm_sec[1]/q ar/alarm_sec_reg[1]/Q -type DFF DFF
add mapped point ar/alarm_hour[2]/q ar/alarm_hour_reg[2]/Q -type DFF DFF
add mapped point ar/alarm_sec[2]/q ar/alarm_sec_reg[2]/Q -type DFF DFF
add mapped point ar/alarm_sec[3]/q ar/alarm_sec_reg[3]/Q -type DFF DFF
add mapped point ar/alarm_sec[4]/q ar/alarm_sec_reg[4]/Q -type DFF DFF
add mapped point ar/alarm_hour[1]/q ar/alarm_hour_reg[1]/Q -type DFF DFF
add mapped point tc/hour[0]/q tc/hour_reg[0]/Q -type DFF DFF
add mapped point tc/hour[1]/q tc/hour_reg[1]/Q -type DFF DFF
add mapped point tc/hour[2]/q tc/hour_reg[2]/Q -type DFF DFF
add mapped point tc/hour[3]/q tc/hour_reg[3]/Q -type DFF DFF
add mapped point tc/hour[4]/q tc/hour_reg[4]/Q -type DFF DFF
add mapped point tc/min[0]/q tc/min_reg[0]/Q -type DFF DFF
add mapped point tc/min[1]/q tc/min_reg[1]/Q -type DFF DFF
add mapped point tc/min[2]/q tc/min_reg[2]/Q -type DFF DFF
add mapped point tc/min[3]/q tc/min_reg[3]/Q -type DFF DFF
add mapped point tc/min[4]/q tc/min_reg[4]/Q -type DFF DFF
add mapped point tc/min[5]/q tc/min_reg[5]/Q -type DFF DFF
add mapped point tc/sec[0]/q tc/sec_reg[0]/Q -type DFF DFF
add mapped point tc/sec[1]/q tc/sec_reg[1]/Q -type DFF DFF
add mapped point tc/sec[2]/q tc/sec_reg[2]/Q -type DFF DFF
add mapped point tc/sec[3]/q tc/sec_reg[3]/Q -type DFF DFF
add mapped point tc/sec[4]/q tc/sec_reg[4]/Q -type DFF DFF
add mapped point tc/sec[5]/q tc/sec_reg[5]/Q -type DFF DFF
add mapped point tg/tick_1s/q tg/tick_1s_reg/Q -type DFF DFF
add mapped point tg/div_cnt[10]/q tg/div_cnt_reg[10]/Q -type DFF DFF
add mapped point tg/div_cnt[5]/q tg/div_cnt_reg[5]/Q -type DFF DFF
add mapped point tg/div_cnt[6]/q tg/div_cnt_reg[6]/Q -type DFF DFF
add mapped point tg/div_cnt[7]/q tg/div_cnt_reg[7]/Q -type DFF DFF
add mapped point tg/div_cnt[8]/q tg/div_cnt_reg[8]/Q -type DFF DFF
add mapped point tg/div_cnt[9]/q tg/div_cnt_reg[9]/Q -type DFF DFF
add mapped point tg/div_cnt[4]/q tg/div_cnt_reg[4]/Q -type DFF DFF
add mapped point tg/div_cnt[11]/q tg/div_cnt_reg[11]/Q -type DFF DFF
add mapped point tg/div_cnt[12]/q tg/div_cnt_reg[12]/Q -type DFF DFF
add mapped point tg/div_cnt[13]/q tg/div_cnt_reg[13]/Q -type DFF DFF
add mapped point tg/div_cnt[14]/q tg/div_cnt_reg[14]/Q -type DFF DFF
add mapped point tg/div_cnt[15]/q tg/div_cnt_reg[15]/Q -type DFF DFF
add mapped point tg/div_cnt[0]/q tg/div_cnt_reg[0]/Q -type DFF DFF
add mapped point tg/div_cnt[16]/q tg/div_cnt_reg[16]/Q -type DFF DFF
add mapped point tg/div_cnt[17]/q tg/div_cnt_reg[17]/Q -type DFF DFF
add mapped point tg/div_cnt[18]/q tg/div_cnt_reg[18]/Q -type DFF DFF
add mapped point tg/div_cnt[19]/q tg/div_cnt_reg[19]/Q -type DFF DFF
add mapped point tg/div_cnt[1]/q tg/div_cnt_reg[1]/Q -type DFF DFF
add mapped point tg/div_cnt[20]/q tg/div_cnt_reg[20]/Q -type DFF DFF
add mapped point tg/div_cnt[21]/q tg/div_cnt_reg[21]/Q -type DFF DFF
add mapped point tg/div_cnt[22]/q tg/div_cnt_reg[22]/Q -type DFF DFF
add mapped point tg/div_cnt[23]/q tg/div_cnt_reg[23]/Q -type DFF DFF
add mapped point tg/div_cnt[24]/q tg/div_cnt_reg[24]/Q -type DFF DFF
add mapped point tg/div_cnt[25]/q tg/div_cnt_reg[25]/Q -type DFF DFF
add mapped point tg/div_cnt[2]/q tg/div_cnt_reg[2]/Q -type DFF DFF
add mapped point tg/div_cnt[3]/q tg/div_cnt_reg[3]/Q -type DFF DFF



//Black Boxes
add mapped point kr kr -type BBOX BBOX



//Empty Modules as Blackboxes
