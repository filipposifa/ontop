CREATE TEMPORARY TABLE viewtable838 AS select distinct alias1.`cmpLongName` as "cmpLongName" from 
`company` alias1 
where 
alias1.`cmpNpdidCompany` IS NOT NULL and 
alias1.`cmpLongName` IS NOT NULL

create temporary table viewtable839 as select * from viewtable838;
create temporary table viewtable840 as select * from viewtable838;
create temporary table viewtable841 as select * from viewtable838;
create temporary table viewtable842 as select * from viewtable838;
create temporary table viewtable843 as select * from viewtable838;
create temporary table viewtable844 as select * from viewtable838;
create temporary table viewtable845 as select * from viewtable838;
create temporary table viewtable846 as select * from viewtable838;
create temporary table viewtable847 as select * from viewtable838;
create temporary table viewtable848 as select * from viewtable838;
create temporary table viewtable849 as select * from viewtable838;
create temporary table viewtable850 as select * from viewtable838;
create temporary table viewtable851 as select * from viewtable838;
create temporary table viewtable852 as select * from viewtable838;
create temporary table viewtable853 as select * from viewtable838;
create temporary table viewtable854 as select * from viewtable838;
create temporary table viewtable855 as select * from viewtable838;
create temporary table viewtable856 as select * from viewtable838;
create temporary table viewtable857 as select * from viewtable838;
create temporary table viewtable858 as select * from viewtable838;
create temporary table viewtable859 as select * from viewtable838;
create temporary table viewtable860 as select * from viewtable838;
create temporary table viewtable861 as select * from viewtable838;
create temporary table viewtable862 as select * from viewtable838;
create temporary table viewtable863 as select * from viewtable838;
create temporary table viewtable864 as select * from viewtable838;
create temporary table viewtable865 as select * from viewtable838;
create temporary table viewtable866 as select * from viewtable838;
create temporary table viewtable867 as select * from viewtable838;
create temporary table viewtable868 as select * from viewtable838;
create temporary table viewtable869 as select * from viewtable838;
create temporary table viewtable870 as select * from viewtable838;
create temporary table viewtable871 as select * from viewtable838;
create temporary table viewtable872 as select * from viewtable838;
create temporary table viewtable873 as select * from viewtable838;
create temporary table viewtable874 as select * from viewtable838;
create temporary table viewtable875 as select * from viewtable838;
create temporary table viewtable876 as select * from viewtable838;
create temporary table viewtable877 as select * from viewtable838;
create temporary table viewtable878 as select * from viewtable838;
create temporary table viewtable879 as select * from viewtable838;
create temporary table viewtable880 as select * from viewtable838;
create temporary table viewtable881 as select * from viewtable838;
create temporary table viewtable882 as select * from viewtable838;
create temporary table viewtable883 as select * from viewtable838;
create temporary table viewtable884 as select * from viewtable838;
create temporary table viewtable885 as select * from viewtable838;
SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable838 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
viewtable839 QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable840 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
viewtable841 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable842 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable843 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable844 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
viewtable845 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_development_all` QVIEW5,
viewtable846 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable847 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable848 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
viewtable849 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable850 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_exploration_all` QVIEW5,
viewtable851 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable852 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_development_all` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
viewtable853 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable854 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable855 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_shallow_all` QVIEW5,
viewtable856 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW5.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW4.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`wellbore_npdid_overview` QVIEW5,
viewtable857 QVIEW6
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW5.`wlbWellboreName` IS NOT NULL AND
QVIEW4.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW4.`wlbDrillingOperator` = QVIEW6.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
viewtable858 QVIEW4
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable859 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable860 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW3.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
viewtable861 QVIEW5
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbCoreNumber` = QVIEW2.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW3.`wlbCompletionYear` >= 2008) AND (QVIEW1.`wlbTotalCoreLength` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
viewtable862 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
viewtable863 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
viewtable864 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
viewtable865 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
viewtable866 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
viewtable867 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable868 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
viewtable869 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_development_all` QVIEW4,
viewtable870 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
viewtable871 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
viewtable872 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
viewtable873 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
viewtable874 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_exploration_all` QVIEW4,
viewtable875 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
viewtable876 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
viewtable877 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
viewtable878 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
viewtable879 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_shallow_all` QVIEW4,
viewtable880 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW4.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW3.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`wellbore_npdid_overview` QVIEW4,
viewtable881 QVIEW5
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbWellboreName` IS NOT NULL AND
QVIEW3.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW3.`wlbDrillingOperator` = QVIEW5.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
viewtable882 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW3.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_exploration_all` QVIEW3,
viewtable883 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
viewtable884 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW2.`wlbCompletionYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `lenghtMQuestType`, NULL AS `lenghtMLang`, CAST(QVIEW1.`lsuCoreLenght` AS CHAR(8000) CHARACTER SET utf8) AS `lenghtM`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`wlbDrillingOperator` AS `company`
 FROM 
`strat_litho_wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
viewtable885 QVIEW4
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuCoreLenght` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCompletionYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
QVIEW2.`wlbDrillingOperator` IS NOT NULL AND
((QVIEW2.`wlbCompletionYear` >= 2008) AND (QVIEW1.`lsuCoreLenght` > 50)) AND
(QVIEW2.`wlbDrillingOperator` = QVIEW4.`cmpLongName`)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

