/* History/mksql.py < ../CSV/TMBA0053.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0053' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2017-10-20 00:00:00','Built NEW. Installed NEW Iridium SIM Card.'),
(@con_inst_id,'2017-10-26 00:00:00','Successfully tested all MET sensor inputs, RF modem, IM data, and GPS.'),
(@con_inst_id,'2017-10-31 00:00:00','Ran Bench current drain test for 4 days with version 2.01, 170530 firmware, RF modem turned off, 13.62mA Average.'),
(@con_inst_id,'2017-10-31 00:00:00','Tested internal Iridium antenna by doing an XMIT outside, which successfully registered and sent dummy files.'),
(@con_inst_id,'2017-11-29 00:00:00','Tried to use outside on test for IO1-18, but did multiple XMIT commands, and system registered, but everytime got an error message \"no connect message received\". Not sure if this is a TFLEX0053 system problem, or an Iridium problem.'),
(@con_inst_id,'2018-09-15 00:00:00','Back from IO2-18-RB, NOT USED, not deployed at 12S-67E due to bad weather on site.'),
(@con_inst_id,'2018-11-01 00:00:00','Installed metal SS standoffs on bottom of circuit board stack.'),
(@con_inst_id,'2018-11-05 00:00:00','Ran Bench current drain test for 4 days with version 2.01, 170530 firmware, RF modem turned off, 12.99mA Average.'),
(@con_inst_id,'2018-11-05 00:00:00','Successfully tested GPS and XMIT commands outside on the internal antennas.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-10-20 00:00:00',1,'Built new');
