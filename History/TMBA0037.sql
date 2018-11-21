/* History/mksql.py < ../CSV/TMBA0037.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0037' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-08-15 00:00:00','Completed build up of NEW system sn 0037. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-08-25 00:00:00','Ran Current drain test for 3 days, 14.29mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-08-25 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2016-12-09 00:00:00','Put TFLEX0037 outside on test for PI3-17-AN (Brazil). Everything worked except the Hygroclip ATRH. The sensor was okay, so ohmed out ATRH IO pins to the MET board, which all looked okay. So, swapped in a NEW MET board, which fixed the Hygro ATRH.'),
(@con_inst_id,'2018-08-03 00:00:00','DAMAGED on PT016, 4N-38W, mooring broke free, Vandalized? Brasilians reported corrosion inside TFLEX on circuit boards? No FLASH RAM data? Brasilians could not dump data. NEED TO GIVE FLASH CARD TO Dan to dump entire card to look for any data.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-08-15 00:00:00',1,'Built new');