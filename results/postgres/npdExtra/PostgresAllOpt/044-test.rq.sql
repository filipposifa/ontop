SELECT

   7 AS "fieldnameQuestType", NULL AS "fieldnameLang", CAST(var0 AS VARCHAR(10485760)) AS "fieldname", 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore"
FROM (
 (
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'LATE PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'LATE PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'OLIGOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'EOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'LATE PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'EOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'DANIAN') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'DANIAN') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'DANIAN') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'EOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'DANIAN') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'EOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'EOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'DANIAN') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'OLIGOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'LATE PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'DANIAN') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'OLIGOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'LATE PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'OLIGOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'OLIGOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'OLIGOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'LATE PALEOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbEntryYear" IS NOT NULL AND
(qview3."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fldName" as var0, 
   qview2."wlbNpdidWellbore" as var1
 FROM 
"public"."field" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL AND
(qview2."wlbAgeAtTd" = 'EOCENE') AND
(qview1."fldNpdidField" = qview2."fldNpdidField") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbEntryYear" IS NOT NULL AND
(qview2."wlbEntryYear" < 1990) AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL
 ) 
 
 ) SUBQALIAS