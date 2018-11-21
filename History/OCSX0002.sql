/* History/mksql.py < ../CSV/OCSX0002.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0002' AND `type_id` = 2;
INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`)
VALUES
(@con_inst_id,'2008-12-02 14:54:57','Box for bench testing. Has power and data connectors on opposite sides.\nWired for Paros, Vaisala\n128MB\nCPU board 40029\nserial board 1000\nmet board 1000\nRIG board 1000'),
(@con_inst_id,'2008-12-31 15:47:19','testing in buoy in parking lot for Papa'),
(@con_inst_id,'2009-02-23 16:50:33','testing in lake for PA003\r\n1.07 2009-09-20 firmware'),
(@con_inst_id,'2009-04-06 12:00:00','Lake testing concluded - battery died; HLB buoy mods'),
(@con_inst_id,'2009-04-08 00:00:00','to EDD to add 2nd 64pin connector'),
(@con_inst_id,'2009-05-01 00:00:00','Back from EDD, 2nd 64 pin added; 1.07 2009-04-20 firmware'),
(@con_inst_id,'2009-05-06 19:00:00','Out to grassy knoll van for PA003 testing'),
(@con_inst_id,'2009-05-22 12:00:00','New I/O cals. AT: A3 -3.998587E-01 A4 2.430431E-04\r\nRH: A3 2.803436E-04 A4 2.688063E-04'),
(@con_inst_id,'2009-05-30 14:37:48','Shipping to PA2-09-TU as PA003 primary. v1.07 090420 firmware'),
(@con_inst_id,'2010-06-22 16:10:25','Recovered from PA003 and returned to lab on PA1-10-TU - DEM'),
(@con_inst_id,'2010-11-15 15:16:57','GPS and Iridium installed internally. JAK'),
(@con_inst_id,'2010-11-16 11:33:01','SIM Card 89881 69514 00062 6007'),
(@con_inst_id,'2011-01-05 11:59:36','New CPU board installed 12/23/2010. Board #40206. JAK'),
(@con_inst_id,'2011-01-13 12:38:09','Circuit boards damaged by 40V. Replaced with boards from box 7. CPU 40212 (fully modified), MET no S/N, SER no S/N, RIG 2000.'),
(@con_inst_id,'2011-01-13 12:40:48','Iridium antenna damaged by 12V because proper mods weren\'t made to Serial board. Replaced with new. IMEI 300224010731080. DRHS0022D, L5, 32835, 7072RA. Still has same SIM card as noted 11/16/2010. JAK'),
(@con_inst_id,'2011-12-22 15:07:33','Added Iridium handshaking and hygroclip wiring. JAK'),
(@con_inst_id,'2012-03-30 09:43:14','Firmware upgraded to version 1.11 111121 JAK'),
(@con_inst_id,'2012-06-03 13:11:15','Deployed at PA006. JAK'),
(@con_inst_id,'2013-06-18 20:40:00','Rec. PA006. Batteries low. JAK'),
(@con_inst_id,'2014-03-06 13:51:41','I/O cal completed - JAK'),
(@con_inst_id,'2015-07-01 14:29:49','Deployed at PA009 6/15/16. JAK'),
(@con_inst_id,'2016-08-18 08:36:39','Recovered on 07/05/16, PA 009. Three system resets throughout deployment. DK'),
(@con_inst_id,'2017-06-30 14:20:54','Deployed PA011A 6/14/17 - PB');
INSERT INTO test_DAW_InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`)
VALUES (@con_inst_id,'2017-06-30 14:20:54',7,'Deployed PA011A 6/14/17 - PB');
