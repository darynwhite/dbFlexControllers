/* History/mksql.py < ../CSV/TMBA0039.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0039' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-09-15 00:00:00','Completed build up of NEW system sn 0039. Tested all sensor inputs successfully. RF modem tested okay. '),
(@con_inst_id,'2016-09-20 00:00:00','Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-09-23 00:00:00','Ran Current drain test for 3 days, 14.16 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-09-23 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-09-15 00:00:00',1,'Built new');