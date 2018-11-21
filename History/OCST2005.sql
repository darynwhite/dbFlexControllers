/* History/mksql.py < ../CSV/OCST2005.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '2005' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2014-06-15 00:00:00','New TFlex system. JAK'),
(@con_inst_id,'2016-08-18 08:30:13','Deployed at PA 010 on 06/15/16. DK'),
(@con_inst_id,'2017-06-30 10:26:58','Recovered PA010A P1-17-TU - Pb'),
(@con_inst_id,'2017-06-30 10:26:58','Recovered PA010A P1-17-TU - Pb');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-06-30 10:26:58',1,'Recovered PA010A P1-17-TU - Pb');
