SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`company` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW2.`cmpLongName`) AND
QVIEW2.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`lsuCoreLenght` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`company` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW2.`cmpLongName`) AND
QVIEW2.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`company` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW2.`cmpLongName`) AND
QVIEW2.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`lsuCoreLenght` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW3.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`company` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW2.`cmpLongName`) AND
QVIEW2.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`strat_litho_wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
QVIEW5.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW5.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW5.`wlbCoreNumber` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW5.`wlbTotalCoreLength` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
QVIEW4.`lsuCoreLenght` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`lsuCoreLenght` > 50))
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW4.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50))
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

