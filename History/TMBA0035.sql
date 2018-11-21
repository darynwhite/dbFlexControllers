/* History/mksql.py < ../CSV/TMBA0035.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0035' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-30 00:00:00','Completed build up of NEW system sn 0035. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. Successfully tested GPS and XMIT functions with roof-mounted antennas connected inside lab.'),
(@con_inst_id,'2016-07-12 00:00:00','Ran Current drain test for 4 days, 17.9mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-07-12 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2017-08-08 00:00:00','Spare back from French Pirata, PI2-17-TH. Long stand-offs holding MET board (and boards above stack, Serial, CPU) broke and French found, taped up'),
(@con_inst_id,'2017-08-21 00:00:00','Installed new standoffs for circuit board stack. Did 3 day current drain check, 13.89mA average.'),
(@con_inst_id,'2017-10-24 00:00:00','Back from Grassy Knoll, Gill wind Spartan vs. Ocean Server Test'),
(@con_inst_id,'2017-10-24 00:00:00','No Iridium xmissions from Grassy Knoll, so replaced Iridium Antenna cable, tested okay, successfully with XMIT command outside.'),
(@con_inst_id,'2017-10-24 00:00:00','Upgraded to firmare version 2.01, 170530'),
(@con_inst_id,'2017-10-24 00:00:00','Tried to use for PI4-17-RB??? But, XMIT command did NOT work.'),
(@con_inst_id,'2018-03-08 00:00:00','Bench tested with rooftop Iridium antenna, and XMIT worked okay, Registered and sent all Block 1-6 dummy files successfully.'),
(@con_inst_id,'2018-03-08 00:00:00','Tested XMIT outside successfully, registered and sent all 6 dummy files successfully on 1st XMIT command try.'),
(@con_inst_id,'2018-05-07 00:00:00','Installed SS metal bottom circuit board stack standoffs.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-30 00:00:00',1,'Built new');
