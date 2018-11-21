/* History/mksql.py < ../CSV/TMBA0009.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0009' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2012-03-01 00:00:00','Built NEW, bench tested okay, all sensors working, except Inductive modem, which will not work with IMM firmware v1.14. Loaded firmware v1.11, 111121. Installed new sim card into Iridium modem.'),
(@con_inst_id,'2012-03-05 00:00:00','Installed different IMM, firmware version 1.12, which fixed Inductive data. All sensor types working SBE37, SBE39, & Aquadopp.'),
(@con_inst_id,'2012-03-06 00:00:00','Tested out in Dog house, XMIT & GPS tested good, all sensor data coming through Iridium Rudics'),
(@con_inst_id,'2012-03-07 00:00:00','Did 24 hour current drain test, 20mA ave.'),
(@con_inst_id,'2012-03-16 00:00:00','Baro Failed during testing.'),
(@con_inst_id,'2012-03-29 00:00:00','Found problem with Baro. No power to Baro on MET board. Baro connected to12v Auxiliary power via Jumper JP4 pins 1&2, but Auxiliary power not working. Switched JP4 jumpers to pins 2&3, which connects main battery voltage, and Baro now working. BUT Auxiliary power circuit failed, with no 12v output. Not sure if Baro is the only channel connected to Auxiliary power.'),
(@con_inst_id,'2012-04-02 00:00:00','Removed U40 & Q14 from failed Auxiliary power circuit onTFLEX0009 MET board. Aux power failed and not needed, since Aux power is used only with Druck pressure sensor. The Druck requires a miniumum of 11v input. TFLEX does not use the Druck, so I just disabled the circuit by removing U40 & Q14.'),
(@con_inst_id,'2012-04-02 18:20:00','Start new current drain test with all sensors connected.'),
(@con_inst_id,'2012-04-05 15:40:00','Stopped test because SW&LW outputs failed. Current drain was about 23.2mA, but then went to 24.4mA after they failed. I saw this same thing on the TFLEX0008 current drain test. In both cases, resetting the power fixed it.'),
(@con_inst_id,'2012-04-05 18:05:00','Started new current drain test.'),
(@con_inst_id,'2012-04-06 18:05:00','Ended current drain test, SW&LW failed again, current drain 21.74 mA ave.'),
(@con_inst_id,'2013-02-04 00:00:00','Updated firmware to version 1.12, 130201'),
(@con_inst_id,'2013-02-05 00:00:00','NEW in lab, needs testing for LW & SW in log mode.'),
(@con_inst_id,'2015-04-01 00:00:00','Removed JP24 Solder bridge on CPU Bd. Changed R4 to 887 Ohms on CPU bd. '),
(@con_inst_id,'2015-04-06 00:00:00','Installed NEW MET board with updated U1, U2, U40 TI chips.'),
(@con_inst_id,'2015-04-06 00:00:00','Updated firmware to version 1.12, 150313.'),
(@con_inst_id,'2015-04-08 00:00:00','Ran 2 day current drain test outside in doghouse with all sensors, 14.42mA ave. Flash Ram data good. SW & LW data good.'),
(@con_inst_id,'2015-10-28 00:00:00','Changed Rain Shield ground from Seawater to Chassis, power PIN 1 ground.'),
(@con_inst_id,'2017-08-07 00:00:00','LWR failed during deployment at 0-23W, PT-007. Tested TFLEX0009 LWR channel and LW/Rad Y-cable, both tested out okay with the deployed LWR sensor sn 36386. I did find a cut pigtail connector, but on the SWR/Rad Y-cable not the LWR cable. '),
(@con_inst_id,'2017-08-14 00:00:00','Ran 7 day current drain test, 17.81mA average. LWR data looked good.'),
(@con_inst_id,'2018-01-08 00:00:00','Installed v2.01, 170530 for PI4-17-RB(2018), to run extra Norteks for AOML. It was decided NOT to use v1.16 firmware for realtime Oxygen, because of firmware bug with loss of all data when 1 Nortek fails. Dan tried testing to recover from this failure with no success (so it was decided to use v2.01 instead).'),
(@con_inst_id,'2018-03-12 00:00:00','Shipped for PI4-17-RB (PNE 2018). SteveK found stand-offs sheared off and broken and circuit board stack hanging from wires, probably from rough handling during truck transport to Ft. Lauderdale.'),
(@con_inst_id,'2018-03-12 00:00:00','Steve got ERROR, \"computer to modem communications bad\" on PI4-17-RB. Steve also reported that he found corrosion on the \"connector board\" below the faceplate connectors.'),
(@con_inst_id,'2018-03-13 00:00:00','During the PI4-17-RB cruise, SteveK swapped the CPU board from TFLEX0009 into the spare TFLEX0003, since TFLEX0003 had v1.16 and he needed v2.01 (since he forgot the PE Micro firmware interface box, and could not update TFLEX0003).'),
(@con_inst_id,'2018-05-09 00:00:00','Installed new connector board. Fixed chassis stand-off mounts. Installed SS metal bottom standoffs.'),
(@con_inst_id,'2018-05-09 00:00:00','Configure CPU for TFLEX0009 (since Steve swapped TFLEX0003 CPU board on PI4-17-RB). Installed firmware version 2.01, 170530.'),
(@con_inst_id,'2018-05-09 00:00:00','Tested on bench. No power being routed to Iridium modem from Serial board. Replaced serial board. Now Iridium modem working.'),
(@con_inst_id,'2018-05-15 00:00:00','Ran bench test current drain for 5.5 days, 15.55mA average. Flash RAM data dump good.'),
(@con_inst_id,'2018-05-15 00:00:00','Successfully Tested XMIT command outside to check internal Iridium and GPS antennas');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2012-03-01 00:00:00',1,'Built new');
