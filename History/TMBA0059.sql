/* History/mksql.py < ../CSV/TMBA0059.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0059' AND `type_id` = 1;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2018-06-05 00:00:00','Built NEW.'),
(@con_inst_id,'2018-06-06 00:00:00','Successfully tested all MET sensor inputs, RF modem, IM data, and GPS (with rooftop antenna), waiting for SIM card.'),
(@con_inst_id,'2018-06-07 00:00:00','Got SIM cards from Weiming Tan instead of Ben Carlson. Weiming assigned SIM card to wrong RUDICS Group, the AMOS Connect standard instead of the NOAA PMEL Standard. He realized the error, and had Inmarsat support change it to the correct group. Subsequently, the SIM cards and Iridium XMITs started working.'),
(@con_inst_id,'2018-07-19 00:00:00','Tested internal Iridium antenna by doing an XMIT outside, which successfully registered and sent dummy files (After Weiming Tan found that the new Iridium SIM cards were assigned to the wrong RUDICS Group)'),
(@con_inst_id,'2018-08-01 00:00:00','Ran Bench current drain test for 7 days with version 2.01, 170530 firmware, RF modem turned off, 16.5mA Average. Ran with older HP'),
(@con_inst_id,'2018-08-01 00:00:00','Successfully tested GPS & Iridium internal antennas outside with GPS & XMIT commands.');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2018-06-05 00:00:00',1,'Built new');
