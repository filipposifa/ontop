CREATE TEMPORARY TABLE viewtable6446 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'EARLY CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'EARLY CRETACEOUS' or alias1."wlbAgeAtTd" = 'EARLY CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable6447 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'JURASSIC' or (alias1."wlbAgeWithHc2" = 'JURASSIC' or (alias1."wlbAgeWithHc1" = 'JURASSIC' or alias1."wlbAgeAtTd" = 'JURASSIC')))

CREATE TEMPORARY TABLE viewtable6448 AS select distinct alias2."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias2 
where 
alias2."lsuNpdidLithoStratParent" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6449 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PLIOCENE' or (alias1."wlbAgeWithHc2" = 'LATE PLIOCENE' or (alias1."wlbAgeWithHc1" = 'LATE PLIOCENE' or alias1."wlbAgeAtTd" = 'LATE PLIOCENE')))

CREATE TEMPORARY TABLE viewtable6450 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PLEISTOCENE' or (alias1."wlbAgeWithHc2" = 'PLEISTOCENE' or (alias1."wlbAgeWithHc1" = 'PLEISTOCENE' or alias1."wlbAgeAtTd" = 'PLEISTOCENE')))

CREATE TEMPORARY TABLE viewtable6451 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIOCENE' or (alias1."wlbAgeWithHc2" = 'MIOCENE' or (alias1."wlbAgeWithHc1" = 'MIOCENE' or alias1."wlbAgeAtTd" = 'MIOCENE')))

CREATE TEMPORARY TABLE viewtable6452 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE JURASSIC' or (alias1."wlbAgeWithHc2" = 'LATE JURASSIC' or (alias1."wlbAgeWithHc1" = 'LATE JURASSIC' or alias1."wlbAgeAtTd" = 'LATE JURASSIC')))

CREATE TEMPORARY TABLE viewtable6453 AS select distinct alias0."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias0 
where 
alias0."lsuNpdidLithoStratParent" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6454 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY TRIASSIC' or (alias1."wlbAgeWithHc2" = 'EARLY TRIASSIC' or (alias1."wlbAgeWithHc1" = 'EARLY TRIASSIC' or alias1."wlbAgeAtTd" = 'EARLY TRIASSIC')))

CREATE TEMPORARY TABLE viewtable6455 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'EARLY CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'EARLY CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'EARLY CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable6456 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PALEOCENE' or (alias1."wlbAgeWithHc2" = 'LATE PALEOCENE' or (alias1."wlbAgeWithHc1" = 'LATE PALEOCENE' or alias1."wlbAgeAtTd" = 'LATE PALEOCENE')))

CREATE TEMPORARY TABLE viewtable6457 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'CRETACEOUS' or alias1."wlbAgeAtTd" = 'CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable6458 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PERMIAN' or (alias1."wlbAgeWithHc2" = 'LATE PERMIAN' or (alias1."wlbAgeWithHc1" = 'LATE PERMIAN' or alias1."wlbAgeAtTd" = 'LATE PERMIAN')))

CREATE TEMPORARY TABLE viewtable6459 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'LATE CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'LATE CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'LATE CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable6460 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PLIOCENE' or (alias1."wlbAgeWithHc2" = 'PLIOCENE' or (alias1."wlbAgeWithHc1" = 'PLIOCENE' or alias1."wlbAgeAtTd" = 'PLIOCENE')))

CREATE TEMPORARY TABLE viewtable6461 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'TRIASSIC' or (alias1."wlbAgeWithHc2" = 'TRIASSIC' or (alias1."wlbAgeWithHc1" = 'TRIASSIC' or alias1."wlbAgeAtTd" = 'TRIASSIC')))

CREATE TEMPORARY TABLE viewtable6462 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIDDLE TRIASSIC' or (alias1."wlbAgeWithHc2" = 'MIDDLE TRIASSIC' or (alias1."wlbAgeWithHc1" = 'MIDDLE TRIASSIC' or alias1."wlbAgeAtTd" = 'MIDDLE TRIASSIC')))

CREATE TEMPORARY TABLE viewtable6463 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY PERMIAN' or (alias1."wlbAgeWithHc2" = 'EARLY PERMIAN' or (alias1."wlbAgeWithHc1" = 'EARLY PERMIAN' or alias1."wlbAgeAtTd" = 'EARLY PERMIAN')))

