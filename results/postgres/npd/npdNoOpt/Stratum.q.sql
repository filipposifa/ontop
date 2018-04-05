SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('TRIASSIC' = qview1."wlbAgeWithHc3") OR (('TRIASSIC' = qview1."wlbAgeWithHc2") OR (('TRIASSIC' = qview1."wlbAgeWithHc1") OR ('TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('TRIASSIC' = qview1."wlbAgeWithHc3") OR (('TRIASSIC' = qview1."wlbAgeWithHc2") OR (('TRIASSIC' = qview1."wlbAgeWithHc1") OR ('TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('SILURIAN' = qview1."wlbAgeWithHc3") OR (('SILURIAN' = qview1."wlbAgeWithHc2") OR (('SILURIAN' = qview1."wlbAgeWithHc1") OR ('SILURIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('SILURIAN' = qview1."wlbAgeWithHc3") OR (('SILURIAN' = qview1."wlbAgeWithHc2") OR (('SILURIAN' = qview1."wlbAgeWithHc1") OR ('SILURIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PLIOCENE' = qview1."wlbAgeWithHc3") OR (('PLIOCENE' = qview1."wlbAgeWithHc2") OR (('PLIOCENE' = qview1."wlbAgeWithHc1") OR ('PLIOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PLIOCENE' = qview1."wlbAgeWithHc3") OR (('PLIOCENE' = qview1."wlbAgeWithHc2") OR (('PLIOCENE' = qview1."wlbAgeWithHc1") OR ('PLIOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PLEISTOCENE' = qview1."wlbAgeWithHc3") OR (('PLEISTOCENE' = qview1."wlbAgeWithHc2") OR (('PLEISTOCENE' = qview1."wlbAgeWithHc1") OR ('PLEISTOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PLEISTOCENE' = qview1."wlbAgeWithHc3") OR (('PLEISTOCENE' = qview1."wlbAgeWithHc2") OR (('PLEISTOCENE' = qview1."wlbAgeWithHc1") OR ('PLEISTOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PERMIAN' = qview1."wlbAgeWithHc3") OR (('PERMIAN' = qview1."wlbAgeWithHc2") OR (('PERMIAN' = qview1."wlbAgeWithHc1") OR ('PERMIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PERMIAN' = qview1."wlbAgeWithHc3") OR (('PERMIAN' = qview1."wlbAgeWithHc2") OR (('PERMIAN' = qview1."wlbAgeWithHc1") OR ('PERMIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PALEOCENE' = qview1."wlbAgeWithHc3") OR (('PALEOCENE' = qview1."wlbAgeWithHc2") OR (('PALEOCENE' = qview1."wlbAgeWithHc1") OR ('PALEOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('PALEOCENE' = qview1."wlbAgeWithHc3") OR (('PALEOCENE' = qview1."wlbAgeWithHc2") OR (('PALEOCENE' = qview1."wlbAgeWithHc1") OR ('PALEOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('OLIGOCENE' = qview1."wlbAgeWithHc3") OR (('OLIGOCENE' = qview1."wlbAgeWithHc2") OR (('OLIGOCENE' = qview1."wlbAgeWithHc1") OR ('OLIGOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('OLIGOCENE' = qview1."wlbAgeWithHc3") OR (('OLIGOCENE' = qview1."wlbAgeWithHc2") OR (('OLIGOCENE' = qview1."wlbAgeWithHc1") OR ('OLIGOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('MIOCENE' = qview1."wlbAgeWithHc3") OR (('MIOCENE' = qview1."wlbAgeWithHc2") OR (('MIOCENE' = qview1."wlbAgeWithHc1") OR ('MIOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('MIOCENE' = qview1."wlbAgeWithHc3") OR (('MIOCENE' = qview1."wlbAgeWithHc2") OR (('MIOCENE' = qview1."wlbAgeWithHc1") OR ('MIOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('MIDDLE TRIASSIC' = qview1."wlbAgeWithHc3") OR (('MIDDLE TRIASSIC' = qview1."wlbAgeWithHc2") OR (('MIDDLE TRIASSIC' = qview1."wlbAgeWithHc1") OR ('MIDDLE TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('MIDDLE TRIASSIC' = qview1."wlbAgeWithHc3") OR (('MIDDLE TRIASSIC' = qview1."wlbAgeWithHc2") OR (('MIDDLE TRIASSIC' = qview1."wlbAgeWithHc1") OR ('MIDDLE TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('MIDDLE JURASSIC' = qview1."wlbAgeWithHc3") OR (('MIDDLE JURASSIC' = qview1."wlbAgeWithHc2") OR (('MIDDLE JURASSIC' = qview1."wlbAgeWithHc1") OR ('MIDDLE JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('MIDDLE JURASSIC' = qview1."wlbAgeWithHc3") OR (('MIDDLE JURASSIC' = qview1."wlbAgeWithHc2") OR (('MIDDLE JURASSIC' = qview1."wlbAgeWithHc1") OR ('MIDDLE JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE TRIASSIC' = qview1."wlbAgeWithHc3") OR (('LATE TRIASSIC' = qview1."wlbAgeWithHc2") OR (('LATE TRIASSIC' = qview1."wlbAgeWithHc1") OR ('LATE TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE TRIASSIC' = qview1."wlbAgeWithHc3") OR (('LATE TRIASSIC' = qview1."wlbAgeWithHc2") OR (('LATE TRIASSIC' = qview1."wlbAgeWithHc1") OR ('LATE TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE PLIOCENE' = qview1."wlbAgeWithHc3") OR (('LATE PLIOCENE' = qview1."wlbAgeWithHc2") OR (('LATE PLIOCENE' = qview1."wlbAgeWithHc1") OR ('LATE PLIOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE PLIOCENE' = qview1."wlbAgeWithHc3") OR (('LATE PLIOCENE' = qview1."wlbAgeWithHc2") OR (('LATE PLIOCENE' = qview1."wlbAgeWithHc1") OR ('LATE PLIOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE PERMIAN' = qview1."wlbAgeWithHc3") OR (('LATE PERMIAN' = qview1."wlbAgeWithHc2") OR (('LATE PERMIAN' = qview1."wlbAgeWithHc1") OR ('LATE PERMIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE PERMIAN' = qview1."wlbAgeWithHc3") OR (('LATE PERMIAN' = qview1."wlbAgeWithHc2") OR (('LATE PERMIAN' = qview1."wlbAgeWithHc1") OR ('LATE PERMIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE PALEOCENE' = qview1."wlbAgeWithHc3") OR (('LATE PALEOCENE' = qview1."wlbAgeWithHc2") OR (('LATE PALEOCENE' = qview1."wlbAgeWithHc1") OR ('LATE PALEOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE PALEOCENE' = qview1."wlbAgeWithHc3") OR (('LATE PALEOCENE' = qview1."wlbAgeWithHc2") OR (('LATE PALEOCENE' = qview1."wlbAgeWithHc1") OR ('LATE PALEOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE JURASSIC' = qview1."wlbAgeWithHc3") OR (('LATE JURASSIC' = qview1."wlbAgeWithHc2") OR (('LATE JURASSIC' = qview1."wlbAgeWithHc1") OR ('LATE JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE JURASSIC' = qview1."wlbAgeWithHc3") OR (('LATE JURASSIC' = qview1."wlbAgeWithHc2") OR (('LATE JURASSIC' = qview1."wlbAgeWithHc1") OR ('LATE JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE CRETACEOUS' = qview1."wlbAgeWithHc3") OR (('LATE CRETACEOUS' = qview1."wlbAgeWithHc2") OR (('LATE CRETACEOUS' = qview1."wlbAgeWithHc1") OR ('LATE CRETACEOUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE CRETACEOUS' = qview1."wlbAgeWithHc3") OR (('LATE CRETACEOUS' = qview1."wlbAgeWithHc2") OR (('LATE CRETACEOUS' = qview1."wlbAgeWithHc1") OR ('LATE CRETACEOUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE CARBONIFEROUS' = qview1."wlbAgeWithHc3") OR (('LATE CARBONIFEROUS' = qview1."wlbAgeWithHc2") OR (('LATE CARBONIFEROUS' = qview1."wlbAgeWithHc1") OR ('LATE CARBONIFEROUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('LATE CARBONIFEROUS' = qview1."wlbAgeWithHc3") OR (('LATE CARBONIFEROUS' = qview1."wlbAgeWithHc2") OR (('LATE CARBONIFEROUS' = qview1."wlbAgeWithHc1") OR ('LATE CARBONIFEROUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('JURASSIC' = qview1."wlbAgeWithHc3") OR (('JURASSIC' = qview1."wlbAgeWithHc2") OR (('JURASSIC' = qview1."wlbAgeWithHc1") OR ('JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('JURASSIC' = qview1."wlbAgeWithHc3") OR (('JURASSIC' = qview1."wlbAgeWithHc2") OR (('JURASSIC' = qview1."wlbAgeWithHc1") OR ('JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EOCENE' = qview1."wlbAgeWithHc3") OR (('EOCENE' = qview1."wlbAgeWithHc2") OR (('EOCENE' = qview1."wlbAgeWithHc1") OR ('EOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EOCENE' = qview1."wlbAgeWithHc3") OR (('EOCENE' = qview1."wlbAgeWithHc2") OR (('EOCENE' = qview1."wlbAgeWithHc1") OR ('EOCENE' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY TRIASSIC' = qview1."wlbAgeWithHc3") OR (('EARLY TRIASSIC' = qview1."wlbAgeWithHc2") OR (('EARLY TRIASSIC' = qview1."wlbAgeWithHc1") OR ('EARLY TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY TRIASSIC' = qview1."wlbAgeWithHc3") OR (('EARLY TRIASSIC' = qview1."wlbAgeWithHc2") OR (('EARLY TRIASSIC' = qview1."wlbAgeWithHc1") OR ('EARLY TRIASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY PERMIAN' = qview1."wlbAgeWithHc3") OR (('EARLY PERMIAN' = qview1."wlbAgeWithHc2") OR (('EARLY PERMIAN' = qview1."wlbAgeWithHc1") OR ('EARLY PERMIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY PERMIAN' = qview1."wlbAgeWithHc3") OR (('EARLY PERMIAN' = qview1."wlbAgeWithHc2") OR (('EARLY PERMIAN' = qview1."wlbAgeWithHc1") OR ('EARLY PERMIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY JURASSIC' = qview1."wlbAgeWithHc3") OR (('EARLY JURASSIC' = qview1."wlbAgeWithHc2") OR (('EARLY JURASSIC' = qview1."wlbAgeWithHc1") OR ('EARLY JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY JURASSIC' = qview1."wlbAgeWithHc3") OR (('EARLY JURASSIC' = qview1."wlbAgeWithHc2") OR (('EARLY JURASSIC' = qview1."wlbAgeWithHc1") OR ('EARLY JURASSIC' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY CRETACEOUS' = qview1."wlbAgeWithHc3") OR (('EARLY CRETACEOUS' = qview1."wlbAgeWithHc2") OR (('EARLY CRETACEOUS' = qview1."wlbAgeWithHc1") OR ('EARLY CRETACEOUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY CRETACEOUS' = qview1."wlbAgeWithHc3") OR (('EARLY CRETACEOUS' = qview1."wlbAgeWithHc2") OR (('EARLY CRETACEOUS' = qview1."wlbAgeWithHc1") OR ('EARLY CRETACEOUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY CARBONIFEROUS' = qview1."wlbAgeWithHc3") OR (('EARLY CARBONIFEROUS' = qview1."wlbAgeWithHc2") OR (('EARLY CARBONIFEROUS' = qview1."wlbAgeWithHc1") OR ('EARLY CARBONIFEROUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('EARLY CARBONIFEROUS' = qview1."wlbAgeWithHc3") OR (('EARLY CARBONIFEROUS' = qview1."wlbAgeWithHc2") OR (('EARLY CARBONIFEROUS' = qview1."wlbAgeWithHc1") OR ('EARLY CARBONIFEROUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('DEVONIAN' = qview1."wlbAgeWithHc3") OR (('DEVONIAN' = qview1."wlbAgeWithHc2") OR (('DEVONIAN' = qview1."wlbAgeWithHc1") OR ('DEVONIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('DEVONIAN' = qview1."wlbAgeWithHc3") OR (('DEVONIAN' = qview1."wlbAgeWithHc2") OR (('DEVONIAN' = qview1."wlbAgeWithHc1") OR ('DEVONIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('DANIAN' = qview1."wlbAgeWithHc3") OR (('DANIAN' = qview1."wlbAgeWithHc2") OR (('DANIAN' = qview1."wlbAgeWithHc1") OR ('DANIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('DANIAN' = qview1."wlbAgeWithHc3") OR (('DANIAN' = qview1."wlbAgeWithHc2") OR (('DANIAN' = qview1."wlbAgeWithHc1") OR ('DANIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('CRETACEOUS' = qview1."wlbAgeWithHc3") OR (('CRETACEOUS' = qview1."wlbAgeWithHc2") OR (('CRETACEOUS' = qview1."wlbAgeWithHc1") OR ('CRETACEOUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('CRETACEOUS' = qview1."wlbAgeWithHc3") OR (('CRETACEOUS' = qview1."wlbAgeWithHc2") OR (('CRETACEOUS' = qview1."wlbAgeWithHc1") OR ('CRETACEOUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('CARBONIFEROUS' = qview1."wlbAgeWithHc3") OR (('CARBONIFEROUS' = qview1."wlbAgeWithHc2") OR (('CARBONIFEROUS' = qview1."wlbAgeWithHc1") OR ('CARBONIFEROUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('CARBONIFEROUS' = qview1."wlbAgeWithHc3") OR (('CARBONIFEROUS' = qview1."wlbAgeWithHc2") OR (('CARBONIFEROUS' = qview1."wlbAgeWithHc1") OR ('CARBONIFEROUS' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('CAMPANIAN' = qview1."wlbAgeWithHc3") OR (('CAMPANIAN' = qview1."wlbAgeWithHc2") OR (('CAMPANIAN' = qview1."wlbAgeWithHc1") OR ('CAMPANIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview2."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS "era"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_formation_top" qview2,
"public"."wellbore_formation_top" qview3
WHERE 
(qview1."wlbFormationAtTd" = qview2."lsuName") AND
(('CAMPANIAN' = qview1."wlbAgeWithHc3") OR (('CAMPANIAN' = qview1."wlbAgeWithHc2") OR (('CAMPANIAN' = qview1."wlbAgeWithHc1") OR ('CAMPANIAN' = qview1."wlbAgeAtTd")))) AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview2."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")