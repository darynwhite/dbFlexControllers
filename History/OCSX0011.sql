/* History/mksql.py < ../CSV/OCSX0011.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0011' AND `type_id` = 2; INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`) VALUES (@con_inst_id,'2008-12-02 15:00:38','Previously known as "KEO", deployed KE005 Wired for Druck, SWR/LWR 128MB CPU board 4005 serial board 1005 met board 1005 RIG board 2005'), (@con_inst_id,'2007-06-01 12:00:00','AT channel A/D cal: -0.39877 .00024402 RH channel A/D cal: -0.0015392 0.00026992 date VERY approximate');
INSERT INTO InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`) VALUES (@con_inst_id,'2007-06-01 12:00:00',6,'AT channel A/D cal: -0.39877 .00024402 RH channel A/D cal: -0.0015392 0.00026992 date VERY approximate');