CREATE TEMPORARY TABLE viewtable6464 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable6465 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EOCENE' or (alias1."wlbAgeWithHc2" = 'EOCENE' or (alias1."wlbAgeWithHc1" = 'EOCENE' or alias1."wlbAgeAtTd" = 'EOCENE')))

CREATE TEMPORARY TABLE viewtable6466 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CAMPANIAN' or (alias1."wlbAgeWithHc2" = 'CAMPANIAN' or (alias1."wlbAgeWithHc1" = 'CAMPANIAN' or alias1."wlbAgeAtTd" = 'CAMPANIAN')))

CREATE TEMPORARY TABLE viewtable6467 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'LATE CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'LATE CRETACEOUS' or alias1."wlbAgeAtTd" = 'LATE CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable6468 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'OLIGOCENE' or (alias1."wlbAgeWithHc2" = 'OLIGOCENE' or (alias1."wlbAgeWithHc1" = 'OLIGOCENE' or alias1."wlbAgeAtTd" = 'OLIGOCENE')))

CREATE TEMPORARY TABLE viewtable6469 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIDDLE JURASSIC' or (alias1."wlbAgeWithHc2" = 'MIDDLE JURASSIC' or (alias1."wlbAgeWithHc1" = 'MIDDLE JURASSIC' or alias1."wlbAgeAtTd" = 'MIDDLE JURASSIC')))

CREATE TEMPORARY TABLE viewtable6470 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'DANIAN' or (alias1."wlbAgeWithHc2" = 'DANIAN' or (alias1."wlbAgeWithHc1" = 'DANIAN' or alias1."wlbAgeAtTd" = 'DANIAN')))

CREATE TEMPORARY TABLE viewtable6471 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'DEVONIAN' or (alias1."wlbAgeWithHc2" = 'DEVONIAN' or (alias1."wlbAgeWithHc1" = 'DEVONIAN' or alias1."wlbAgeAtTd" = 'DEVONIAN')))

CREATE TEMPORARY TABLE viewtable6472 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PALEOCENE' or (alias1."wlbAgeWithHc2" = 'PALEOCENE' or (alias1."wlbAgeWithHc1" = 'PALEOCENE' or alias1."wlbAgeAtTd" = 'PALEOCENE')))

CREATE TEMPORARY TABLE viewtable6473 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE TRIASSIC' or (alias1."wlbAgeWithHc2" = 'LATE TRIASSIC' or (alias1."wlbAgeWithHc1" = 'LATE TRIASSIC' or alias1."wlbAgeAtTd" = 'LATE TRIASSIC')))

CREATE TEMPORARY TABLE viewtable6474 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PERMIAN' or (alias1."wlbAgeWithHc2" = 'PERMIAN' or (alias1."wlbAgeWithHc1" = 'PERMIAN' or alias1."wlbAgeAtTd" = 'PERMIAN')))

CREATE TEMPORARY TABLE viewtable6475 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY JURASSIC' or (alias1."wlbAgeWithHc2" = 'EARLY JURASSIC' or (alias1."wlbAgeWithHc1" = 'EARLY JURASSIC' or alias1."wlbAgeAtTd" = 'EARLY JURASSIC')))

CREATE TEMPORARY TABLE viewtable6476 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'SILURIAN' or (alias1."wlbAgeWithHc2" = 'SILURIAN' or (alias1."wlbAgeWithHc1" = 'SILURIAN' or alias1."wlbAgeAtTd" = 'SILURIAN')))

SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6476 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6476 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6455 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6455 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6452 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6452 qview2,
viewtable6453 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6463 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6463 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6473 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6473 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6464 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6464 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6457 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6457 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6462 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6462 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6449 qview2,
viewtable6453 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6449 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6469 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6469 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6475 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6475 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6456 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6456 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6459 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6459 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6472 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6472 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6447 qview2,
viewtable6453 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6447 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6470 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6470 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6468 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6468 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6461 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6461 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6474 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6474 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6458 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6458 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6466 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6466 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6451 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6451 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6467 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6467 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6465 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6465 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6453 qview2,
viewtable6460 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6460 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6454 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6454 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6446 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6446 qview2,
viewtable6448 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6450 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6450 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS "era"
FROM (
 (
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6448 qview2,
viewtable6471 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd"))
 
UNION
(
SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable6471 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd")
 ) 
 
 ) SUBQALIAS