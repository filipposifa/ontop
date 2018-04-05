CREATE TEMPORARY TABLE viewtable7966 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'EARLY CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'EARLY CRETACEOUS' or alias1."wlbAgeAtTd" = 'EARLY CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable7967 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'JURASSIC' or (alias1."wlbAgeWithHc2" = 'JURASSIC' or (alias1."wlbAgeWithHc1" = 'JURASSIC' or alias1."wlbAgeAtTd" = 'JURASSIC')))

CREATE TEMPORARY TABLE viewtable7968 AS select distinct alias0."lsuNpdidLithoStrat" as "lsuNpdidLithoStrat" from 
"public"."wellbore_formation_top" alias0 
where 
alias0."lsuNpdidLithoStrat" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7969 AS select distinct alias2."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias2 
where 
alias2."lsuNpdidLithoStratParent" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7970 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PLIOCENE' or (alias1."wlbAgeWithHc2" = 'LATE PLIOCENE' or (alias1."wlbAgeWithHc1" = 'LATE PLIOCENE' or alias1."wlbAgeAtTd" = 'LATE PLIOCENE')))

CREATE TEMPORARY TABLE viewtable7971 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PLEISTOCENE' or (alias1."wlbAgeWithHc2" = 'PLEISTOCENE' or (alias1."wlbAgeWithHc1" = 'PLEISTOCENE' or alias1."wlbAgeAtTd" = 'PLEISTOCENE')))

CREATE TEMPORARY TABLE viewtable7972 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIOCENE' or (alias1."wlbAgeWithHc2" = 'MIOCENE' or (alias1."wlbAgeWithHc1" = 'MIOCENE' or alias1."wlbAgeAtTd" = 'MIOCENE')))

CREATE TEMPORARY TABLE viewtable7973 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE JURASSIC' or (alias1."wlbAgeWithHc2" = 'LATE JURASSIC' or (alias1."wlbAgeWithHc1" = 'LATE JURASSIC' or alias1."wlbAgeAtTd" = 'LATE JURASSIC')))

CREATE TEMPORARY TABLE viewtable7974 AS select distinct alias0."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias0 
where 
alias0."lsuNpdidLithoStratParent" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7975 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY TRIASSIC' or (alias1."wlbAgeWithHc2" = 'EARLY TRIASSIC' or (alias1."wlbAgeWithHc1" = 'EARLY TRIASSIC' or alias1."wlbAgeAtTd" = 'EARLY TRIASSIC')))

CREATE TEMPORARY TABLE viewtable7976 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'EARLY CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'EARLY CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'EARLY CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable7977 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PALEOCENE' or (alias1."wlbAgeWithHc2" = 'LATE PALEOCENE' or (alias1."wlbAgeWithHc1" = 'LATE PALEOCENE' or alias1."wlbAgeAtTd" = 'LATE PALEOCENE')))

CREATE TEMPORARY TABLE viewtable7978 AS select distinct alias2."lsuNpdidLithoStrat" as "lsuNpdidLithoStrat" from 
"public"."wellbore_formation_top" alias2 
where 
alias2."lsuNpdidLithoStrat" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7979 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'CRETACEOUS' or alias1."wlbAgeAtTd" = 'CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable7980 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PERMIAN' or (alias1."wlbAgeWithHc2" = 'LATE PERMIAN' or (alias1."wlbAgeWithHc1" = 'LATE PERMIAN' or alias1."wlbAgeAtTd" = 'LATE PERMIAN')))

CREATE TEMPORARY TABLE viewtable7981 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'LATE CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'LATE CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'LATE CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable7982 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PLIOCENE' or (alias1."wlbAgeWithHc2" = 'PLIOCENE' or (alias1."wlbAgeWithHc1" = 'PLIOCENE' or alias1."wlbAgeAtTd" = 'PLIOCENE')))

CREATE TEMPORARY TABLE viewtable7983 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'TRIASSIC' or (alias1."wlbAgeWithHc2" = 'TRIASSIC' or (alias1."wlbAgeWithHc1" = 'TRIASSIC' or alias1."wlbAgeAtTd" = 'TRIASSIC')))

CREATE TEMPORARY TABLE viewtable7984 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIDDLE TRIASSIC' or (alias1."wlbAgeWithHc2" = 'MIDDLE TRIASSIC' or (alias1."wlbAgeWithHc1" = 'MIDDLE TRIASSIC' or alias1."wlbAgeAtTd" = 'MIDDLE TRIASSIC')))

