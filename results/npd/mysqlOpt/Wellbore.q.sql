CREATE TEMPORARY TABLE viewtable6354 AS select distinct alias5.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_development_all` alias5 
where 
alias5.`wlbNpdidWellboreReclass` IS NOT NULL and 
alias5.`wlbNpdidWellboreReclass` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable6355 AS select distinct alias3.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_development_all` alias3;
CREATE TEMPORARY TABLE viewtable6356 AS select distinct alias1.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_exploration_all` alias1;
CREATE TEMPORARY TABLE viewtable6357 AS select distinct alias1.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_exploration_all` alias1 
where 
alias1.`wlbNpdidWellboreReclass` IS NOT NULL and 
alias1.`wlbNpdidWellboreReclass` IS NOT NULL;
SELECT

   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `y`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`dscNpdidDiscovery` as var1, 
   QVIEW2.`dscDiscoveryYear` as var2
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
viewtable6354 QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`dscNpdidDiscovery` as var1, 
   QVIEW2.`dscDiscoveryYear` as var2
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
viewtable6356 QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`dscNpdidDiscovery` as var1, 
   QVIEW2.`dscDiscoveryYear` as var2
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
viewtable6355 QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`dscNpdidDiscovery` as var1, 
   QVIEW2.`dscDiscoveryYear` as var2
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
viewtable6357 QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`dscNpdidDiscovery` as var1, 
   QVIEW2.`dscDiscoveryYear` as var2
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_npdid_overview` QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`dscNpdidDiscovery` as var1, 
   QVIEW3.`dscDiscoveryYear` as var2
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`discovery` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW3.`dscNpdidDiscovery`) AND
QVIEW3.`dscDiscoveryYear` IS NOT NULL
 ) 
 
 ) SUBQALIAS