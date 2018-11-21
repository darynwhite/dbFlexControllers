/* History/mksql.py < ../CSV/TMBA0029.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0029' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-17 00:00:00','Completed build up of NEW system sn 0029. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-06-20 00:00:00','Just as a note. I did the mods on the serial board shorts on U17 pins 5&7, plus I soldered RN6 next to U17.'),
(@con_inst_id,'2016-06-28 00:00:00','Ran Current drain test for 1 day. TFLEX0029 failed. Stopped logging & transmitting. Sitting at 40mA current drain.'),
(@con_inst_id,'2016-06-28 00:00:00','Ryan tried to troubleshoot, but could not find anything conclusive as the cause of the failure. He said maybe there was a connector that wasn\'t seated. TFLEX0029 will have to be run again on current drain test. '),
(@con_inst_id,'2017-01-23 00:00:00','Ryan fixed this system while I was at sea on IO5-16. He replaced the MET and Serial boards, which fixed the Iridium transmitting problem. He did a current drain test resulting in a 13.8mA average.'),
(@con_inst_id,'2017-10-12 00:00:00','SPARE back from IO2-17-IS. Did overnight current drain check, 13.76mA average.'),
(@con_inst_id,'2017-10-12 00:00:00','Upgraged firmware to version 2.01,170530'),
(@con_inst_id,'2017-10-12 00:00:00','tested GPS and XMIT Iridium outside successfully.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-17 00:00:00',1,'Built new');