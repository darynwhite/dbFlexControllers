/* History/mksql.py < ../CSV/TMBA0025.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0025' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2016-06-09 00:00:00','Completed build up of NEW system sn 0025. Tested all sensor inputs successfully. RF modem tested okay. Installed new Iridium SIM card. GPS tested okay inside on roof mount antenna. XMIT did not work 1st time, but 2nd time registered and send files successfully.'),
(@con_inst_id,'2016-06-13 00:00:00','Ran Current drain test for 3.5 days, 14.45mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2016-06-13 00:00:00','Need to run GPS and XMIT test with system antennas (not roof antennas).'),
(@con_inst_id,'2016-10-18 00:00:00','Updated Firmware to v 1.16, 161014 for PI1-17-RB, to get German Oxygen sensor data for PI1-17-RB.'),
(@con_inst_id,'2017-03-06 00:00:00','Deployed on PT009, 4N-23W, without Oxygen sensors, extra Norteks for AOML, with v1.12, 150313'),
(@con_inst_id,'2018-04-25 00:00:00','Back from PI4-17-RB air shipment'),
(@con_inst_id,'2018-04-30 00:00:00','Updated firmware to v2.01, 170530, for post deployment benchtop current drain testing.'),
(@con_inst_id,'2018-04-30 00:00:00','Installed SS metal bottom circuit board stack standoffs.'),
(@con_inst_id,'2018-04-30 00:00:00','Updated Iridium 1st XMIT time to 00:37'),
(@con_inst_id,'2018-05-03 00:00:00','Ran Current drain test for 3 days, 17.28mA Average. Dumped FLASH RAM data file, which looked okay.'),
(@con_inst_id,'2018-05-07 00:00:00','Installed new face seal Oring'),
(@con_inst_id,'2018-05-21 00:00:00','Ran outside test for PI3-18, Brasil. GPS positions working, but had quite a few GPS positions missing??? It missed 8 out of 49 over almost 12 days. Opened up case and re-seated the GPS antenna connector. Also noticed many of the missing GPS fixes were at time 12:58 & 00:58. Decided to try changing the Iridium 1st transmit time to 00:42 (from 00:37).'),
(@con_inst_id,'2018-05-25 00:00:00','Just a note that during the PI3-18 testing, that all of the inductive data went to 1E+35 two times during the 2 weeks of testing. This system IM data was okay during its last deployment on PT009. So I suspect an intermittent problem with the test wires/cables?');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2016-06-09 00:00:00',1,'Built new');
