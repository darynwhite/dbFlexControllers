/* History/mksql.py < ../CSV/TMBA0026.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0026' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-10 00:00:00','Completed build up of NEW system sn 0026. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-06-16 00:00:00','Ran Current drain test for 3 days, 14.22 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-06-16 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2016-10-18 00:00:00','Updated Firmware to v 1.16, 161014 for PI1-17-RB, to get German Oxygen sensor data for PI1-17-RB.'),
(@con_inst_id,'2018-06-01 00:00:00','Back from PI2-18-TH, Rec PT012, 21N-23W (by me on Thalassa repair cruise)'),
(@con_inst_id,'2018-08-15 00:00:00','Upgraded Firmware to version 2.01, 170530'),
(@con_inst_id,'2018-08-15 00:00:00','Changed Iridium 1st xmit time to 00:38'),
(@con_inst_id,'2018-08-15 00:00:00','Installed metal SS standoffs at the bottom of the circuit board stack.'),
(@con_inst_id,'2018-08-27 00:00:00','Ran Current drain test for 7 days, 12.8 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2018-08-27 00:00:00','Installed NEW O-rings, face and jam seal.'),
(@con_inst_id,'2018-08-27 00:00:00','Sucessfully tested GPS and XMIT iridium commands outside (with internal antennas).');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-10 00:00:00',1,'Built new');
