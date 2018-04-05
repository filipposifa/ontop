CREATE TEMPORARY TABLE viewtable937 AS select distinct alias7.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias7 
where 
alias7.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable938 as select * from viewtable937;
create temporary table viewtable939 as select * from viewtable937;
create temporary table viewtable940 as select * from viewtable937;
create temporary table viewtable941 as select * from viewtable937;
CREATE TEMPORARY TABLE viewtable943 AS select distinct alias8.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias8 
where 
alias8.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable944 as select * from viewtable943;
create temporary table viewtable945 as select * from viewtable943;
create temporary table viewtable946 as select * from viewtable943;
create temporary table viewtable947 as select * from viewtable943;
create temporary table viewtable948 as select * from viewtable943;
create temporary table viewtable949 as select * from viewtable943;
CREATE TEMPORARY TABLE viewtable951 AS select distinct alias5.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias5 
where 
alias5.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable952 as select * from viewtable951;
create temporary table viewtable953 as select * from viewtable951;
create temporary table viewtable954 as select * from viewtable951;
create temporary table viewtable955 as select * from viewtable951;
create temporary table viewtable956 as select * from viewtable951;
create temporary table viewtable957 as select * from viewtable951;
create temporary table viewtable958 as select * from viewtable951;
CREATE TEMPORARY TABLE viewtable960 AS select distinct alias0.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias0 
where 
alias0.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable961 as select * from viewtable960;
create temporary table viewtable962 as select * from viewtable960;
create temporary table viewtable963 as select * from viewtable960;
create temporary table viewtable964 as select * from viewtable960;
create temporary table viewtable965 as select * from viewtable960;
create temporary table viewtable966 as select * from viewtable960;
CREATE TEMPORARY TABLE viewtable968 AS select distinct alias4.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias4 
where 
alias4.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable969 as select * from viewtable968;
create temporary table viewtable970 as select * from viewtable968;
create temporary table viewtable971 as select * from viewtable968;
create temporary table viewtable972 as select * from viewtable968;
create temporary table viewtable973 as select * from viewtable968;
create temporary table viewtable974 as select * from viewtable968;
create temporary table viewtable975 as select * from viewtable968;
CREATE TEMPORARY TABLE viewtable977 AS select distinct alias2.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias2 
where 
alias2.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable978 as select * from viewtable977;
create temporary table viewtable979 as select * from viewtable977;
create temporary table viewtable980 as select * from viewtable977;
create temporary table viewtable981 as select * from viewtable977;
create temporary table viewtable982 as select * from viewtable977;
CREATE TEMPORARY TABLE viewtable984 AS select distinct alias3.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias3 
where 
alias3.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable985 as select * from viewtable984;
create temporary table viewtable986 as select * from viewtable984;
create temporary table viewtable987 as select * from viewtable984;
create temporary table viewtable988 as select * from viewtable984;
create temporary table viewtable989 as select * from viewtable984;
create temporary table viewtable990 as select * from viewtable984;
CREATE TEMPORARY TABLE viewtable992 AS select distinct alias9.`cmpLongName` as "cmpLongName" from 
`company` alias9 
where 
alias9.`cmpNpdidCompany` IS NOT NULL and 
alias9.`cmpLongName` IS NOT NULL

create temporary table viewtable993 as select * from viewtable992;
create temporary table viewtable994 as select * from viewtable992;
create temporary table viewtable995 as select * from viewtable992;
create temporary table viewtable996 as select * from viewtable992;
create temporary table viewtable997 as select * from viewtable992;
create temporary table viewtable998 as select * from viewtable992;
create temporary table viewtable999 as select * from viewtable992;
create temporary table viewtable1000 as select * from viewtable992;
create temporary table viewtable1001 as select * from viewtable992;
create temporary table viewtable1002 as select * from viewtable992;
create temporary table viewtable1003 as select * from viewtable992;
create temporary table viewtable1004 as select * from viewtable992;
create temporary table viewtable1005 as select * from viewtable992;
create temporary table viewtable1006 as select * from viewtable992;
create temporary table viewtable1007 as select * from viewtable992;
create temporary table viewtable1008 as select * from viewtable992;
create temporary table viewtable1009 as select * from viewtable992;
create temporary table viewtable1010 as select * from viewtable992;
create temporary table viewtable1011 as select * from viewtable992;
create temporary table viewtable1012 as select * from viewtable992;
create temporary table viewtable1013 as select * from viewtable992;
create temporary table viewtable1014 as select * from viewtable992;
create temporary table viewtable1015 as select * from viewtable992;
SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable943 QVIEW8,
viewtable984 QVIEW9,
viewtable992 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable960 QVIEW8,
viewtable985 QVIEW9,
viewtable993 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
viewtable937 QVIEW7,
viewtable986 QVIEW8,
viewtable994 QVIEW9
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW6.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW9.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable951 QVIEW8,
viewtable977 QVIEW9,
viewtable995 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable952 QVIEW8,
viewtable968 QVIEW9,
viewtable996 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable961 QVIEW9,
viewtable978 QVIEW10,
viewtable997 QVIEW11
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable953 QVIEW8,
viewtable962 QVIEW9,
viewtable998 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable938 QVIEW9,
viewtable987 QVIEW10,
viewtable999 QVIEW11
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable944 QVIEW9,
viewtable963 QVIEW10,
viewtable1000 QVIEW11
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable954 QVIEW8,
viewtable979 QVIEW9,
viewtable1001 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable945 QVIEW8,
viewtable955 QVIEW9,
viewtable1002 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable939 QVIEW9,
viewtable969 QVIEW10,
viewtable1003 QVIEW11
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable964 QVIEW8,
viewtable970 QVIEW9,
viewtable1004 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable946 QVIEW8,
viewtable988 QVIEW9,
viewtable1005 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable965 QVIEW9,
viewtable971 QVIEW10,
viewtable1006 QVIEW11
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable956 QVIEW9,
viewtable972 QVIEW10,
viewtable1007 QVIEW11
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable957 QVIEW8,
viewtable966 QVIEW9,
viewtable1008 QVIEW10
WHERE 
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW6.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
viewtable940 QVIEW7,
viewtable980 QVIEW8,
viewtable1009 QVIEW9
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW1.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
QVIEW6.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW6.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW9.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable947 QVIEW8,
viewtable973 QVIEW9,
viewtable1010 QVIEW10
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable948 QVIEW8,
viewtable958 QVIEW9,
viewtable1011 QVIEW10
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable981 QVIEW9,
viewtable989 QVIEW10,
viewtable1012 QVIEW11
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable941 QVIEW8,
viewtable974 QVIEW9,
viewtable1013 QVIEW10
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW8.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
`wellbore_core` QVIEW8,
viewtable949 QVIEW9,
viewtable975 QVIEW10,
viewtable1014 QVIEW11
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL AND
(QVIEW4.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbCoreNumber` = QVIEW7.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
QVIEW8.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW8.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW10.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW11.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW7.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW1.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_core` QVIEW4,
`wellbore_core` QVIEW5,
`wellbore_core` QVIEW6,
`wellbore_core` QVIEW7,
viewtable982 QVIEW8,
viewtable990 QVIEW9,
viewtable1015 QVIEW10
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL AND
(QVIEW3.`wlbCoreNumber` = QVIEW4.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW5.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
(QVIEW3.`wlbCoreNumber` = QVIEW6.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW6.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW7.`wlbNpdidWellbore`) AND
QVIEW7.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW7.`wlbTotalCoreLength` > 50) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW8.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW9.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDrillingOperator` = QVIEW10.`cmpLongName`)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

