/* History/mksql.py < ../CSV/TMBA0014.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0014' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2012-08-31 00:00:00','Chassis built up and wired up, including RIG board, waiting for rest of circuit boards to be made.'),
(@con_inst_id,'2013-06-04 00:00:00','Installed NEW circuit boards, MET, Serial, and CPU board. '),
(@con_inst_id,'2013-06-04 00:00:00','Installed new firware version 1.12, 130306. All data inputs tested okay. RF modem tested okay. Formated new 2GB Flash Ram Card.'),
(@con_inst_id,'2013-07-08 19:00:00','Started current drain test with all sensors in Doghouse outside'),
(@con_inst_id,'2013-07-08 23:00:00','Connected different SSTC microcat immersed in saltwater to test conductivity data'),
(@con_inst_id,'2013-07-09 21:00:00','Ave current drain = 15.82mA, and Conductivity data working okay.'),
(@con_inst_id,'2013-07-10 19:00:00','Ave current drain = 15.63mA'),
(@con_inst_id,'2013-07-10 19:10:00','Noticed that Iridium data calls stopped. Last call in was on July 10th at 09:00 GMT.'),
(@con_inst_id,'2013-07-12 00:00:00','Did some testing with Pat. Used his transmitter, through a roof-mounted antenna, which worked good through the TFLEX0014 system. Then tested the TFLEX0014 tranmitter with Pat\'s Sim card to see if Sim card might be bad, but still did not work, so according to Pat its probably a bad transmitter.'),
(@con_inst_id,'2013-09-03 00:00:00','Sent Iridium transmitter back to NAL Research for check-out on RMA #NAL13-489, around July 18th. They did NOT find anything wrong with it, so it must be either the antenna cable or antenna.'),
(@con_inst_id,'2013-09-17 00:00:00','Found antenna cabe pinched at hubbell fitting. Installed new antenna and new antenna cable.'),
(@con_inst_id,'2014-05-05 00:00:00','Installed re-worked MET board with changes to U1, U2, U40. Also removed JP24 solder bridge on CPU bd. Plus updated firmware to v1.12, 140211.'),
(@con_inst_id,'2015-03-20 00:00:00','Updated CPU R4 to 887 Ohms, and updated firmware to ver 1.12, 150313.'),
(@con_inst_id,'2015-04-17 00:00:00','Ran currrent drain test with all sensors in the doghouse, 18.00mA over 2 days.'),
(@con_inst_id,'2015-04-17 00:00:00','Iridium transmissions okay with new antenna and new antenna cable.'),
(@con_inst_id,'2017-10-16 00:00:00','Back from sea, Rec IO2-17-IS, 12S-67E, RT007. Ran current drain test for 4 days, 15.30mA Average.'),
(@con_inst_id,'2017-10-16 00:00:00','Changed rain ground from seawater to power ground. Had to replace Ground I/O 4pin MC connector to fix ground. Upgraded firmware to v2.10, 170530.'),
(@con_inst_id,'2017-10-16 00:00:00','Tested GPS and XMIT commands outside successfully.'),
(@con_inst_id,'2017-10-16 00:00:00','Changed O-rings.'),
(@con_inst_id,'2017-11-29 00:00:00','Put out on test for IO1-18-BJ8. This system seems to be missing Iridium transmit blocks of data outside on test more than other systems. It did this during its last deployment as well, on RT007, but it did not miss one Iridium transmit buffer while it tested on the bench, suggesting that it may have a bad Iridium transmit antenna cable or antenna. Should replace both???'),
(@con_inst_id,'2017-12-12 00:00:00','Replaced Iridium antenna cable. XMIT tested okay, 2nd time, 1st time could not register. We\'ll see how well it calls into RUDICS during its cruise testing for PNE 2018.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2012-08-31 00:00:00',1,'Built new');
