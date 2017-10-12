SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2
WHERE 
QVIEW1.`wlbNamePart1` IS NOT NULL AND
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_development_all` QVIEW2
WHERE 
QVIEW1.`wlbNamePart1` IS NOT NULL AND
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2
WHERE 
QVIEW1.`wlbNamePart1` IS NOT NULL AND
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_exploration_all` QVIEW2
WHERE 
QVIEW1.`wlbNamePart1` IS NOT NULL AND
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2
WHERE 
QVIEW1.`wlbNamePart1` IS NOT NULL AND
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2
WHERE 
QVIEW1.`wlbNamePart1` IS NOT NULL AND
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)