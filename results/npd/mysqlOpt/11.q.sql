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
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`company` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`company` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
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
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
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
`company` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_exploration_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`company` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_shallow_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW4.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`company` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
`wellbore_core` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbDrillingOperator` = QVIEW3.`cmpLongName`) AND
QVIEW3.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`company` QVIEW4,
`wellbore_development_all` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)))
 
UNION
(
SELECT 
   QVIEW5.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW3.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`company` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
`wellbore_core` QVIEW6
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`) AND
QVIEW4.`cmpNpdidCompany` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW6.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50))
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

