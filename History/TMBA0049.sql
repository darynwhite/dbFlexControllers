/* History/mksql.py < ../CSV/TMBA0049.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0049' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2017-08-23 00:00:00','Built NEW. Installed NEW Iridium SIM Card.'),
(@con_inst_id,'2017-08-25 00:00:00','Successfully tested all MET sensor inputs, IM data, and GPS. RF Modem not working with 1st time install of v2.01, 170530 firmware'),
(@con_inst_id,'2017-08-25 00:00:00','RF modem working with version 1.12, 150313 firmware. Then still working when upgrading to v2.01, 170530'),
(@con_inst_id,'2017-08-28 00:00:00','Ran Bench current drain test for 3 days with version 2.01, 170530 firmware, RF modem turned off, 13.64mA Average.'),
(@con_inst_id,'2017-08-28 00:00:00','Tested internal Iridium antenna by doing an XMIT outside, which successfully registered and sent dummy files.'),
(@con_inst_id,'2018-10-30 00:00:00','Back from Indonesia, IO1-18, NOT deployed, needs checkout/upgrades.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-08-23 00:00:00',1,'Built new');
