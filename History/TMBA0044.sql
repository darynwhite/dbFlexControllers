/* History/mksql.py < ../CSV/TMBA0044.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0044' AND `type_id` = 1; INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`) VALUES (@con_inst_id,'2017-03-24 00:00:00','Built NEW. Successfully tested all MET sensor inputs, RF modem, IM data, and GPS. Waiting for SIM card to test Iridium and to perform current drain test.'), (@con_inst_id,'2017-03-29 00:00:00','Ran Bench current drain test for 2 days, 13.85mA Average.');
INSERT INTO InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`) VALUES (@con_inst_id,'2017-03-24 00:00:00',1,'Built new');
