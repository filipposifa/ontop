SELECT

   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`, 
   1 AS `wellQuestType`, NULL AS `wellLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/well/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `well`, 
   1 AS `wcQuestType`, NULL AS `wcLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/core/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wc`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`discovery` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`dscNpdidDiscovery` = QVIEW4.`dscNpdidDiscovery`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`discovery` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW3.`dscNpdidDiscovery`) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`discovery` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`dscNpdidDiscovery` = QVIEW4.`dscNpdidDiscovery`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`wlbCoreNumber` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`, 
   1 AS `wellQuestType`, NULL AS `wellLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/well/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `well`, 
   1 AS `wcQuestType`, NULL AS `wcLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/cores') AS `wc`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_npdid_overview` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`discovery` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`dscNpdidDiscovery` = QVIEW4.`dscNpdidDiscovery`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`discovery` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW3.`dscNpdidDiscovery`) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_exploration_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`discovery` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW3.`dscNpdidDiscovery` = QVIEW4.`dscNpdidDiscovery`) AND
QVIEW3.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW1.`wlbWell` as var1, 
   QVIEW1.`wlbNpdidWellbore` as var2, 
   QVIEW2.`lsuNpdidLithoStrat` as var3
 FROM 
`wellbore_development_all` QVIEW1,
`strat_litho_wellbore_core` QVIEW2
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL
 ) 
 
 ) SUBQALIAS