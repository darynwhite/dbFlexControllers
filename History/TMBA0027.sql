/* History/mksql.py < ../CSV/TMBA0027.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0027' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-10 00:00:00','Completed build up of NEW system sn 0027. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-06-24 00:00:00','Ran Current drain test for 2 days, 14.36 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-06-24 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2016-10-18 00:00:00','Updated Firmware to v 1.16, 161014 for PI1-17-RB, to get German Oxygen sensor data for PI1-17-RB.'),
(@con_inst_id,'2018-06-01 00:00:00','This system came back from PI4-17-RB (March 2018) in the Durban air shipment. Recovered with v1.12, 150313 from 20N-38W, PT013. No major issues or problems listed in deployment \"System Status\" info.'),
(@con_inst_id,'2018-06-01 00:00:00','Installed SS circuity board Standoffs on bottom of circuit board stack. '),
(@con_inst_id,'2018-06-01 00:00:00','Upgraded firmware to v2.01, 170530 & Updated Iridium 1st transmit time to 00:39.'),
(@con_inst_id,'2018-06-06 00:00:00','Ran Current drain test for 5 days, 14.15 mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2018-06-06 00:00:00','Installed new Jam seal and face seal Orings.'),
(@con_inst_id,'2018-06-06 00:00:00','Successfully tested GPS and Iridium XMIT functions outside on internal antennas.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-10 00:00:00',1,'Built new');
