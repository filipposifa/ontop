SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6,
`wellbore_core` QVIEW7
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW7.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`cmpLongName` AS `company`
 FROM 
`company` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`cmpLongName` IS NOT NULL AND
(QVIEW1.`cmpLongName` = QVIEW2.`wlbDrillingOperator`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

