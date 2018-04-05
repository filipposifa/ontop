CREATE TEMPORARY TABLE viewtable2939 AS select distinct alias3.`cmpLongName` as "cmpLongName" from 
`company` alias3 
where 
alias3.`cmpNpdidCompany` IS NOT NULL and 
alias3.`cmpLongName` IS NOT NULL

create temporary table viewtable2940 as select * from viewtable2939;
create temporary table viewtable2941 as select * from viewtable2939;
create temporary table viewtable2942 as select * from viewtable2939;
create temporary table viewtable2943 as select * from viewtable2939;
create temporary table viewtable2944 as select * from viewtable2939;
create temporary table viewtable2945 as select * from viewtable2939;
create temporary table viewtable2946 as select * from viewtable2939;
create temporary table viewtable2947 as select * from viewtable2939;
create temporary table viewtable2948 as select * from viewtable2939;
create temporary table viewtable2949 as select * from viewtable2939;
create temporary table viewtable2950 as select * from viewtable2939;
create temporary table viewtable2951 as select * from viewtable2939;
create temporary table viewtable2952 as select * from viewtable2939;
create temporary table viewtable2953 as select * from viewtable2939;
create temporary table viewtable2954 as select * from viewtable2939;
create temporary table viewtable2955 as select * from viewtable2939;
create temporary table viewtable2956 as select * from viewtable2939;
create temporary table viewtable2957 as select * from viewtable2939;
create temporary table viewtable2958 as select * from viewtable2939;
create temporary table viewtable2959 as select * from viewtable2939;
create temporary table viewtable2960 as select * from viewtable2939;
create temporary table viewtable2961 as select * from viewtable2939;
create temporary table viewtable2962 as select * from viewtable2939;
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
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2958 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2954 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2946 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
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
`wellbore_core` QVIEW4,
viewtable2948 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
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
`wellbore_core` QVIEW4,
viewtable2945 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2940 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2944 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2947 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
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
`wellbore_core` QVIEW4,
viewtable2959 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2943 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2957 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW2.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2941 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
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
`wellbore_core` QVIEW3,
viewtable2942 QVIEW4
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2951 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
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
`wellbore_core` QVIEW4,
viewtable2956 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
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
`wellbore_core` QVIEW3,
viewtable2953 QVIEW4
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable2952 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW2.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
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
`wellbore_core` QVIEW4,
viewtable2939 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2949 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2961 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
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
`wellbore_core` QVIEW4,
viewtable2962 QVIEW5
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2950 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2960 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
`wellbore_core` QVIEW5,
viewtable2955 QVIEW6
WHERE 
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW5.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

