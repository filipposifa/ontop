CREATE TEMPORARY TABLE viewtable681 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'EARLY CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'EARLY CRETACEOUS' or alias1."wlbAgeAtTd" = 'EARLY CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable682 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'JURASSIC' or (alias1."wlbAgeWithHc2" = 'JURASSIC' or (alias1."wlbAgeWithHc1" = 'JURASSIC' or alias1."wlbAgeAtTd" = 'JURASSIC')))

CREATE TEMPORARY TABLE viewtable683 AS select distinct alias2."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias2 
where 
alias2."lsuNpdidLithoStratParent" IS NOT NULL and 
alias2."lsuNpdidLithoStratParent" IS NOT NULL

CREATE TEMPORARY TABLE viewtable684 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PLIOCENE' or (alias1."wlbAgeWithHc2" = 'LATE PLIOCENE' or (alias1."wlbAgeWithHc1" = 'LATE PLIOCENE' or alias1."wlbAgeAtTd" = 'LATE PLIOCENE')))

CREATE TEMPORARY TABLE viewtable685 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PLEISTOCENE' or (alias1."wlbAgeWithHc2" = 'PLEISTOCENE' or (alias1."wlbAgeWithHc1" = 'PLEISTOCENE' or alias1."wlbAgeAtTd" = 'PLEISTOCENE')))

CREATE TEMPORARY TABLE viewtable686 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIOCENE' or (alias1."wlbAgeWithHc2" = 'MIOCENE' or (alias1."wlbAgeWithHc1" = 'MIOCENE' or alias1."wlbAgeAtTd" = 'MIOCENE')))

CREATE TEMPORARY TABLE viewtable687 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE JURASSIC' or (alias1."wlbAgeWithHc2" = 'LATE JURASSIC' or (alias1."wlbAgeWithHc1" = 'LATE JURASSIC' or alias1."wlbAgeAtTd" = 'LATE JURASSIC')))

CREATE TEMPORARY TABLE viewtable688 AS select distinct alias0."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias0

CREATE TEMPORARY TABLE viewtable689 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY TRIASSIC' or (alias1."wlbAgeWithHc2" = 'EARLY TRIASSIC' or (alias1."wlbAgeWithHc1" = 'EARLY TRIASSIC' or alias1."wlbAgeAtTd" = 'EARLY TRIASSIC')))

CREATE TEMPORARY TABLE viewtable690 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'EARLY CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'EARLY CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'EARLY CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable691 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PALEOCENE' or (alias1."wlbAgeWithHc2" = 'LATE PALEOCENE' or (alias1."wlbAgeWithHc1" = 'LATE PALEOCENE' or alias1."wlbAgeAtTd" = 'LATE PALEOCENE')))

CREATE TEMPORARY TABLE viewtable692 AS select distinct alias2."lsuNpdidLithoStrat" as "lsuNpdidLithoStrat" from 
"public"."wellbore_formation_top" alias2 
where 
alias2."lsuNpdidLithoStrat" IS NOT NULL and 
alias2."lsuNpdidLithoStrat" IS NOT NULL

CREATE TEMPORARY TABLE viewtable693 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'CRETACEOUS' or alias1."wlbAgeAtTd" = 'CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable694 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE PERMIAN' or (alias1."wlbAgeWithHc2" = 'LATE PERMIAN' or (alias1."wlbAgeWithHc1" = 'LATE PERMIAN' or alias1."wlbAgeAtTd" = 'LATE PERMIAN')))

CREATE TEMPORARY TABLE viewtable695 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'LATE CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'LATE CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'LATE CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable696 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PLIOCENE' or (alias1."wlbAgeWithHc2" = 'PLIOCENE' or (alias1."wlbAgeWithHc1" = 'PLIOCENE' or alias1."wlbAgeAtTd" = 'PLIOCENE')))

CREATE TEMPORARY TABLE viewtable697 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'TRIASSIC' or (alias1."wlbAgeWithHc2" = 'TRIASSIC' or (alias1."wlbAgeWithHc1" = 'TRIASSIC' or alias1."wlbAgeAtTd" = 'TRIASSIC')))

CREATE TEMPORARY TABLE viewtable698 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIDDLE TRIASSIC' or (alias1."wlbAgeWithHc2" = 'MIDDLE TRIASSIC' or (alias1."wlbAgeWithHc1" = 'MIDDLE TRIASSIC' or alias1."wlbAgeAtTd" = 'MIDDLE TRIASSIC')))

CREATE TEMPORARY TABLE viewtable699 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY PERMIAN' or (alias1."wlbAgeWithHc2" = 'EARLY PERMIAN' or (alias1."wlbAgeWithHc1" = 'EARLY PERMIAN' or alias1."wlbAgeAtTd" = 'EARLY PERMIAN')))

CREATE TEMPORARY TABLE viewtable700 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CARBONIFEROUS' or (alias1."wlbAgeWithHc2" = 'CARBONIFEROUS' or (alias1."wlbAgeWithHc1" = 'CARBONIFEROUS' or alias1."wlbAgeAtTd" = 'CARBONIFEROUS')))

CREATE TEMPORARY TABLE viewtable701 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EOCENE' or (alias1."wlbAgeWithHc2" = 'EOCENE' or (alias1."wlbAgeWithHc1" = 'EOCENE' or alias1."wlbAgeAtTd" = 'EOCENE')))

CREATE TEMPORARY TABLE viewtable702 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'CAMPANIAN' or (alias1."wlbAgeWithHc2" = 'CAMPANIAN' or (alias1."wlbAgeWithHc1" = 'CAMPANIAN' or alias1."wlbAgeAtTd" = 'CAMPANIAN')))

