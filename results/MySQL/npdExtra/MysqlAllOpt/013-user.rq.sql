CREATE TEMPORARY TABLE viewtable484 AS select distinct alias1.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias1 
where 
alias1.`wlbCoreNumber` IS NOT NULL and 
alias1.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable485 as select * from viewtable484;
create temporary table viewtable486 as select * from viewtable484;
create temporary table viewtable487 as select * from viewtable484;
create temporary table viewtable488 as select * from viewtable484;
create temporary table viewtable489 as select * from viewtable484;
create temporary table viewtable490 as select * from viewtable484;
CREATE TEMPORARY TABLE viewtable492 AS select distinct alias4.`cmpLongName` as "cmpLongName" from 
`company` alias4 
where 
alias4.`cmpNpdidCompany` IS NOT NULL and 
alias4.`cmpLongName` IS NOT NULL

create temporary table viewtable493 as select * from viewtable492;
create temporary table viewtable494 as select * from viewtable492;
create temporary table viewtable495 as select * from viewtable492;
create temporary table viewtable496 as select * from viewtable492;
create temporary table viewtable497 as select * from viewtable492;
create temporary table viewtable498 as select * from viewtable492;
create temporary table viewtable499 as select * from viewtable492;
create temporary table viewtable500 as select * from viewtable492;
create temporary table viewtable501 as select * from viewtable492;
create temporary table viewtable502 as select * from viewtable492;
create temporary table viewtable503 as select * from viewtable492;
create temporary table viewtable504 as select * from viewtable492;
create temporary table viewtable505 as select * from viewtable492;
create temporary table viewtable506 as select * from viewtable492;
create temporary table viewtable507 as select * from viewtable492;
create temporary table viewtable508 as select * from viewtable492;
create temporary table viewtable509 as select * from viewtable492;
create temporary table viewtable510 as select * from viewtable492;
create temporary table viewtable511 as select * from viewtable492;
create temporary table viewtable512 as select * from viewtable492;
create temporary table viewtable513 as select * from viewtable492;
create temporary table viewtable514 as select * from viewtable492;
create temporary table viewtable515 as select * from viewtable492;
CREATE TEMPORARY TABLE viewtable517 AS select distinct alias2.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias2 
where 
alias2.`wlbNpdidWellbore` IS NOT NULL and 
alias2.`wlbCoreNumber` IS NOT NULL

create temporary table viewtable518 as select * from viewtable517;
create temporary table viewtable519 as select * from viewtable517;
create temporary table viewtable520 as select * from viewtable517;
create temporary table viewtable521 as select * from viewtable517;
create temporary table viewtable522 as select * from viewtable517;
create temporary table viewtable523 as select * from viewtable517;
create temporary table viewtable524 as select * from viewtable517;
create temporary table viewtable525 as select * from viewtable517;
create temporary table viewtable526 as select * from viewtable517;
create temporary table viewtable527 as select * from viewtable517;
create temporary table viewtable528 as select * from viewtable517;
create temporary table viewtable529 as select * from viewtable517;
create temporary table viewtable530 as select * from viewtable517;
create temporary table viewtable531 as select * from viewtable517;
create temporary table viewtable532 as select * from viewtable517;
create temporary table viewtable533 as select * from viewtable517;
SELECT *
FROM (
SELECT

   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `company`
FROM (
 (
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable512 QVIEW5,
viewtable530 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable507 QVIEW5,
viewtable526 QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable489 QVIEW5,
viewtable503 QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable487 QVIEW4,
viewtable496 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable506 QVIEW5,
viewtable525 QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable511 QVIEW4,
viewtable529 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable488 QVIEW5,
viewtable500 QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
viewtable486 QVIEW3,
viewtable494 QVIEW4
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable513 QVIEW4,
viewtable531 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
viewtable498 QVIEW4,
viewtable519 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable484 QVIEW4,
viewtable492 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable504 QVIEW4,
viewtable523 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
viewtable515 QVIEW4,
viewtable533 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable508 QVIEW4,
viewtable527 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable510 QVIEW4,
viewtable528 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
viewtable490 QVIEW3,
viewtable509 QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable501 QVIEW4,
viewtable521 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable499 QVIEW5,
viewtable520 QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable495 QVIEW4,
viewtable517 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable514 QVIEW5,
viewtable532 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable502 QVIEW4,
viewtable522 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable497 QVIEW5,
viewtable518 QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW4.`wlbTotalCoreLength` > 50) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable485 QVIEW4,
viewtable493 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
viewtable505 QVIEW4,
viewtable524 QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbTotalCoreLength` > 50) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

