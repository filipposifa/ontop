SELECT *
FROM (
SELECT

   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`
FROM (
 (
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_npdid_overview` QVIEW1,
`discovery` QVIEW2
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_npdid_overview` QVIEW1,
`field` QVIEW2
WHERE 
QVIEW1.`wlbWellboreName` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbWellboreName` as var0
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

