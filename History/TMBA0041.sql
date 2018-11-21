/* History/mksql.py < ../CSV/TMBA0041.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0041' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-09-15 00:00:00','Completed build up of NEW system sn 0041. Tested all sensor inputs successfully. RF modem tested okay. '),
(@con_inst_id,'2016-09-22 00:00:00','Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-10-03 00:00:00','Ran Current drain test for 4.5 days, 13.94mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-10-03 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2016-12-20 00:00:00','Matt Casari borrowed this system to test the new Ocean Server compass board, but applied power incorrectly to the system. Now its current drain is about 20mA high.'),
(@con_inst_id,'2017-02-23 00:00:00','Replaced CPU board. Current drain reduced, but still a bit high about 4mA high. All sensors work, so running current drain test.'),
(@con_inst_id,'2017-02-27 00:00:00','Benchtop Current drain test is a little high, but acceptable at 22.25mA after 4 days testing. Transmitted data looked okay.'),
(@con_inst_id,'2017-03-21 00:00:00','Used this system to check transmit times for Dan Dougherty, and found that SSTC data not working in LOG mode data, reading 1E+35, but SSTC data works okay in the TEST mode SSTC command in the Terminal mode. Needs to be fixed.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-09-15 00:00:00',1,'Built new');
