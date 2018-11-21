/* History/mksql.py < ../CSV/TMBA0005.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0005' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2011-09-29 00:00:00','Built NEW, bench tested okay, all sensors working. RF modem, Iridium, and GPS tested okay. Loaded firmware v1.11, 110408.'),
(@con_inst_id,'2011-11-09 00:00:00','Updated firmware to version 1.11, 111101.'),
(@con_inst_id,'2011-12-02 00:00:00','Updated firmware to version 1.11, 111121.'),
(@con_inst_id,'2011-12-06 21:45:00','Started test, put into LOG mode with all MET sensors, except LWR & Baro. All inductive sensors, except no TPs. No instrument cases available, so put everything in Dog House outside Bldg 3.'),
(@con_inst_id,'2011-12-16 19:00:00','Reset test, took out of LOG mode. Added 2 TPs to inductive test line.'),
(@con_inst_id,'2011-12-16 19:15:00','Restarted test, put back in LOG mode, loaded new CAL file with added 2 TPs.'),
(@con_inst_id,'2012-01-03 22:06:00','Successfully sent Rudics dialout command XO to turn-on the RF modem'),
(@con_inst_id,'2012-01-04 23:37:00','Reset, taken out of LOG mode, IO2-12 test concluded.'),
(@con_inst_id,'2012-04-01 00:00:00','NOT deployed on IO3-12-BJ. Air shipped back to Seattle.'),
(@con_inst_id,'2012-05-29 00:00:00','Air shipped back from Indonesia from IO3-12-BJ'),
(@con_inst_id,'2013-02-04 00:00:00','Updated firmware to version 1.12, 130201'),
(@con_inst_id,'2013-02-20 00:30:00','Started test for IO3-13 without inductive sensors (due to firmware problems).'),
(@con_inst_id,'2013-02-25 17:50:00','Stopped test without inductive sensors.'),
(@con_inst_id,'2013-02-25 23:00:00','Updated firmware to v1.12, 130225, fixing microcat address #09 problem.'),
(@con_inst_id,'2013-02-26 01:30:00','Started testing for IO3-13 with full set of sensors, all calibrated.'),
(@con_inst_id,'2013-03-18 17:45:00','Stopped outside TEST for IO3-13.'),
(@con_inst_id,'2013-07-18 00:00:00','Deployed at 12S-67E, RT003, on IO3-13-SK'),
(@con_inst_id,'2014-01-11 00:00:00','Inductive subsurface data FAILED and stopped transmitting, reading 3E+35 & 1E+35 on RT003, 12S-67E.'),
(@con_inst_id,'2014-01-11 00:00:00','*LOST AT SEA on RT003, 12S-67E.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2011-09-29 00:00:00',1,'Built new');
