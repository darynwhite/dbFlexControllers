/* History/mksql.py < ../CSV/OCSX0004.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0004' AND `type_id` = 2;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2008-12-02 14:58:10','Deployed PA002\r\nWired for Paros'),
(@con_inst_id,'2008-01-13 12:00:00','AT channel A/D cal:\r\n-0.39877 	0.00024402\r\nRH channel A/D cal:\r\n-0.0015392 	0.00026992'),
(@con_inst_id,'2009-01-15 13:20:23','back from PA002. In buoy still for McLain testing.'),
(@con_inst_id,'2009-11-25 12:05:38','At some point in 2009 upgraded to 2nd 62 pin connector.'),
(@con_inst_id,'2009-11-25 12:07:40','Iridium modem and GPS mounted inside box for testing.'),
(@con_inst_id,'2009-11-25 12:08:32','Box in lake for testing -rk'),
(@con_inst_id,'2010-02-24 12:00:00','Lake testing ended. Load cell wiring suspect. Bott to replace? -rk'),
(@con_inst_id,'2010-02-25 09:37:40','SIM verified - 8988 1692 1400 0612 269\r\nVoice number 8816 2146 7707; Data 8816 9316 7707'),
(@con_inst_id,'2010-03-01 16:31:20','Software upgraded to v1.09 10-02-08 -rk'),
(@con_inst_id,'2010-03-17 17:07:42','Out in parking lot for testing; assigned as Papa primary. -rk'),
(@con_inst_id,'2010-05-12 19:02:41','did Io cal on ATRH channel. AT	A3 = -3.951827E-01	A4 = 2.430344E-04	 RH	A3 = 6.922950E-05	A4 = 2.686332E-04 ---KBR'),
(@con_inst_id,'2010-07-09 15:39:57','deployed at PAPA, 14 June 2010, PA-004 with v 1.10 (5-14-10) software, internal GPS and Iridium antennas. - KBR'),
(@con_inst_id,'2012-01-10 15:08:29','Added Iridium handshaking. JAK'),
(@con_inst_id,'2012-03-30 09:43:25','Firmware upgraded to version 1.11 111121 JAK'),
(@con_inst_id,'2013-06-17 17:10:00','Deployed at PA-007. FW v.1.12 030225. RF modem did not always go to low power mode as scheduled. Turned off via Iridium command from shore after cruise. JAK'),
(@con_inst_id,'2016-08-18 08:28:22','Deployed at PA 010 on 06/15/16. DK'),
(@con_inst_id,'2017-06-30 10:26:34','Recovered PA010A P1-17-TU - Pb');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-06-30 10:26:34',1,'Recovered PA010A P1-17-TU - Pb');
