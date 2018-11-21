/* History/mksql.py < ../CSV/OCSX0009.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0009' AND `type_id` = 2;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2008-12-02 14:56:45','Spare on KE2-08-KY\r\nWired for Druck, Vaisala\r\n128MB\r\n'),
(@con_inst_id,'2008-06-24 12:00:00','AT channel A/D calibration:\r\n-3.998985E-01	2.437989E-04\r\nRH channel A/D calibration:\r\n2.186590E-05	2.683036E-04'),
(@con_inst_id,'2009-12-31 00:00:00','Upgraded to 2 x 62 pin during 2009.'),
(@con_inst_id,'2010-02-25 10:17:09','Modified to be hygroclip cal box. Change back to standard druck box. -rk'),
(@con_inst_id,'2010-03-01 16:32:18','Reverted to standard box. -rk'),
(@con_inst_id,'2010-09-14 12:52:17','Sent to ARC as spare. - JAK'),
(@con_inst_id,'2011-01-05 12:04:39','Deployed at ARC 11/30/2010. JAK'),
(@con_inst_id,'2012-01-10 15:09:11','Added Iridium handshaking. JAK'),
(@con_inst_id,'2012-03-30 09:43:39','Firmware upgraded to version 1.11 111121 JAK'),
(@con_inst_id,'2012-03-30 09:43:46','Current drain test done 3/27-28/12. Avg = 32.6mA, Max = 210mA, min = -97mA. JAK'),
(@con_inst_id,'2012-07-04 09:30:50','Deployed at KE010. JAK'),
(@con_inst_id,'2013-06-28 14:49:35','Recovered from KE010.'),
(@con_inst_id,'2014-03-06 13:52:35','I/O cal completed - JAK'),
(@con_inst_id,'2015-09-07 13:13:58','Deployed on KE-013. JAK'),
(@con_inst_id,'2016-08-18 08:55:13','Recovered 08/01/16 from KE 013. DK');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-08-18 08:55:13',1,'Recovered 08/01/16 from KE 013. DK');
