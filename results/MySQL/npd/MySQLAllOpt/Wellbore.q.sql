CREATE TEMPORARY TABLE viewtable6665 AS select distinct alias2.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_exploration_all` alias2 
where 
alias2.`wlbNpdidWellboreReclass` IS NOT NULL

CREATE TEMPORARY TABLE viewtable6667 AS select distinct alias3.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_development_all` alias3 
where 
alias3.`wlbNpdidWellboreReclass` IS NOT NULL

create temporary table viewtable6668 as select * from viewtable6667;
CREATE TEMPORARY TABLE viewtable6670 AS select distinct alias1.`wlbNpdidWellboreReclass` as "wlbNpdidWellboreReclass" from 
`wellbore_exploration_all` alias1 
where 
alias1.`wlbNpdidWellboreReclass` IS NOT NULL

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
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
viewtable6665 QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
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
viewtable6667 QVIEW3
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
   QVIEW2.`dscDiscoveryYear` as var2
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
viewtable6668 QVIEW3
WHERE 
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
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
viewtable6670 QVIEW3
WHERE 
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`))
 
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