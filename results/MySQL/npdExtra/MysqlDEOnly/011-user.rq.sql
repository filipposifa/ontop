CREATE TEMPORARY TABLE viewtable74 AS select distinct alias0.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias0 
where 
alias0.`wlbNpdidWellbore` IS NOT NULL

create temporary table viewtable75 as select * from viewtable74;
create temporary table viewtable76 as select * from viewtable74;
create temporary table viewtable77 as select * from viewtable74;
SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_development_all` QVIEW2,
viewtable74 QVIEW3
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbTotalCoreLength` > 30) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_exploration_all` QVIEW2,
viewtable75 QVIEW3
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbTotalCoreLength` > 30) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_shallow_all` QVIEW2,
viewtable76 QVIEW3
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbTotalCoreLength` > 30) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW2.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW1.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
viewtable77 QVIEW3
WHERE 
QVIEW1.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbTotalCoreLength` > 30) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