CREATE TEMPORARY TABLE viewtable703 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE CRETACEOUS' or (alias1."wlbAgeWithHc2" = 'LATE CRETACEOUS' or (alias1."wlbAgeWithHc1" = 'LATE CRETACEOUS' or alias1."wlbAgeAtTd" = 'LATE CRETACEOUS')))

CREATE TEMPORARY TABLE viewtable704 AS select distinct alias0."lsuNpdidLithoStrat" as "lsuNpdidLithoStrat" from 
"public"."wellbore_formation_top" alias0

CREATE TEMPORARY TABLE viewtable705 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'OLIGOCENE' or (alias1."wlbAgeWithHc2" = 'OLIGOCENE' or (alias1."wlbAgeWithHc1" = 'OLIGOCENE' or alias1."wlbAgeAtTd" = 'OLIGOCENE')))

CREATE TEMPORARY TABLE viewtable706 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'MIDDLE JURASSIC' or (alias1."wlbAgeWithHc2" = 'MIDDLE JURASSIC' or (alias1."wlbAgeWithHc1" = 'MIDDLE JURASSIC' or alias1."wlbAgeAtTd" = 'MIDDLE JURASSIC')))

CREATE TEMPORARY TABLE viewtable707 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'DANIAN' or (alias1."wlbAgeWithHc2" = 'DANIAN' or (alias1."wlbAgeWithHc1" = 'DANIAN' or alias1."wlbAgeAtTd" = 'DANIAN')))

CREATE TEMPORARY TABLE viewtable708 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'DEVONIAN' or (alias1."wlbAgeWithHc2" = 'DEVONIAN' or (alias1."wlbAgeWithHc1" = 'DEVONIAN' or alias1."wlbAgeAtTd" = 'DEVONIAN')))

CREATE TEMPORARY TABLE viewtable709 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PALEOCENE' or (alias1."wlbAgeWithHc2" = 'PALEOCENE' or (alias1."wlbAgeWithHc1" = 'PALEOCENE' or alias1."wlbAgeAtTd" = 'PALEOCENE')))

CREATE TEMPORARY TABLE viewtable710 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'LATE TRIASSIC' or (alias1."wlbAgeWithHc2" = 'LATE TRIASSIC' or (alias1."wlbAgeWithHc1" = 'LATE TRIASSIC' or alias1."wlbAgeAtTd" = 'LATE TRIASSIC')))

CREATE TEMPORARY TABLE viewtable711 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'PERMIAN' or (alias1."wlbAgeWithHc2" = 'PERMIAN' or (alias1."wlbAgeWithHc1" = 'PERMIAN' or alias1."wlbAgeAtTd" = 'PERMIAN')))

CREATE TEMPORARY TABLE viewtable712 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'EARLY JURASSIC' or (alias1."wlbAgeWithHc2" = 'EARLY JURASSIC' or (alias1."wlbAgeWithHc1" = 'EARLY JURASSIC' or alias1."wlbAgeAtTd" = 'EARLY JURASSIC')))

CREATE TEMPORARY TABLE viewtable713 AS select distinct alias1."wlbFormationAtTd" as "wlbFormationAtTd" from 
"public"."wellbore_exploration_all" alias1 
where 
(alias1."wlbAgeWithHc3" = 'SILURIAN' or (alias1."wlbAgeWithHc2" = 'SILURIAN' or (alias1."wlbAgeWithHc1" = 'SILURIAN' or alias1."wlbAgeAtTd" = 'SILURIAN')))

SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable688 qview2,
viewtable697 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable697 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable713 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable713 qview3
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
viewtable688 qview2,
viewtable696 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable696 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable685 qview2,
viewtable688 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable685 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable711 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable711 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable709 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable709 qview3
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
viewtable688 qview2,
viewtable705 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable704 qview2,
viewtable705 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable686 qview3
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
viewtable686 qview2,
viewtable692 qview3
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
viewtable688 qview2,
viewtable698 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable698 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable706 qview3
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
viewtable704 qview2,
viewtable706 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable710 qview3
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
viewtable692 qview2,
viewtable710 qview3
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
viewtable684 qview2,
viewtable688 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable684 qview2,
viewtable692 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable688 qview2,
viewtable694 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable694 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable691 qview3
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
viewtable691 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable687 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable687 qview2,
viewtable692 qview3
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
viewtable688 qview2,
viewtable703 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable703 qview3
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
viewtable683 qview2,
viewtable695 qview3
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
viewtable695 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable682 qview2,
viewtable688 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable682 qview2,
viewtable692 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable701 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable701 qview3
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
viewtable683 qview2,
viewtable689 qview3
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
viewtable689 qview2,
viewtable692 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable688 qview2,
viewtable699 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable699 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable688 qview2,
viewtable712 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable704 qview2,
viewtable712 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable681 qview2,
viewtable683 qview3
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
viewtable681 qview2,
viewtable704 qview3
WHERE 
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStrat")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable690 qview3
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
viewtable690 qview2,
viewtable692 qview3
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
viewtable683 qview2,
viewtable708 qview3
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
viewtable704 qview2,
viewtable708 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable688 qview2,
viewtable707 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable704 qview2,
viewtable707 qview3
WHERE 
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable693 qview3
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
viewtable692 qview2,
viewtable693 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable683 qview2,
viewtable700 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable700 qview3
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
viewtable683 qview2,
viewtable702 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")
UNION
SELECT 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."lsuNpdidLithoStrat" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u", 
   1 AS "eraQuestType", NULL AS "eraLang", 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS "era"
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable692 qview2,
viewtable702 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat") AND
(qview1."lsuName" = qview3."wlbFormationAtTd")