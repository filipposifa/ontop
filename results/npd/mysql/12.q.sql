SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW5.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW5.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW5.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_development_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_development_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW5.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND ((QVIEW5.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW5.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_exploration_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW4.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_exploration_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW6.`wlbTotalCoreLength` * 0.3048) > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_development_all` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_development_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_development_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_exploration_all` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW6.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_shallow_all` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW6.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_exploration_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW5.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_exploration_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW7.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_shallow_all` QVIEW7
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW7.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
(QVIEW1.`wlbCoreIntervalUom` = '[m   ]') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW6.`wlbTotalCoreLength` > 50))
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

