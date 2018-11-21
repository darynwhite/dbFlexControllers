/* History/mksql.py < ../CSV/TMBA0033.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0033' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-30 00:00:00','Completed build up of NEW system sn 0033. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-07-06 00:00:00','Ran Current drain test for 3 days, 15.2 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-07-06 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2018-06-01 00:00:00','Back from French PIRATA, PI1-18-TH, 10S-10W, PT010. Data okay.'),
(@con_inst_id,'2018-08-13 00:00:00','Upgraded Firmware to version 2.01, 170530'),
(@con_inst_id,'2018-08-13 00:00:00','Changed Iridium 1st xmit time to 00:43'),
(@con_inst_id,'2018-08-13 00:00:00','Installed metal SS standoffs at the bottom of the circuit board stack.'),
(@con_inst_id,'2018-08-20 00:00:00','Ran Current drain test for 6 days, 13.40 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2018-08-20 00:00:00','Installed NEW O-rings, face and jam seal.'),
(@con_inst_id,'2018-08-20 00:00:00','Successfully tested the GPS and Iridium XMIT outside.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-30 00:00:00',1,'Built new');
