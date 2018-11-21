/* History/mksql.py < ../CSV/TMBA0030.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0030' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-27 00:00:00','Completed build up of NEW system sn 0030. Tested all sensor inputs successfully. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-06-28 00:00:00','RF Modem did not work. Replaced RIG board, including a new RF modem module, and RF modem fixed, working okay.'),
(@con_inst_id,'2016-06-29 00:00:00','Ran current drain test with Fluke27 handheld meter for 2 days, and got an average of 18mA. Need to run the current drain test again with the more accurate meter.'),
(@con_inst_id,'2016-07-14 00:00:00','Ran current drain test overnight on bench with more accurate meter, Fluke 8846A, and for some reason, current rain high with an overnight average of 49mA. This system needs to be checked out for problems, although all sensors are working. Ryan says its current drain is nominal most of the time, except for some periods of intermittant peaks that exceed the limit on his new power supply, 5A max?'),
(@con_inst_id,'2017-01-18 00:00:00','Ryan repaired this system while I was at sea on IO5-16. He replaced the RF Modem (again) and says it is fixed. He ran a current drain test with an average of 14.1mA.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-27 00:00:00',1,'Built new');
