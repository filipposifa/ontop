CREATE TEMPORARY TABLE viewtable4691 AS select distinct alias3.`cmpLongName` as "cmpLongName" from 
`company` alias3 
where 
alias3.`cmpNpdidCompany` IS NOT NULL and 
alias3.`cmpLongName` IS NOT NULL

create temporary table viewtable4692 as select * from viewtable4691;
create temporary table viewtable4693 as select * from viewtable4691;
create temporary table viewtable4694 as select * from viewtable4691;
create temporary table viewtable4695 as select * from viewtable4691;
create temporary table viewtable4696 as select * from viewtable4691;
create temporary table viewtable4697 as select * from viewtable4691;
create temporary table viewtable4698 as select * from viewtable4691;
create temporary table viewtable4699 as select * from viewtable4691;
create temporary table viewtable4700 as select * from viewtable4691;
create temporary table viewtable4701 as select * from viewtable4691;
create temporary table viewtable4702 as select * from viewtable4691;
create temporary table viewtable4703 as select * from viewtable4691;
create temporary table viewtable4704 as select * from viewtable4691;
create temporary table viewtable4705 as select * from viewtable4691;
create temporary table viewtable4706 as select * from viewtable4691;
create temporary table viewtable4707 as select * from viewtable4691;
create temporary table viewtable4708 as select * from viewtable4691;
create temporary table viewtable4709 as select * from viewtable4691;
create temporary table viewtable4710 as select * from viewtable4691;
create temporary table viewtable4711 as select * from viewtable4691;
create temporary table viewtable4712 as select * from viewtable4691;
create temporary table viewtable4713 as select * from viewtable4691;
create temporary table viewtable4714 as select * from viewtable4691;
create temporary table viewtable4715 as select * from viewtable4691;
create temporary table viewtable4716 as select * from viewtable4691;
create temporary table viewtable4717 as select * from viewtable4691;
create temporary table viewtable4718 as select * from viewtable4691;
create temporary table viewtable4719 as select * from viewtable4691;
create temporary table viewtable4720 as select * from viewtable4691;
create temporary table viewtable4721 as select * from viewtable4691;
create temporary table viewtable4722 as select * from viewtable4691;
create temporary table viewtable4723 as select * from viewtable4691;
create temporary table viewtable4724 as select * from viewtable4691;
create temporary table viewtable4725 as select * from viewtable4691;
create temporary table viewtable4726 as select * from viewtable4691;
create temporary table viewtable4727 as select * from viewtable4691;
create temporary table viewtable4728 as select * from viewtable4691;
create temporary table viewtable4729 as select * from viewtable4691;
create temporary table viewtable4730 as select * from viewtable4691;
create temporary table viewtable4731 as select * from viewtable4691;
create temporary table viewtable4732 as select * from viewtable4691;
create temporary table viewtable4733 as select * from viewtable4691;
create temporary table viewtable4734 as select * from viewtable4691;
create temporary table viewtable4735 as select * from viewtable4691;
create temporary table viewtable4736 as select * from viewtable4691;
create temporary table viewtable4737 as select * from viewtable4691;
create temporary table viewtable4738 as select * from viewtable4691;
SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4691 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4692 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4693 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable4694 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable4695 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable4696 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4697 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4698 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6,
viewtable4699 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4700 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4701 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6,
viewtable4702 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable4703 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable4704 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable4705 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4706 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4707 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4708 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6,
viewtable4709 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4710 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4711 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6,
viewtable4712 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4713 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4714 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW4.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4715 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4716 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4717 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable4718 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable4719 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable4720 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4721 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4722 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6,
viewtable4723 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4724 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4725 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6,
viewtable4726 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable4727 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable4728 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable4729 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4730 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4731 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4732 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6,
viewtable4733 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4734 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4735 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6,
viewtable4736 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
viewtable4737 QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
viewtable4738 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

