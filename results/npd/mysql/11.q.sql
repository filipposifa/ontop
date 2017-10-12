SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
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
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_shallow_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_npdid_overview` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_development_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_npdid_overview` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_exploration_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`company` QVIEW5,
`wellbore_npdid_overview` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_shallow_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW6.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`company` QVIEW5,
`wellbore_npdid_overview` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`) AND
QVIEW5.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
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
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

