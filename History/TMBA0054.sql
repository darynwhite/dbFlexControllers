/* History/mksql.py < ../CSV/TMBA0054.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0054' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2017-10-20 00:00:00','Built NEW. Installed NEW Iridium SIM Card.'),
(@con_inst_id,'2017-10-31 00:00:00','Successfully tested all MET sensor inputs, RF modem, IM data, and GPS.'),
(@con_inst_id,'2017-11-03 00:00:00','Ran Bench current drain test for 3 days with version 2.01, 170530 firmware, RF modem turned off, 13.37mA Average.'),
(@con_inst_id,'2017-11-03 00:00:00','Tested internal Iridium antenna by doing an XMIT outside, which successfully registered and sent dummy files.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-10-20 00:00:00',1,'Built new');