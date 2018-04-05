CREATE TEMPORARY TABLE viewtable3864 AS select distinct alias3.`cmpLongName` as "cmpLongName" from 
`company` alias3 
where 
alias3.`cmpNpdidCompany` IS NOT NULL and 
alias3.`cmpLongName` IS NOT NULL

create temporary table viewtable3865 as select * from viewtable3864;
create temporary table viewtable3866 as select * from viewtable3864;
create temporary table viewtable3867 as select * from viewtable3864;
create temporary table viewtable3868 as select * from viewtable3864;
create temporary table viewtable3869 as select * from viewtable3864;
create temporary table viewtable3870 as select * from viewtable3864;
create temporary table viewtable3871 as select * from viewtable3864;
create temporary table viewtable3872 as select * from viewtable3864;
create temporary table viewtable3873 as select * from viewtable3864;
create temporary table viewtable3874 as select * from viewtable3864;
create temporary table viewtable3875 as select * from viewtable3864;
create temporary table viewtable3876 as select * from viewtable3864;
create temporary table viewtable3877 as select * from viewtable3864;
create temporary table viewtable3878 as select * from viewtable3864;
create temporary table viewtable3879 as select * from viewtable3864;
create temporary table viewtable3880 as select * from viewtable3864;
create temporary table viewtable3881 as select * from viewtable3864;
create temporary table viewtable3882 as select * from viewtable3864;
create temporary table viewtable3883 as select * from viewtable3864;
create temporary table viewtable3884 as select * from viewtable3864;
create temporary table viewtable3885 as select * from viewtable3864;
create temporary table viewtable3886 as select * from viewtable3864;
create temporary table viewtable3887 as select * from viewtable3864;
create temporary table viewtable3888 as select * from viewtable3864;
create temporary table viewtable3889 as select * from viewtable3864;
create temporary table viewtable3890 as select * from viewtable3864;
create temporary table viewtable3891 as select * from viewtable3864;
create temporary table viewtable3892 as select * from viewtable3864;
create temporary table viewtable3893 as select * from viewtable3864;
create temporary table viewtable3894 as select * from viewtable3864;
create temporary table viewtable3895 as select * from viewtable3864;
create temporary table viewtable3896 as select * from viewtable3864;
create temporary table viewtable3897 as select * from viewtable3864;
create temporary table viewtable3898 as select * from viewtable3864;
create temporary table viewtable3899 as select * from viewtable3864;
create temporary table viewtable3900 as select * from viewtable3864;
create temporary table viewtable3901 as select * from viewtable3864;
create temporary table viewtable3902 as select * from viewtable3864;
create temporary table viewtable3903 as select * from viewtable3864;
create temporary table viewtable3904 as select * from viewtable3864;
create temporary table viewtable3905 as select * from viewtable3864;
create temporary table viewtable3906 as select * from viewtable3864;
create temporary table viewtable3907 as select * from viewtable3864;
create temporary table viewtable3908 as select * from viewtable3864;
create temporary table viewtable3909 as select * from viewtable3864;
create temporary table viewtable3910 as select * from viewtable3864;
create temporary table viewtable3911 as select * from viewtable3864;
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
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3890 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3904 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable3909 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable3901 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
viewtable3902 QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3905 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable3906 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3897 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3908 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3907 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3889 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable3896 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3895 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3888 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable3899 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable3892 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3898 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3911 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW3.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3903 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
viewtable3891 QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable3893 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3910 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW3.`wlbWellboreName` as var0, 
   QVIEW1.`wlbCompletionYear` as var1, 
   QVIEW4.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3894 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND (QVIEW4.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable3900 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND (QVIEW3.`wlbTotalCoreLength` > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   3 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(var2 * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `company`
FROM (
 (
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable3877 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW2.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
viewtable3873 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3880 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
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
viewtable3864 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3883 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3866 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3887 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3865 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable3875 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable3869 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW2.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
viewtable3884 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable3872 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
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
viewtable3867 QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW2.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable3885 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3874 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable3868 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW2.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable3886 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
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
viewtable3870 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
viewtable3881 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW2.`wlbWellboreName` as var0, 
   QVIEW5.`wlbCompletionYear` as var1, 
   QVIEW3.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable3882 QVIEW6
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbCompletionYear` IS NOT NULL AND
((QVIEW5.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW6.`cmpLongName`))
 
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
viewtable3878 QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
((QVIEW1.`wlbCompletionYear` >= 2008) AND ((QVIEW2.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW4.`cmpLongName`))
 
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
viewtable3879 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
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
viewtable3871 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW4.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND ((QVIEW3.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0, 
   QVIEW4.`wlbCompletionYear` as var1, 
   QVIEW2.`wlbTotalCoreLength` as var2, 
   QVIEW1.`wlbDrillingOperator` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable3876 QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCompletionYear` IS NOT NULL AND
((QVIEW4.`wlbCompletionYear` >= 2008) AND ((QVIEW2.`wlbTotalCoreLength` * 0.3048) > 50)) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

