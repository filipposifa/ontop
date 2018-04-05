SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'OLIGOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'OLIGOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'LATE PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'LATE PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'EOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'EOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`strat_litho_wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'DANIAN') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'DANIAN') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW2.`wlbEntryYear` IS NOT NULL AND
(QVIEW2.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'OLIGOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'OLIGOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'LATE PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'LATE PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'EOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'EOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'DANIAN') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_development_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'DANIAN') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'OLIGOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'OLIGOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'LATE PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'LATE PALEOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'EOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'EOCENE') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`strat_litho_wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'DANIAN') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`lsuNpdidLithoStrat` IS NOT NULL
UNION
SELECT 
   7 AS `fieldnameQuestType`, NULL AS `fieldnameLang`, QVIEW1.`fldName` AS `fieldname`, 
   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
 FROM 
`field` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`wellbore_core` QVIEW4
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL AND
(QVIEW2.`wlbAgeAtTd` = 'DANIAN') AND
(QVIEW1.`fldNpdidField` = QVIEW2.`fldNpdidField`) AND
QVIEW2.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbEntryYear` IS NOT NULL AND
(QVIEW3.`wlbEntryYear` < 1990) AND
(QVIEW2.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbCoreNumber` IS NOT NULL