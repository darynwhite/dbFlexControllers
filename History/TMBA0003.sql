/* History/mksql.py < ../CSV/TMBA0003.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0003' AND `type_id` = 1; INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`) VALUES (@con_inst_id,'2010-09-02 00:00:00','This unit had problems, but is finally fixed. Everything is working, but it has never been put outside on test. Pat has used it for firmware development on his bench, but that\'s about it.'), (@con_inst_id,'2010-09-23 23:30:00','Started 1st test with all sensors, SBE39TP & Nortek Aquadopp. Installed Sim card, ran xmit and successfully registered with satellite. Successfully tested all sensors and GPS. So far though, have not been able to talk to the RF modem.'), (@con_inst_id,'2010-09-27 18:30:00','Ended test, brought TFLEX0003 inside lab, RF modem not working.'), (@con_inst_id,'2010-09-29 21:00:00','Back out on test, replaced RIG board (that Pat McLain gave me). RF modem now working.'), (@con_inst_id,'2010-10-07 20:20:00','TEST ended. Brought TFLEX0003 in lab to upgrade Iridium transmitter firmware.'), (@con_inst_id,'2020-10-08 00:00:00','Randy Bott updated Iridium transmitter firmware.'), (@con_inst_id,'2010-12-06 22:00:00','Pat updated firmware to v1.12 101206, which fixes Sparton compass problem with v 1.10 100514. (due to failure of v1.11 100813)'), (@con_inst_id,'2010-12-07 00:00:00','Pat wants to revert back to the firmware version that is one version before the version that failed. v1.11 100813 failed, the version before that is v1.11 100805. Pat installed version 1.11100805 into system 0003.'), (@con_inst_id,'2010-12-08 23:08:00','STARTED Test in LOG mode of v1.11, 100805 (2nd system with TFLEX0000). XMIT, GPS, ALL sensors working. Connected Gill Wind, SWR, Rain, Hygroclip ATRH, SSTC (SBE37TC), plus Inductive senors: SBE39T, SBE39TP, Aquadopp.'), (@con_inst_id,'2010-12-09 21:40:00','STOPPED test. Noticed that RF modem was still in continuous mode for both systems 0000 & 0003 running v1.11 100805. RF modem should only be in continuous mode for 1 hour after LOG mode is initiated (determined by configuration setting).'), (@con_inst_id,'2010-12-10 19:30:00','Did mods on circuit boards to decrease snooze current drain (Snooze power reduction mods per Pat), replaced and removed resistors on the 332, MET, and Serial boards.'), (@con_inst_id,'2010-12-13 23:40:00','STARTED Test in LOG mode, v1.11 100805, with all Deployment MET sensors, 1 SBE39T, 1 SBE39TP, & 1 Aquadopp.'), (@con_inst_id,'2010-01-07 17:00:00','Noticed Aquadopp temperature (address 22, depth 30m in calfile) reading constant 22.17 for all data.'), (@con_inst_id,'2011-01-19 00:00:00','Mentioned to Dan about Nortek temp stuck at 22.17. Turns out that all the Aquadopp data is the same, meaning the Nortek is not in LOG mode, that the TFLEX is just going out and getting the same (last) data sample. OOPS! Didn\'t catch this...'), (@con_inst_id,'2011-01-27 17:00:00','Disconnected inductive test cable, NO inductive sensors connected. Brought sensors inside to prep for PI2-10 cruise shipment.'), (@con_inst_id,'2011-02-07 23:00:00','Disconnected Power & brought TFLEX0003 inside TAO lab.'), (@con_inst_id,'2011-04-20 00:00:00','RF antenna fitting (through faceplate) broke. Took TFLEX Electronics apart, removing faceplate, so RF antenna mount hole could be tapped at the Machine Shop for new RF antenna fitting.'), (@con_inst_id,'2011-05-05 00:00:00','RF antenna faceplate hole tapped. Needs to be re-assembled.'), (@con_inst_id,'2011-09-26 00:00:00','Installed new antenna with new type fitting. Re-assembled and tested okay.'), (@con_inst_id,'2011-11-09 00:00:00','Updated firmware to version 1.11, 111101.'), (@con_inst_id,'2011-12-01 00:00:00','Updated firmware to v1.11, 111121, which fixes wind, Aquadopp, and Iridium problems.'), (@con_inst_id,'2011-12-02 00:00:00','Start of test for IO2-12-BJ. All MET sensors, except LW & Baro. All inductive sensors, except no TPs (at Seabird for CAL). Setup outside next to tube rack.'), (@con_inst_id,'2011-12-02 17:00:00','Reset and stopped logging. SSTC not working. SBE37SMP setup problem. Had to set Outputexecutedtag=N, so an HTML tag "executed" would not be used.'), (@con_inst_id,'2011-12-02 18:00:00','System restarted in Log mode. SSTC now working.'), (@con_inst_id,'2011-12-16 16:45:00','Noticed Hygroclip 60780300 at max humidity of 100% on multiple days for multiple hours at a time. Sensor is laying down on its side. Will set sensor upright on by mounting in one of the tube rack mounts.'), (@con_inst_id,'2011-12-19 00:00:00','Hygroclip 60780300 continues to read higher than other sensors, maxing out at 100% for multiple hours.'), (@con_inst_id,'2011-12-19 18:45:00','Reset and stopped logging. Added 2 TPs, and swapped hygroclip to 60194537.'), (@con_inst_id,'2011-12-19 18:55:00','Restarted test, put back in LOG mode.'), (@con_inst_id,'2012-01-03 22:03:00','Successfully sent Rudics dialout command XO to turn-on the RF modem'), (@con_inst_id,'2012-01-04 18:50:00','Reset, taken out of LOG mode, IO2-12 test concluded.'), (@con_inst_id,'2012-04-01 00:00:00','NOT deployed on IO3-12-BJ. Air shipped back to Seattle.'), (@con_inst_id,'2012-07-20 00:00:00','Upgraded firmware from 1.11, 111121 to 120504.'), (@con_inst_id,'2012-07-20 21:30:00','Re-configured cal file for PI3-12-RB, 20N-38W deployment, added Baro & LW'), (@con_inst_id,'2012-07-20 23:30:00','Started test for PI3-12'), (@con_inst_id,'2012-07-26 16:25:00','Ended test for PI3-12'), (@con_inst_id,'2012-07-30 00:00:00','Shipped for PI3-12-RB.'), (@con_inst_id,'2013-01-06 00:00:00','Deployed at 20N-38W, PT002, on PI3-12-RB.'), (@con_inst_id,'2013-11-20 00:00:00','Rec PT002, Failed? Xmit problems?'), (@con_inst_id,'2015-04-14 00:00:00','Removed JP24 Solder bridge on CPU Bd. Changed R4 to 887 Ohms on CPU bd.'), (@con_inst_id,'2015-04-14 00:00:00','Verified MET board with updated U1, U2, U40 TI chips.'), (@con_inst_id,'2015-04-14 00:00:00','Updated firmware to version 1.12, 150313.'), (@con_inst_id,'2015-04-17 00:00:00','Tried to start a current drain test in the doghouse outside, but this system could not get through on the Iridium satellite when sending the XMIT command, so I replaced the Irdium antenna cable, but still no luck. Needs further testing.'), (@con_inst_id,'2015-04-20 00:00:00','Ran current drain test over the weekend. Current drain okay at 14.9mA, BUT, no 1003 data transmissions got through Iridium. Saw platform ID 2003 for some reason.'), (@con_inst_id,'2015-07-05 00:00:00','Iridium Transmit problems. Does not get through to Iridium satellite. Swapped wiring, antenna cable, IR antenna, NONE of this fixed the problem. Swapped sim card on IR xmitter. No fix.'), (@con_inst_id,'2017-06-09 00:00:00','Updated Rain shield ground to power ground.'), (@con_inst_id,'2017-06-09 00:00:00','Troubleshooting Iridium Transmit problem, replaced Serial bd, CPU board, and installed NEW Iridium Modem, which finally fixed the Iridium transmit problem. Had to change the chassis frame to mount the new Iridium modem.'), (@con_inst_id,'2017-06-16 00:00:00','Ran current drain test for 3 days, 13.82mA Average.'), (@con_inst_id,'2016-10-24 00:00:00','Back from Grassy Knoll, Gill wind Spartan vs. Ocean Server test.'), (@con_inst_id,'2016-10-24 00:00:00','Upgraded firmware from 2.01, 170530.'), (@con_inst_id,'2018-03-13 00:00:00','Sent as the Spare for PI4-17-RB (PNE 2018). Sent with v1.16, but Steve needed v2.01. Since he forgot to take the PE Micro firmware interface box, he could not change the firmware in TFLEX0003, he instead swapped in the CPU from his problem system TFLEX0009, which had bad Iriudium coms and corrosion on its Connector board.');
INSERT INTO InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`) VALUES (@con_inst_id,'2010-09-02 00:00:00',1,'Built new');
