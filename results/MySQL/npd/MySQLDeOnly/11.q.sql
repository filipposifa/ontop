CREATE TEMPORARY TABLE viewtable3574 AS select distinct alias4.`cmpLongName` as "cmpLongName" from 
`company` alias4 
where 
alias4.`cmpNpdidCompany` IS NOT NULL and 
alias4.`cmpLongName` IS NOT NULL

create temporary table viewtable3575 as select * from viewtable3574;
create temporary table viewtable3576 as select * from viewtable3574;
create temporary table viewtable3577 as select * from viewtable3574;
create temporary table viewtable3578 as select * from viewtable3574;
create temporary table viewtable3579 as select * from viewtable3574;
create temporary table viewtable3580 as select * from viewtable3574;
create temporary table viewtable3581 as select * from viewtable3574;
create temporary table viewtable3582 as select * from viewtable3574;
create temporary table viewtable3583 as select * from viewtable3574;
create temporary table viewtable3584 as select * from viewtable3574;
create temporary table viewtable3585 as select * from viewtable3574;
create temporary table viewtable3586 as select * from viewtable3574;
create temporary table viewtable3587 as select * from viewtable3574;
create temporary table viewtable3588 as select * from viewtable3574;
create temporary table viewtable3589 as select * from viewtable3574;
create temporary table viewtable3590 as select * from viewtable3574;
create temporary table viewtable3591 as select * from viewtable3574;
create temporary table viewtable3592 as select * from viewtable3574;
create temporary table viewtable3593 as select * from viewtable3574;
create temporary table viewtable3594 as select * from viewtable3574;
create temporary table viewtable3595 as select * from viewtable3574;
create temporary table viewtable3596 as select * from viewtable3574;
create temporary table viewtable3597 as select * from viewtable3574;
SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3574 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3575 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3576 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3577 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3578 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3579 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3580 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3581 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3582 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3583 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3584 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3585 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3586 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3587 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3588 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3589 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3590 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3591 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3592 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3593 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3594 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3595 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6,
viewtable3596 QVIEW7
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW7.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
viewtable3597 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

