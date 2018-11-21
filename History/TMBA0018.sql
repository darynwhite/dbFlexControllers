/* History/mksql.py < ../CSV/TMBA0018.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0018' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2015-10-22 00:00:00','Built up system 0018, all sensors worked, except Baro LWR & SWR. Swapped MET, Serial board, but LWR & SWR still not working. Could have been issue, current limiting issue with SW Rad. Finally swapped CPU board, and LWR & SWR finally fixed and functional.'),
(@con_inst_id,'2015-10-23 00:00:00','Iridium SIM card installed. All sensors tested okay. All functions tested okay, RF modem & Irdium xmit successful. Needs current drain testing.'),
(@con_inst_id,'2015-11-06 00:00:00','Ran Current drain test, 14.57mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2017-12-11 00:00:00','Back from India (air shipment)'),
(@con_inst_id,'2017-12-18 00:00:00','Updated Iridium 1st transmit time to 00:41. Upated firmware to version 2.01, 170530.'),
(@con_inst_id,'2017-12-28 00:00:00','Ran Current drain test for 8 days (over Xmas Holiday), 14.02mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2018-01-02 00:00:00','Successfully tested GPS and Iridium XMIT test outside.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2015-10-22 00:00:00',1,'Built new');
