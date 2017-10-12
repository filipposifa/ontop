SELECT *
FROM (
SELECT

   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."wlbCoreNumber" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS "wc"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."strat_litho_wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."strat_litho_wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."strat_litho_wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."strat_litho_wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wlbWell" as var1, 
   qview1."wlbNpdidWellbore" as var2, 
   qview2."lsuNpdidLithoStrat" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."strat_litho_wellbore_core" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."lsuNpdidLithoStrat" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

