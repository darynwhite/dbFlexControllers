/* History/mksql.py < ../CSV/TMBA0016.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0016' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2013-11-15 00:00:00','Chassis built up and wired up. Waiting for RIG boards to be stuffed.'),
(@con_inst_id,'2014-05-13 00:00:00','Verified all mods made to circuit boards. Removed solder bridge from JP24.'),
(@con_inst_id,'2014-05-14 00:00:00','Installed NEW circuit boards, RIG, MET, Serial, and CPU board. '),
(@con_inst_id,'2014-05-15 00:00:00','Installed new firware version 1.12, 140211. All data inputs tested okay. RF modem tested okay. Formated new 2GB Flash Ram Card. Waiting to get SIM cards for Iridium Modem.'),
(@con_inst_id,'2014-05-29 00:00:00','NEW SIM Card installed.'),
(@con_inst_id,'2014-06-03 23:30:00','Started current drain test with all sensors in Dog house outside of Bldg 3.'),
(@con_inst_id,'2014-06-05 16:30:00','Current drain Ave = 18.7mA'),
(@con_inst_id,'2014-08-12 00:00:00','Started test outside for Current meter test, adding 10 Norteks for deployment at 4N-23S to make sure data will come through okay.'),
(@con_inst_id,'2014-08-25 18:30:00','Reset Current meter test, swapped out 5m, address 01 Nortek clock off. Also changed Iridium First call to 00:36 because Eng/Diagnostic data not received.'),
(@con_inst_id,'2014-10-01 17:30:00','Started test of actual instrumentation that will be used for PNE, 4N-23W, PI3-14-EN deployment. Used as prime system.'),
(@con_inst_id,'2015-01-22 00:00:00','IM data failed on deck for Mike Strick during PI3-14-EN buoy setup. Tested on deck okay, but IM data all went to 2E35 when buoy built up for deployment.'),
(@con_inst_id,'2015-04-14 00:00:00','Loaded test cal file with one of each inductive sensor. IM data worked okay with no problems.'),
(@con_inst_id,'2015-04-17 00:00:00','Took off CPU bd to change R4 and found salt residue on CPU board and really bad salt residue and corrosion on pins of ICs on the Serial board. Cleaned up CPU board, but Serial bd needs to be replaced.'),
(@con_inst_id,'2015-04-20 00:00:00','Replaced Serial Board. Updated firmware to version 1.12, 150313.'),
(@con_inst_id,'2015-04-22 00:00:00','Ran a 2 day current drain check with all sensors out in the doghouse, 16.68mA average.'),
(@con_inst_id,'2017-10-16 00:00:00','Back from sea, Rec IO2-17-IS, RT008, 8S-67E.'),
(@con_inst_id,'2017-10-19 00:00:00','Ran a 3 day current drain test, 13.83mA average.'),
(@con_inst_id,'2017-10-19 00:00:00','Updated firmware to version 2.10, 170530. Changed Rain shield ground from seawater to power ground. '),
(@con_inst_id,'2017-10-19 00:00:00','Tested GPS and XMIT commands outside successfully.'),
(@con_inst_id,'2017-10-19 00:00:00','Changed O-rings.'),
(@con_inst_id,'2017-12-01 00:00:00','Tried to use for PI4-17, but Iridium XMIT command did not work.'),
(@con_inst_id,'2018-03-15 00:00:00','Changed Iridium antenna cable.'),
(@con_inst_id,'2018-03-15 00:00:00','Tested GPS and XMIT commands outside successfully with new Iridium antenna cable.'),
(@con_inst_id,'2018-05-03 00:00:00','Installed SS metal circuit board standoffs on bottom stack.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2013-11-15 00:00:00',1,'Built new');
