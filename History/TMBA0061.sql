/* History/mksql.py < ../CSV/TMBA0061.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0061' AND `type_id` = 1; INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`) VALUES (@con_inst_id,'2018-09-10 00:00:00','Built NEW. *USED RECYCLED SEABIRD IMM.'), (@con_inst_id,'2018-09-11 00:00:00','Successfully tested all MET sensor inputs, RF modem, IM data, and GPS (with rooftop antenna), waiting for SIM card.'), (@con_inst_id,'2018-09-12 00:00:00','Installed new Iridium SIM card.'), (@con_inst_id,'2018-09-20 00:00:00','Ran Bench current drain test for 7 days with version 2.01, 170530 firmware, but Patrick stopped my running average when he used my multimeter, but average was around 14mA.'), (@con_inst_id,'2018-10-25 00:00:00','Ran Bench current drain test AGAIN for 3 days with average current drain of 13.33mA. Flash RAM data dump looked good.'), (@con_inst_id,'2018-10-25 00:00:00','Successfully tested internal GPS & Iridium antenna by doing an GPS & XMIT outside.');
INSERT INTO InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`) VALUES (@con_inst_id,'2018-09-10 00:00:00',1,'Built new');
