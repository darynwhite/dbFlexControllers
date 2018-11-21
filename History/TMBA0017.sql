/* History/mksql.py < ../CSV/TMBA0017.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0017' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2013-11-15 00:00:00','Chassis built up and wired up. Waiting for RIG boards to be stuffed.'),
(@con_inst_id,'2014-05-13 00:00:00','Verified all mods made to circuit boards. Removed solder bridge from JP24.'),
(@con_inst_id,'2014-05-14 00:00:00','Installed NEW circuit boards, RIG, MET, Serial, and CPU board. '),
(@con_inst_id,'2014-05-15 00:00:00','Installed new firware version 1.12, 140211. All data inputs tested okay. RF modem tested okay. Formated new 2GB Flash Ram Card. Waiting to get SIM cards for Iridium Modem.'),
(@con_inst_id,'2014-05-29 23:05:00','NEW SIM card installed. Started current drain test in doghouse outside of Bldg 3.'),
(@con_inst_id,'2014-06-03 23:15:00','Current drain test finished, 14.8mA. Ave. Dumped Flash RAM data, which looked good.'),
(@con_inst_id,'2014-10-03 00:00:00','Started test for PI3-14-EN, as spare system'),
(@con_inst_id,'2015-12-01 00:00:00','Recovered on PI3-15, PT004. System worked okay.'),
(@con_inst_id,'2016-08-29 00:00:00','Changed R4 to 887 Ohms. Changed RAIN shield ground from Seawater to Power ground. Plus updated Iridium 1st call time to 10mins (00:10:00).'),
(@con_inst_id,'2016-09-01 00:00:00','Ran benchtop current drain test for 3 days, 14.22mA average.'),
(@con_inst_id,'2016-09-02 00:00:00','Noticed quite a few data points, especially LWR data, not written to Flash RAM memory, so replaced Flash Memory card.'),
(@con_inst_id,'2016-09-26 00:00:00','Upgraded firmware to version 1.12, 150313.'),
(@con_inst_id,'2016-10-18 00:00:00','Updated Firmware to v 1.16, 161014 for PI1-17-RB, to get German Oxygen sensor data for PI1-17-RB.'),
(@con_inst_id,'2017-05-30 00:00:00','Updated firmware to Pat\'s reconstituted version 2.01, 170530'),
(@con_inst_id,'2017-05-30 00:00:00','Updated Iridium 1st transmit (call-in) time to 00:40'),
(@con_inst_id,'2018-09-04 00:00:00','Ryan says Iridium now not working??? Needs testing???');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2013-11-15 00:00:00',1,'Built new');
