/* History/mksql.py < ../CSV/OCSX0006.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0006' AND `type_id` = 2;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2008-12-15 15:36:55','in lab\r\nWired for Druck, SWR/LWR\r\n128 MB\r\nCPU board 4006\r\nserial board 1006\r\nmet board 1006\r\nRIG board 2006\r\n'),
(@con_inst_id,'2008-12-31 15:45:26','lake testing'),
(@con_inst_id,'2009-01-21 16:50:27','upgraded to latest 1.07 firmware (today\'s date)'),
(@con_inst_id,'2010-05-22 14:31:39','Recovered from KEO repair (KE1-10-MI). Sent to Randy 5.24.10 for firmware update (v1.09-->v1.10) and internal GPS/Iridum antenna upgrade. Use guts of Iridum/GPS can 003 for upgrade. Check box for excessive power usage when returned from RB and prior to deployment-jms'),
(@con_inst_id,'2010-05-29 12:00:08','Randy used the Iridium/GPS from Flex can 5 to upgrade this box. - KBR'),
(@con_inst_id,'2010-09-14 12:51:05','Sent to ARC as primary box. - JAK'),
(@con_inst_id,'2011-01-05 12:02:29','Swapped CPU board in the field. Problems with IM comms. Not deployed. In return shipment. JAK'),
(@con_inst_id,'2011-04-26 15:18:05','Received from ARC shipment 3/24. Installed original CPU board and tested. No further problems with IM comms as tested through 4/26. JAK'),
(@con_inst_id,'2011-07-08 14:09:25','Firmware updated to version 1.11 110708 JAK'),
(@con_inst_id,'2012-01-10 15:08:54','Added Iridium handshaking. JAK'),
(@con_inst_id,'2012-03-30 09:42:25','Firmware upgraded to version 1.11 111121 JAK'),
(@con_inst_id,'2012-10-17 08:19:14','Replaced IMM in box, due to intermittent 2E35s.'),
(@con_inst_id,'2013-07-05 14:46:01','Deployed at KE011. Firmware 1.12 130225.'),
(@con_inst_id,'2014-06-26 00:00:00','Recovered from KE011. JAK'),
(@con_inst_id,'2016-08-18 08:19:59','Deployed on 07/31/16 at KE 014. DK'),
(@con_inst_id,'2017-07-27 14:57:39','Recovered KEO14A KE1-17-BF - Pb');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-07-27 14:57:39',1,'Recovered KEO14A KE1-17-BF - Pb');
