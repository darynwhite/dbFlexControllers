/* History/mksql.py < ../CSV/TMBA0000.csv*/
SELECT `inst_id` INTO @con_inst_id FROM `ControllersInfo` WHERE `sn` = '0000' AND `type_id` = 1; INSERT INTO `InstrumentHist` (`inst_id`, `dt`, `txt`) VALUES (@con_inst_id,'2010-07-23 19:00:00','Start of first TEST outside Bldg 3 with everything working, all met sensors connected and 1 inductive SBE39T'), (@con_inst_id,'2010-08-09 21:00:00','Brought Inside ending test outside of Bldg 3'), (@con_inst_id,'2010-08-13 19:00:00','Put back on test outside of Bldg 3'), (@con_inst_id,'2010-08-19 22:20:00','Restarted (taken out and put back into log mode) because Pat accidently reset it while testing his bench RF modem, which was also set to RF modem ID 0.'), (@con_inst_id,'2010-09-02 15:45:00','Brought Inside ending test outside of Bldg 3 to update firmware to 1.11 100813'), (@con_inst_id,'2010-09-02 21:20:00','Put back on test outside of Bldg 3, in log mode, added Aquadopp CM.'), (@con_inst_id,'2010-09-20 21:00:00','Reset, took out of LOG mode, updated Configuration to set "GPS Interval" from every 6 hours to 24 hours (once/day). Also updated "GPS set time" to 12:15. Then put pack into LOG mode.'), (@con_inst_id,'2010-09-27 21:15:00','Stopped testing. Brought inside lab. Pat using to do some further testing for the RF modem.'), (@con_inst_id,'2010-09-27 22:20:00','TEST restarted, put back into LOG mode via the RF modem.'), (@con_inst_id,'2010-10-07 20:20:00','TEST ended. Brought TFLEX0000 in lab to upgrade Iridium transmitter firmware.'), (@con_inst_id,'2010-10-08 00:00:00','Randy Bott updated Iridium transmitter firmware.'), (@con_inst_id,'2010-10-27 20:09:00','Put in LOG mode for extended testing outside Bldg. 3-Full suite of SBE and Met sensors per standard TFLEX deployment . -jms'), (@con_inst_id,'2010-10-27 00:00:00','1-SBE37 TC-SMP, 5-SBE37 TC-IM, 4-SBE39 T-IM, 2-SBE39 TP-IM, 1-AQUADOPP CM--swr, rain,gill,atrh'), (@con_inst_id,'2010-11-02 16:25:00','Restarted system with new cal file to reflect addion of new Gill Wind. Loaded cal file via RF. Switched out induct. Loop wire due to SBE37IM-TC drop outs. Suspect bad ground. -jms'), (@con_inst_id,'2010-11-02 20:45:00','Stopped LOGGING to fix CAL file-Wrong address in CAL file for 500m TP. Changed address of 500m TP from 01-->12. -jms'), (@con_inst_id,'2010-11-02 20:53:00','Put in LOG -jms'), (@con_inst_id,'2010-11-02 20:58:00','No SBE39TC-SMP. Wrong data string from instrument. Missing salinity. Reformated instrument. Restarted LOGGING'), (@con_inst_id,'2010-11-02 00:00:00','SSTC=OK, TESTIND=OK, ATRH=ON, WIND=OK, SWR=OK, RAIN=OK -jms'), (@con_inst_id,'2010-11-15 00:00:00','Last transmission received from TFLEX can -jms'), (@con_inst_id,'2010-11-17 00:00:00','Tried to establish comms with TLEX can via term cable. No Joy. System not responding -jms'), (@con_inst_id,'2010-11-18 16:20:00','Tried restarting system via Iridium call at 0000Z (16:00 local). No carrier'), (@con_inst_id,'2010-11-21 00:00:00','System brought into lab. Burning in an older firmware version'), (@con_inst_id,'2010-11-22 00:00:00','Burned in V1.10 100514 PAPA VERSION (due to failure of v1.11 100813)'), (@con_inst_id,'2010-11-22 00:00:00','System back out to test stand. All sensors plugged into face plate. DID NOT apply power.'), (@con_inst_id,'2010-11-22 22:06:00','Powered up system- NO RF, Tried connecting directly to term. NO COMMS Batteries????? Left connected to battery. Will try different battery Nov 23.'), (@con_inst_id,'2010-12-02 17:30:00','Tried to establish coms with TFLEX0000, no response, brought inside for check-out. Gave to Pat to reload firmware.'), (@con_inst_id,'2010-12-06 22:00:00','System would not respond because of Flash card. Flash card had to be removed and reformatted with watchdog timer disabled(jumper removed). Pat also updated firmware to v1.12 101206, which fixes Sparton compass problem with v 1.10 100514.'), (@con_inst_id,'2010-12-07 00:00:00','START of TESTING for firmware v1.12 101206 with full set of deployment sensors. XMIT, GPS, ALL sensors working, put in LOG mode.'), (@con_inst_id,'2010-12-07 18:00:00','Stopped testing. Brought inside lab. Pat wants to revert back to the firmware version that is one version before the version that failed. v1.11 100813 failed, the version before that is v1.11 100805. Pat installed version 1.11100805 into system 0000.'), (@con_inst_id,'2010-12-07 19:20:00','ReSTARTED TESTING in LOG mode, now with firmware version 1.11 100805. XMIT, GPS, ALL sensors tested and working.'), (@con_inst_id,'2010-12-08 23:00:00','Data from RF modem putting out control characters at time in Tera Term, but not in XCTU terminal program. Installed older version of TeraTerm, but control characters still being displayed (but not all RF modem data on screen). Not sure if it\'s a TeraTerm problem or System RF modem problem.'), (@con_inst_id,'2010-12-09 23:50:00','Pat accidentally reset this System 0000 via the RF modem. RESTARTED.'), (@con_inst_id,'2010-12-10 19:30:00','RESET and configured RF modem ID to 4 (per Pat\'s suggestion) because of the garbage control character data coming out of RF modem. RESTARTED testing in LOG mode.'), (@con_inst_id,'2010-12-10 20:10:00','Not picking up data on RF modem address 4. RESET again, set back to RF ID 0.'), (@con_inst_id,'2010-12-13 17:20:00','Stopped Logging to fix RF modem. REPLACED RF MODEM on System 0000.'), (@con_inst_id,'2010-12-13 18:35:00','ReSTATARED testing in LOG mode with new RF modem, RF ID = 4.'), (@con_inst_id,'2011-01-05 23:00:00','Noticed that XMIT (Iridium) Battery Voltage data reading 0 in data. Pat says some resistors need to be added to the CPU board to fix this. TO DO after testing.'), (@con_inst_id,'2011-01-27 23:55:00','STOPPED TEST. Brought TFLEX0000 can inside to fix xmit battery voltage. Found Bat voltage connector loose. Re-connected and now both battery voltage data working.'), (@con_inst_id,'2011-01-28 20:00:00','STARTED wind & ATRH test at the Grassy Knoll (on top of the van)'), (@con_inst_id,'2011-02-01 23:40:00','STOPPED test, added SW rad, RESTARTED test on Grassy Knoll.'), (@con_inst_id,'2011-02-02 21:10:00','STOPPED test, Changed Iridium 1st call time from 00:00 to 00:10, then RESTARTED test on Grassy Knoll'), (@con_inst_id,'2011-02-07 18:15:00','STOPPED test, did xmit, loaded deploy calfile, connected new SW rad 33724, then RESTARTED.'), (@con_inst_id,'2011-02-09 18:10:00','STOPPED test, did xmit, Grassy Knoll testing done. Brought back to TAO lab for IO2-11 shipping.'), (@con_inst_id,'2011-02-23 00:00:00','Air Shipped for IO3-11-BJ'), (@con_inst_id,'2011-03-20 00:00:00','Deployed at 12S-93E on IO2-11-BJ, RT001'), (@con_inst_id,'2012-04-01 00:00:00','Recovered at 12S-93E on IO3-12-BJ, RT001'), (@con_inst_id,'2012-05-01 00:00:00','Air shipped back from Indonesia from IO3-12-BJ'), (@con_inst_id,'2012-08-07 00:00:00','Updated firmware to version 1.11, 120504'), (@con_inst_id,'2012-08-22 00:00:00','Installed Iridium modem wire upgrade (per Pat) from pin 22 on DB25 to pin 4 on connector board, plus added 1KOhm resistor on pin 4 to pin 8 on DB25. Plus cleaned up brass I/O connectors on tophat.'), (@con_inst_id,'2013-02-04 00:00:00','Updated firmware to version 1.12, 130201'), (@con_inst_id,'2013-02-20 00:30:00','Started test for IO3-13 without inductive sensors (due to firmware problems), plus temp RF ID = 1'), (@con_inst_id,'2013-02-25 17:50:00','Stopped test without inductive sensors.'), (@con_inst_id,'2013-02-25 23:30:00','Updated firmware to v1.12, 130225, fixing microcat address #09 problem.'), (@con_inst_id,'2013-02-26 02:05:00','Started testing for IO3-13 with set of spare sensors, all calibrated.'), (@con_inst_id,'2013-02-26 18:00:00','The SSTC microcat data reading 1435-1462 for salinity in error. Normally in error conductivity & salinity read near zero. Disconnected and brought microcat 9737 inside lab for checkout.'), (@con_inst_id,'2013-02-26 19:00:00','Reconnected SSTC microcat 9737. Corrected setup problem. It was outputting sound velocity instead of salinity.'), (@con_inst_id,'2013-03-18 17:45:00','Stopped outside TEST for IO3-13, spare system.'), (@con_inst_id,'2015-03-20 00:00:00','Updated CPU R4 to 887 Ohms, removed solder bridge on CPU JP24, and updated firmware to ver 1.12, 150313.'), (@con_inst_id,'2015-08-15 00:00:00','Used for Gill All-in-one sensor TEST at Grassy Knoll.'), (@con_inst_id,'2018-08-06 00:00:00','Installed metal SS standoffs on bottom of the circuit board stack.'), (@con_inst_id,'2018-08-06 00:00:00','Fixed Rain Ground, shield now connected to power ground. Installed new ground 4-pin Ground faceplate bulkhead and rewired 2-wire, (pin1 & pin2) IM ground connection.'), (@con_inst_id,'2018-08-06 00:00:00','Updated firmware to version 2.01, 170530.'), (@con_inst_id,'2018-08-06 00:00:00','Updated Iridium 1st Xmit time to 00:40.'), (@con_inst_id,'2018-08-06 00:00:00','Installed new Orings, face and jam seal.'), (@con_inst_id,'2018-08-08 00:00:00','Ran current drain/functional test overnight on bench, 14.25mA average. Everything working, Flash RAM data write good.'), (@con_inst_id,'2018-12-10 00:00:00','Patrick broke this system during TELOS testing. Don\'t know what the problem is, needs testing.');
INSERT INTO InstrumentLocation.History (`inst_id`,`dt`,`label_id`,`txt`) VALUES (@con_inst_id,'2010-07-23 19:00:00',1,'Built new');
