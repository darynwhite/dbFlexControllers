/* History/mksql.py < ../CSV/TMBA0063.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0063' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2018-09-10 00:00:00','Built NEW. *USED RECYCLED SEABIRD IMM.'),
(@con_inst_id,'2018-09-11 00:00:00','Successfully tested all MET sensor inputs, RF modem, IM data, and GPS (with rooftop antenna), waiting for SIM card.'),
(@con_inst_id,'2018-09-12 00:00:00','Installed Iridium SIM card.'),
(@con_inst_id,'2018-11-01 00:00:00','Ran Bench current drain test for 3 days with version 2.01, 170530 firmware, RF modem turned off, 13.23mA Average. Downloaded and checked Flash RAM data, which looked good.'),
(@con_inst_id,'2018-11-01 00:00:00','Tested internal GPS & Iridium antenna by doing an GPS & XMIT outside, which successfully registered and sent dummy files, plus GPS got position, and Time & Date update.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2018-09-10 00:00:00',1,'Built new');
