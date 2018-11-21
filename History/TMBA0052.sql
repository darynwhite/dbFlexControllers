/* History/mksql.py < ../CSV/TMBA0052.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0052' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2017-10-19 00:00:00','Built NEW. Installed NEW Iridium SIM Card.'),
(@con_inst_id,'2017-10-23 00:00:00','Successfully tested all MET sensor inputs, RF modem, IM data, and GPS.'),
(@con_inst_id,'2017-10-26 00:00:00','Ran Bench current drain test for 5 days with version 2.01, 170530 firmware, RF modem turned off, 13.66mA Average.'),
(@con_inst_id,'2017-10-26 00:00:00','Tested internal Iridium antenna by doing an XMIT outside, which successfully registered and sent dummy files.'),
(@con_inst_id,'2018-03-21 00:00:00','Sent for PI4-17-RB with v1.16 Oxygen firmware. Had Iridium transmit problems with 1.16. Tested at PMEL okay. Worked on deck for 3-4 days, then started transmitting only 3 hours of data every 6 hours, with 3 hours missing??? Checked back in the data, and found that the system starting reseting every day 4-13 times per day, which caused the Iridium data loss.'),
(@con_inst_id,'2018-05-22 00:00:00','Installed SS metal standoffs on bottom of ckt board stack.'),
(@con_inst_id,'2018-05-22 00:00:00','Changed firmware to v2.01, 170530, for bench testing Iridium xmit data problem.'),
(@con_inst_id,'2018-05-22 00:00:00','Looked back at Iridium Xmit data while testing on deck on PI4-17-RB. Tested at PMEL okay, tested on deck okay for 5 days, then on March 16th, system starting RESETING. It then had multiple RESETS everyday, until Steve decided to stop it and not use it on the cruise.'),
(@con_inst_id,'2018-06-01 00:00:00','Ran this system 0052 on the bench for 9 days, current drain 14.23mA average, with v2.01 firmware, and it is working without a problem. I think the failure at sea, the resets, and the loss of Iridium data was caused by the loss of the Nortek Aquadopp data while running v1.16, which causes the system to stop working. This system appears to be working okay with v2.01.'),
(@con_inst_id,'2018-06-01 00:00:00','Successfully tested internal antennas with XMIT and GPS outside.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-10-19 00:00:00',1,'Built new');
