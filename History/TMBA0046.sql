/* History/mksql.py < ../CSV/TMBA0046.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0046' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2017-05-24 00:00:00','Built NEW. Successfully tested all MET sensor inputs, RF modem, IM data, and GPS. Also installed Iridium SIM card. Needs current drain test.'),
(@con_inst_id,'2017-06-05 00:00:00','Ran Bench current drain test for 4 days, 13.62mA Average.'),
(@con_inst_id,'2017-09-14 00:00:00','Changed firmware to version 1.16, 161014, O2 version for PNE, PI4-17-RB cruise.'),
(@con_inst_id,'2017-11-17 00:00:00','PI4-17-RB Cruise delayed. Re-tasked 0046 for PI1-18-TH. Changed firmware to v2.01, 170530.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-05-24 00:00:00',1,'Built new');
