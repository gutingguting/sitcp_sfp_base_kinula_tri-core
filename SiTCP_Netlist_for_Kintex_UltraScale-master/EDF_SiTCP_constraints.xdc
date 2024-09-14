set_max_delay -datapath_only -from [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[0]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[10]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[1]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[2]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[3]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[4]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[5]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[6]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[7]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[8]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank0LastWrAddr_reg[9]/C}]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[0]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[10]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[1]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[2]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[3]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[4]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[5]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[6]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[7]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[8]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank0LastWrAddr_reg[9]/D}]] 5.000
set_max_delay -datapath_only -from [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[0]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[10]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[1]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[2]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[3]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[4]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[5]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[6]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[7]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[8]/C} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/dlyBank1LastWrAddr_reg[9]/C}]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[0]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[10]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[1]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[2]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[3]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[4]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[5]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[6]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[7]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[8]/D} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpBank1LastWrAddr_reg[9]/D}]] 5.000
set_max_delay -datapath_only -from [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/memRdReq_reg[0]/C} {sitcp/SiTCP/GMII/GMII_TXBUF/memRdReq_reg[1]/C}]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/irMemRdReq_reg[0]/D} {sitcp/SiTCP/GMII/GMII_TXBUF/irMemRdReq_reg[1]/D}]] 5.000
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins [list sitcp/SiTCP/GMII/GMII_RXCNT/SetPauseTime_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/crcOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[5]/CLR} \
          sitcp/SiTCP/GMII/GMII_RXCNT/ipgOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[3]/CLR} \
          sitcp/SiTCP/GMII/GMII_RXCNT/rcvdMacFlow_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxErr_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxPay_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxPrlTim_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxSfd_reg/CLR]]
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[8]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXCNT/ipgOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXCNT/irMacPauseExe_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/irMacPauseExe_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/irMacPauseExe_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/irMacPauseExe_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/macPauseExe_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/macPauseExe_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/macPauseLd_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/macPauseLd_reg[1]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXCNT/memRe_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/memWa_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[11]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[12]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[13]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[14]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[15]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[16]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[17]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[18]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[19]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[20]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[21]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[22]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[23]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXCNT/pasuseCntr_reg[9]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXCNT/pauseEnb_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXCNT/pauseExe_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXCNT/rdOk_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXCNT/rdReq_reg/CLR]]
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[1]/PRE} {sitcp/SiTCP/GMII/GMII_TXCNT/ipgCnt_reg[4]/PRE}]]
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0Status_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0Status_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1Status_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1Status_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[11]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[12]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[13]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[14]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[15]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[16]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[17]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[18]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[19]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[20]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[21]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[22]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[23]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[24]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[25]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[26]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[27]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[28]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[29]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[30]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[31]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/irRdAct_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/irRdAct_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[9]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxEndTgl_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxEof_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsEnb_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[9]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/phyLinkOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rdAct_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rdAct_reg[1]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/rdBank_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/rdEndDet_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rshrpMuxTrnsEnd_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rshrpMuxTrnsEnd_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/trnsActDly_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/trnsActDly_reg[1]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/trnsAct_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/wrBank_reg/CLR]]
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[0]/PRE}]
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins [list sitcp/SiTCP/GMII/GMII_RXCNT/SetPauseTime_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/crcOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[5]/CLR} \
          sitcp/SiTCP/GMII/GMII_RXCNT/ipgOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[3]/CLR} \
          sitcp/SiTCP/GMII/GMII_RXCNT/rcvdMacFlow_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxErr_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxPay_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxPrlTim_reg/CLR \
          sitcp/SiTCP/GMII/GMII_RXCNT/rxSfd_reg/CLR]]
