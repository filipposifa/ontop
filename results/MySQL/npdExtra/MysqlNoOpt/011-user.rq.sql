SELECT *
FROM (
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW2.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbTotalCoreLength` > 30)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW2.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbTotalCoreLength` > 30)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW2.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_shallow_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbTotalCoreLength` > 30)
UNION
SELECT 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(QVIEW2.`wlbTotalCoreLength` AS CHAR(8000) CHARACTER SET utf8) AS `length`
 FROM 
`wellbore_core` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_npdid_overview` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW2.`wlbTotalCoreLength` > 30)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

