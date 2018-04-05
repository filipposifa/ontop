SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('SILURIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('SILURIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('SILURIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('SILURIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('SILURIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('SILURIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('SILURIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('SILURIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PLIOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('PLIOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('PLIOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('PLIOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PLIOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('PLIOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('PLIOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('PLIOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PLEISTOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('PLEISTOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('PLEISTOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('PLEISTOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PLEISTOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('PLEISTOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('PLEISTOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('PLEISTOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PERMIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('PERMIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('PERMIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('PERMIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PERMIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('PERMIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('PERMIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('PERMIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PALEOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('PALEOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('PALEOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('PALEOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('PALEOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('PALEOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('PALEOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('PALEOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('OLIGOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('OLIGOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('OLIGOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('OLIGOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('OLIGOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('OLIGOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('OLIGOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('OLIGOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('MIOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('MIOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('MIOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('MIOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('MIOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('MIOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('MIOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('MIOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('MIDDLE TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('MIDDLE JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('MIDDLE JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('MIDDLE JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('MIDDLE JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('MIDDLE JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('MIDDLE JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('MIDDLE JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('MIDDLE JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE PLIOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE PLIOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE PLIOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE PLIOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE PLIOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE PLIOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE PLIOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE PLIOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE PERMIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE PERMIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE PERMIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE PERMIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE PERMIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE PERMIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE PERMIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE PERMIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE PALEOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE PALEOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE PALEOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE PALEOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE PALEOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE PALEOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE PALEOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE PALEOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE CRETACEOUS' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE CRETACEOUS' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE CRETACEOUS' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE CRETACEOUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE CRETACEOUS' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE CRETACEOUS' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE CRETACEOUS' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE CRETACEOUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc3`) OR (('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc2`) OR (('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc1`) OR ('LATE CARBONIFEROUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('EOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('EOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('EOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EOCENE' = QVIEW1.`wlbAgeWithHc3`) OR (('EOCENE' = QVIEW1.`wlbAgeWithHc2`) OR (('EOCENE' = QVIEW1.`wlbAgeWithHc1`) OR ('EOCENE' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY TRIASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY TRIASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY TRIASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY TRIASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY PERMIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY PERMIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY PERMIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY PERMIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY PERMIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY PERMIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY PERMIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY PERMIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY JURASSIC' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY JURASSIC' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY JURASSIC' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY JURASSIC' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY CRETACEOUS' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY CRETACEOUS' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY CRETACEOUS' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY CRETACEOUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY CRETACEOUS' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY CRETACEOUS' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY CRETACEOUS' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY CRETACEOUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc3`) OR (('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc2`) OR (('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc1`) OR ('EARLY CARBONIFEROUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('DEVONIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('DEVONIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('DEVONIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('DEVONIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('DEVONIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('DEVONIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('DEVONIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('DEVONIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('DANIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('DANIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('DANIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('DANIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('DANIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('DANIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('DANIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('DANIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('CRETACEOUS' = QVIEW1.`wlbAgeWithHc3`) OR (('CRETACEOUS' = QVIEW1.`wlbAgeWithHc2`) OR (('CRETACEOUS' = QVIEW1.`wlbAgeWithHc1`) OR ('CRETACEOUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('CRETACEOUS' = QVIEW1.`wlbAgeWithHc3`) OR (('CRETACEOUS' = QVIEW1.`wlbAgeWithHc2`) OR (('CRETACEOUS' = QVIEW1.`wlbAgeWithHc1`) OR ('CRETACEOUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc3`) OR (('CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc2`) OR (('CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc1`) OR ('CARBONIFEROUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc3`) OR (('CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc2`) OR (('CARBONIFEROUS' = QVIEW1.`wlbAgeWithHc1`) OR ('CARBONIFEROUS' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('CAMPANIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('CAMPANIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('CAMPANIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('CAMPANIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `era`
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_formation_top` QVIEW2,
`wellbore_formation_top` QVIEW3
WHERE 
(QVIEW1.`wlbFormationAtTd` = QVIEW2.`lsuName`) AND
(('CAMPANIAN' = QVIEW1.`wlbAgeWithHc3`) OR (('CAMPANIAN' = QVIEW1.`wlbAgeWithHc2`) OR (('CAMPANIAN' = QVIEW1.`wlbAgeWithHc1`) OR ('CAMPANIAN' = QVIEW1.`wlbAgeAtTd`)))) AND
QVIEW2.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW2.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)