set_false_path -from [get_pins [list sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C]] -to [get_pins [list {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0LastWrAddr_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0Status_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0Status_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1LastWrAddr_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1Status_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1Status_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[11]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[12]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[13]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[14]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[15]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[16]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[17]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[18]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[19]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[20]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[21]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[22]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[23]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[24]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[25]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[26]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[27]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[28]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[29]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[30]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[31]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/fcsCal_reg[9]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/irRdAct_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/irRdAct_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/memRdAddr_reg[9]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxEndTgl_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxEof_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsEnb_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[10]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[4]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[5]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[6]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[7]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[8]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/orLen_reg[9]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/phyLinkOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rdAct_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rdAct_reg[1]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/rdBank_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/rdEndDet_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rshrpMuxTrnsEnd_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rshrpMuxTrnsEnd_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/trnsActDly_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/trnsActDly_reg[1]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/trnsAct_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/wrBank_reg/CLR]]
set_false_path -from [get_pins {sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C}] -to [get_pins {sitcp/SiTCP/GMII/GMII_RXCNT/SetPauseTime_reg/CLR sitcp/SiTCP/GMII/GMII_RXCNT/crcOk_reg/CLR {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[0]/CLR} {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[2]/CLR} {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[4]/CLR} {sitcp/SiTCP/GMII/GMII_RXCNT/ipgCnt_reg[5]/CLR} sitcp/SiTCP/GMII/GMII_RXCNT/ipgOk_reg/CLR {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[0]/CLR} {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[1]/CLR} {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[2]/CLR} {sitcp/SiTCP/GMII/GMII_RXCNT/muxSel_reg[3]/CLR} sitcp/SiTCP/GMII/GMII_RXCNT/rcvdMacFlow_reg/CLR sitcp/SiTCP/GMII/GMII_RXCNT/rxErr_reg/CLR sitcp/SiTCP/GMII/GMII_RXCNT/rxPay_reg/CLR sitcp/SiTCP/GMII/GMII_RXCNT/rxPrlTim_reg/CLR sitcp/SiTCP/GMII/GMII_RXCNT/rxSfd_reg/CLR}]
set_false_path -from [get_pins {sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__0/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__1/C sitcp/SiTCP/SiTCP_INT/SiTCP_RESET_OUT_reg_rep__2/C}] -to [get_pins [list sitcp/SiTCP/GMII/GMII_TXBUF/wrBank_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxEof_reg/CLR \
          sitcp/SiTCP/GMII/GMII_TXBUF/muxEndTgl_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/irRdAct_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rsmpMuxTrnsEnd_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rshrpMuxTrnsEnd_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rshrpMuxTrnsEnd_reg[0]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/rdEndDet_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0Status_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank0Status_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[2]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rdAct_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/rdAct_reg[0]/CLR} \
          sitcp/SiTCP/GMII/GMII_TXBUF/phyLinkOk_reg/CLR \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[3]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1Status_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/bank1Status_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[1]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/muxFcsSel_reg[0]/CLR} \
          {sitcp/SiTCP/GMII/GMII_TXBUF/irRdAct_reg[1]/CLR}]]


set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */GMII_RXBUF/cmpWrAddr_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXBUF/smpWrStatusAddr_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/orRdAct_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/irRdAct_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/muxEndTgl_reg/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpMuxTrnsEnd_reg[0]/D}] 5.000

set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX10Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/irMacFlowEnb_reg/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX12Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX13Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX14Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX15Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX16Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX17Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 5.000
set_max_delay -datapath_only -from [get_pins {{sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[0]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[1]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[2]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[3]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[4]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[5]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[6]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX18Data_reg[7]/C}}] -to [get_pins {{sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[0]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[1]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[2]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[3]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[4]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[5]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[6]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[7]/D}}] 5.000
set_max_delay -datapath_only -from [get_pins {{sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[0]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[1]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[2]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[3]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[4]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[5]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[6]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX19Data_reg[7]/C}}] -to [get_pins {{sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[0]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[1]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[2]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[3]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[4]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[5]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[6]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[7]/D}}] 5.000
set_max_delay -datapath_only -from [get_pins {{sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[0]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[1]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[2]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[3]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[4]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[5]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[6]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1AData_reg[7]/C}}] -to [get_pins {{sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[0]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[1]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[2]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[3]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[4]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[5]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[6]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[7]/D}}] 5.000
set_max_delay -datapath_only -from [get_pins {{sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[0]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[1]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[2]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[3]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[4]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[5]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[6]/C} {sitcp/SiTCP/SiTCP_INT/SiTCP_INT_REG/regX1BData_reg[7]/C}}] -to [get_pins {{sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[0]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[1]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[2]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[3]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[4]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[5]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[6]/D} {sitcp/SiTCP/GMII/GMII_RXCNT/muxMyIp_reg[7]/D}}] 5.000


set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_RXCNT/*/CLR}]
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_RXCNT/*/PRE}]
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_RXBUF/*/CLR}]
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_TXBUF/*/CLR}]











