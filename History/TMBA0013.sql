/* History/mksql.py < ../CSV/TMBA0013.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0013' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2012-08-31 00:00:00','Chassis built up and wired up, including RIG board, waiting for rest of circuit boards to be made.'),
(@con_inst_id,'2013-06-04 00:00:00','Installed NEW circuit boards, MET, Serial, and CPU board. '),
(@con_inst_id,'2013-06-04 00:00:00','Installed new firware version 1.12, 130306. All data inputs tested okay. RF modem tested okay. Formated new 2GB Flash Ram Card.'),
(@con_inst_id,'2013-07-01 18:00:00','Started current drain test with all sensors in Doghouse outside'),
(@con_inst_id,'2013-07-02 17:15:00','Ave current drain = 15.2mA'),
(@con_inst_id,'2013-07-03 19:40:00','Ave current drain = 15.48mA'),
(@con_inst_id,'2013-07-08 17:45:00','Stopped current drain test. Ave current = 15.37mA'),
(@con_inst_id,'2014-05-05 00:00:00','Installed re-worked MET board with changes to U1, U2, U40. Also removed JP24 solder bridge on CPU bd. Plus updated firmware to v1.12, 140211.'),
(@con_inst_id,'2015-03-20 00:00:00','Updated CPU R4 to 887 Ohms, and updated firmware to ver 1.12, 150313.'),
(@con_inst_id,'2015-08-15 00:00:00','Used for Gill All-in-one sensor TEST at Grassy Knoll'),
(@con_inst_id,'2015-10-28 00:00:00','Changed Rain Shield ground from Seawater to Chassis, power PIN 1 ground.'),
(@con_inst_id,'2017-08-07 00:00:00','Did post deploy (Rec PI2-17-TH, PT-006, 0-23W) current drain test, 15.38mA average over 4 days.'),
(@con_inst_id,'2017-09-14 00:00:00','Changed firmware to version 1.16, 161014, O2 version for PNE, PI4-17-RB cruise.'),
(@con_inst_id,'2017-09-14 00:00:00','Unfortunately, I mixed up the serial and met ribbon cables and plugged them into the wrong boards. Iridium Xmit now has problems, sometimes it works, sometimes says bad Iridium coms. When it works it is slow and hangs at times. May have to swap the Iridium modem, or serial board. F*&$k!'),
(@con_inst_id,'2017-11-06 00:00:00','Upgraded to firmware version 2.01, 170530. Tested on bench again, iridium coms and XMIT working okay now??? Will run current drain/bench test with roof-top antennas'),
(@con_inst_id,'2017-11-13 00:00:00','Completed one week of testing. This system working okay now. No problems with Iridium or call into RUDICS.'),
(@con_inst_id,'2017-11-13 00:00:00','Almost 7 days, current drain average was 15.41mA.'),
(@con_inst_id,'2017-11-13 00:00:00','Tested internal Iridium antenna & GPS, with XMIT outside, which successfully registered and sent dummy files.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2012-08-31 00:00:00',1,'Built new');
