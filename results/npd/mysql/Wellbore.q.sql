SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`dscNpdidDiscovery` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(QVIEW2.`dscDiscoveryYear` AS CHAR(8000) CHARACTER SET utf8) AS `y`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_exploration_all` QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`dscNpdidDiscovery` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(QVIEW2.`dscDiscoveryYear` AS CHAR(8000) CHARACTER SET utf8) AS `y`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_development_all` QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellboreReclass`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`dscNpdidDiscovery` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(QVIEW2.`dscDiscoveryYear` AS CHAR(8000) CHARACTER SET utf8) AS `y`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_npdid_overview` QVIEW3
WHERE 
(QVIEW1.`dscNpdidDiscovery` = QVIEW2.`dscNpdidDiscovery`) AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW2.`dscDiscoveryYear` IS NOT NULL
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`dscNpdidDiscovery` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(QVIEW3.`dscDiscoveryYear` AS CHAR(8000) CHARACTER SET utf8) AS `y`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`discovery` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellboreReclass`) AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW3.`dscNpdidDiscovery`) AND
QVIEW3.`dscDiscoveryYear` IS NOT NULL
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`dscNpdidDiscovery` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(QVIEW3.`dscDiscoveryYear` AS CHAR(8000) CHARACTER SET utf8) AS `y`
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`discovery` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellboreReclass`) AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW3.`dscNpdidDiscovery`) AND
QVIEW3.`dscDiscoveryYear` IS NOT NULL
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   1 AS `discoveryQuestType`, NULL AS `discoveryLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/discovery/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`dscNpdidDiscovery` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `discovery`, 
   4 AS `yQuestType`, NULL AS `yLang`, CAST(QVIEW3.`dscDiscoveryYear` AS CHAR(8000) CHARACTER SET utf8) AS `y`
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