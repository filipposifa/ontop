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
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`company` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`lsuCoreLenght` as var2, 
   QVIEW2.`wlbDrillingOperator` as var3
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW1.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50))
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

