SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'SILURIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'PLIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'PLEISTOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'PALEOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'OLIGOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'MIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'MIDDLE TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'MIDDLE JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE PLIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE PALEOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'LATE CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'EOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'EARLY TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'EARLY PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'EARLY JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'EARLY CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'EARLY CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'DEVONIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'DANIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc3` = 'CAMPANIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'SILURIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'PLIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'PLEISTOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'PALEOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'OLIGOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'MIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'MIDDLE TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'MIDDLE JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE PLIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE PALEOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'LATE CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'EOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'EARLY TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'EARLY PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'EARLY JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'EARLY CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'EARLY CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'DEVONIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'DANIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc2` = 'CAMPANIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'SILURIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'PLIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'PLEISTOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'PALEOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'OLIGOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'MIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'MIDDLE TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'MIDDLE JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE PLIOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE PALEOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'LATE CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'EOCENE') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'EARLY TRIASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'EARLY PERMIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'EARLY JURASSIC') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'EARLY CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'EARLY CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'DEVONIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'DANIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'CRETACEOUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'CARBONIFEROUS') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
UNION
SELECT 
   1 AS `aQuestType`, NULL AS `aLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `a`, 
   1 AS `bQuestType`, NULL AS `bLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `b`
 FROM 
`wellbore_exploration_all` QVIEW1
WHERE 
(QVIEW1.`wlbAgeWithHc1` = 'CAMPANIAN') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL