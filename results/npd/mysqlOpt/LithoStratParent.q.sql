CREATE TEMPORARY TABLE viewtable38 AS select distinct alias0.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias0;
create temporary table viewtable39 as select * from viewtable38;
CREATE TEMPORARY TABLE viewtable41 AS select distinct alias0.`lsuNpdidLithoStrat` as "lsuNpdidLithoStrat" from 
`wellbore_formation_top` alias0;
CREATE TEMPORARY TABLE viewtable43 AS select distinct alias0.`lsuNpdidLithoStrat` as "lsuNpdidLithoStrat" from 
`wellbore_formation_top` alias0 
where 
alias0.`lsuNpdidLithoStrat` IS NOT NULL and 
alias0.`lsuNpdidLithoStrat` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable45 AS select distinct alias0.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias0 
where 
alias0.`lsuNpdidLithoStratParent` IS NOT NULL and 
alias0.`lsuNpdidLithoStratParent` IS NOT NULL;
SELECT

   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/depth/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`lsuNpdidLithoStrat` as var1, 
   QVIEW1.`lsuTopDepth` as var2, 
   QVIEW1.`lsuBottomDepth` as var3, 
   QVIEW1.`lsuNpdidLithoStrat` as var4
 FROM 
`strat_litho_wellbore` QVIEW1,
viewtable43 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuTopDepth` IS NOT NULL AND
QVIEW1.`lsuBottomDepth` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`lsuNpdidLithoStrat` as var1, 
   QVIEW1.`lsuTopDepth` as var2, 
   QVIEW1.`lsuBottomDepth` as var3, 
   QVIEW1.`lsuNpdidLithoStrat` as var4
 FROM 
`wellbore_formation_top` QVIEW1
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`lsuTopDepth` IS NOT NULL AND
QVIEW1.`lsuBottomDepth` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`lsuNpdidLithoStrat` as var1, 
   QVIEW1.`lsuTopDepth` as var2, 
   QVIEW1.`lsuBottomDepth` as var3, 
   QVIEW1.`lsuNpdidLithoStrat` as var4
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable39 QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuTopDepth` IS NOT NULL AND
QVIEW1.`lsuBottomDepth` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`lsuNpdidLithoStrat` as var1, 
   QVIEW1.`lsuTopDepth` as var2, 
   QVIEW1.`lsuBottomDepth` as var3, 
   QVIEW1.`lsuNpdidLithoStrat` as var4
 FROM 
`strat_litho_wellbore` QVIEW1,
viewtable38 QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuTopDepth` IS NOT NULL AND
QVIEW1.`lsuBottomDepth` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/cores') AS `q`, 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`lsuNpdidLithoStrat` as var1, 
   QVIEW1.`lsuNpdidLithoStrat` as var2
 FROM 
`strat_litho_wellbore_core` QVIEW1,
viewtable45 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`lsuNpdidLithoStrat` as var1, 
   QVIEW1.`lsuNpdidLithoStrat` as var2
 FROM 
`strat_litho_wellbore_core` QVIEW1,
viewtable41 QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`)
 ) 
 
 ) SUBQALIAS