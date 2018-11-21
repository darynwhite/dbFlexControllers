/* History/mksql.py < ../CSV/TMBA0012.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0012' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2012-08-31 00:00:00','Chassis built up and wired up, including RIG board, waiting for rest of circuit boards to be made.'),
(@con_inst_id,'2013-06-04 00:00:00','Installed NEW circuit boards, MET, Serial, and CPU board. '),
(@con_inst_id,'2013-06-04 00:00:00','Installed new firware version 1.12, 130306. All data inputs tested okay. RF modem tested okay. Formated new 2GB Flash Ram Card.'),
(@con_inst_id,'2013-06-27 17:00:00','Started current drain test with all sensors in Doghouse outside'),
(@con_inst_id,'2013-07-01 17:40:00','Stopped current drain test. Ave current = 16.17mA. Had two 6 hour Iridium buffers missing, that did not transmit.'),
(@con_inst_id,'2014-02-10 00:00:00','Removed solder bridge shorting of JP24 on back of CPU board. This removes the battery power inputs to A/D circuit on J12 from powering the CPU board.'),
(@con_inst_id,'2014-02-11 22:45:00','Started Lake test in Buoy, testing firmware version 1.12, 140211, full MET sensor suite, plus 5 subsurface sensors: SSTC, TC, Aquadopp, T, and TP.'),
(@con_inst_id,'2014-02-24 00:30:00','Connected Monitoring computer to capture test date in a log file'),
(@con_inst_id,'2014-02-25 00:00:00','Rain Gauge Failed on TEST buoy in boat basin? Std Dev of Rain Rate went from near zero to 100-200 counts.'),
(@con_inst_id,'2014-04-14 21:51:00','Swapped Failed Rain 764 with NEW replacement Rain 1642 on TEST buoy in Boat Basin'),
(@con_inst_id,'2014-05-06 00:00:00','Successfully updated cal file with Rain 1642 via Iridium command'),
(@con_inst_id,'2014-05-12 00:00:00','2nd Rain gauge, sn1642 failed on TFLEX0012 TEST, data reading 1E+35.'),
(@con_inst_id,'2014-07-28 21:23:00','Swapped Rain gauge (3rd one) Installed sn 1262, swapped out 1642 where data read 1E+35 continuously.'),
(@con_inst_id,'2014-07-28 00:00:00','Rain gauges, 674 & 1642 both bench tested okay (post-swap), so the failure must be with the Rain channel on the TFLEX circuit board (MET board?)'),
(@con_inst_id,'2014-08-22 00:00:00','ENDED Buoy test in boat basin, XMIT battery voltage low, no more Iridium call ins.'),
(@con_inst_id,'2015-06-01 00:00:00','FAILED on IO1-15a, NO COMS. I had case sitting on deck during IO1 cruise, it might have rolled and knocked something off circuit board???'),
(@con_inst_id,'2016-08-15 00:00:00','Swapped in NEW CPU board (OLD CPU BOARD draws high current, around 27mA). This fixed coms, but current drain still high, reading 38mA, instead of 8-12mA, terminal mode, quiesent current. Needs further testing.'),
(@con_inst_id,'2017-01-10 00:00:00','Ryan wells fixed this system while I was on cruise travel for IO5-16(Jan 2017). His comment tag says that he swapped the CPU and MET boards. He also did a current drain test, resulting in 15.8mA average.'),
(@con_inst_id,'2017-02-15 00:00:00','Changed the Rain shield ground wiring from seawater ground to Pin 1 power ground. Also cut off the power jumper between the wind and compass connectors on the connector board (since its not needed).');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2012-08-31 00:00:00',1,'Built new');
