/* History/mksql.py < ../CSV/OCSX0010.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0010' AND `type_id` = 2;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2010-03-08 19:09:44','FLEX Box 0010 installed on buoy in parking lot. will go to KEO April 2010 repair cruise as a spare. Configured for Druck. Has internal GPS and Iridium modem. Repaired 8 march 2010 (AT and BP did not work) Randy swapped in card pulled from box 0009. now has SIM 89881 69214 00061 2293 installed. Seems to be working well. Software 1.09, 10_02_08 installed. - KBR'),
(@con_inst_id,'2010-09-17 14:06:13','Sent to KEO as primary. JAK'),
(@con_inst_id,'2010-11-09 15:24:29','appears to have mobile # 881621467686, and data #881693167687 associated with this SIM card - KBR'),
(@con_inst_id,'2010-11-09 15:15:24','Deployed at KEO 9/29/10 with software version 1.11 100805 JAK'),
(@con_inst_id,'2011-11-29 14:55:35','Recovered from KE008 11/14/11. Stopped transmitting in September, but still able to communicate with internal comms. JAK'),
(@con_inst_id,'2012-03-30 09:44:37','Firmware upgraded to version 1.11 111121 JAK');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2012-03-30 09:44:37',6,'Firmware upgraded to version 1.11 111121 JAK');