CREATE TEMPORARY TABLE viewtable7985 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY PERMIAN' or (alias1."wlbAgeWithHc2" = 'EARLY PERMIAN' or (alias1."wlbAgeWithHc1" = 'EARLY PERMIAN' or alias1."wlbAgeAtTd" = 'EARLY PERMIAN')))

CREATE TEMPORARY TABLE viewtable7986 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable7987 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EOCENE' or (alias1."wlbAgeWithHc2" = 'EOCENE' or (alias1."wlbAgeWithHc1" = 'EOCENE' or alias1."wlbAgeAtTd" = 'EOCENE')))

CREATE TEMPORARY TABLE viewtable7988 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CAMPANIAN' or (alias1."wlbAgeWithHc2" = 'CAMPANIAN' or (alias1."wlbAgeWithHc1" = 'CAMPANIAN' or alias1."wlbAgeAtTd" = 'CAMPANIAN')))

CREATE TEMPORARY TABLE viewtable7989 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'LATE CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'LATE CRETACEOUS' or alias1."wlbAgeAtTd" = 'LATE CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable7990 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'OLIGOCENE' or (alias1."wlbAgeWithHc2" = 'OLIGOCENE' or (alias1."wlbAgeWithHc1" = 'OLIGOCENE' or alias1."wlbAgeAtTd" = 'OLIGOCENE')))

CREATE TEMPORARY TABLE viewtable7991 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIDDLE JURASSIC' or (alias1."wlbAgeWithHc2" = 'MIDDLE JURASSIC' or (alias1."wlbAgeWithHc1" = 'MIDDLE JURASSIC' or alias1."wlbAgeAtTd" = 'MIDDLE JURASSIC')))

CREATE TEMPORARY TABLE viewtable7992 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'DANIAN' or (alias1."wlbAgeWithHc2" = 'DANIAN' or (alias1."wlbAgeWithHc1" = 'DANIAN' or alias1."wlbAgeAtTd" = 'DANIAN')))

CREATE TEMPORARY TABLE viewtable7993 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'DEVONIAN' or (alias1."wlbAgeWithHc2" = 'DEVONIAN' or (alias1."wlbAgeWithHc1" = 'DEVONIAN' or alias1."wlbAgeAtTd" = 'DEVONIAN')))

CREATE TEMPORARY TABLE viewtable7994 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PALEOCENE' or (alias1."wlbAgeWithHc2" = 'PALEOCENE' or (alias1."wlbAgeWithHc1" = 'PALEOCENE' or alias1."wlbAgeAtTd" = 'PALEOCENE')))

CREATE TEMPORARY TABLE viewtable7995 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE TRIASSIC' or (alias1."wlbAgeWithHc2" = 'LATE TRIASSIC' or (alias1."wlbAgeWithHc1" = 'LATE TRIASSIC' or alias1."wlbAgeAtTd" = 'LATE TRIASSIC')))

CREATE TEMPORARY TABLE viewtable7996 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PERMIAN' or (alias1."wlbAgeWithHc2" = 'PERMIAN' or (alias1."wlbAgeWithHc1" = 'PERMIAN' or alias1."wlbAgeAtTd" = 'PERMIAN')))

CREATE TEMPORARY TABLE viewtable7997 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY JURASSIC' or (alias1."wlbAgeWithHc2" = 'EARLY JURASSIC' or (alias1."wlbAgeWithHc1" = 'EARLY JURASSIC' or alias1."wlbAgeAtTd" = 'EARLY JURASSIC')))

CREATE TEMPORARY TABLE viewtable7998 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'SILURIAN' or (alias1."wlbAgeWithHc2" = 'SILURIAN' or (alias1."wlbAgeWithHc1" = 'SILURIAN' or alias1."wlbAgeAtTd" = 'SILURIAN')))

SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7983 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7983 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7998 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7998 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7982 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7982 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7971 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7971 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7996 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7996 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7994 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7994 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7990 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7990 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7972 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7972 qview2,
viewtable7978 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7984 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7984 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7991 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7991 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7995 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7995 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7970 qview2,
viewtable7974 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7970 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7980 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7980 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7977 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7977 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7973 qview2,
viewtable7974 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7973 qview2,
viewtable7978 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7989 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7989 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7981 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7981 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7967 qview2,
viewtable7974 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7967 qview2,
viewtable7968 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7987 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7987 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7975 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7975 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7985 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7985 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7997 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7997 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7966 qview2,
viewtable7969 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7966 qview2,
viewtable7978 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7976 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7976 qview2,
viewtable7978 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7993 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7993 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7992 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7992 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7969 qview2,
viewtable7979 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7979 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7986 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7978 qview2,
viewtable7986 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7974 qview2,
viewtable7988 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable7968 qview2,
viewtable7988 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")