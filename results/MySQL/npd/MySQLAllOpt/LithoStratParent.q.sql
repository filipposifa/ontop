CREATE TEMPORARY TABLE viewtable5880 AS select distinct alias1.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias1 
where 
alias1.`lsuNpdidLithoStratParent` IS NOT NULL

create temporary table viewtable5881 as select * from viewtable5880;
create temporary table viewtable5882 as select * from viewtable5880;
CREATE TEMPORARY TABLE viewtable5884 AS select distinct alias1.`lsuNpdidLithoStrat` as "lsuNpdidLithoStrat" from 
`wellbore_formation_top` alias1 
where 
alias1.`lsuNpdidLithoStrat` IS NOT NULL

create temporary table viewtable5885 as select * from viewtable5884;
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
viewtable5880 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
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
`wellbore_formation_top` QVIEW1,
viewtable5882 QVIEW2
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
`strat_litho_wellbore` QVIEW1,
viewtable5884 QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`lsuTopDepth` IS NOT NULL AND
QVIEW1.`lsuBottomDepth` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`)
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
viewtable5881 QVIEW2
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
viewtable5885 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`)
 ) 
 
 ) SUBQALIAS