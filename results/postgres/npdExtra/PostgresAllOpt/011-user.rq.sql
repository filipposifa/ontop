SELECT *
FROM (
SELECT

   7 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(var0 AS VARCHAR(10485760)) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(var1 AS VARCHAR(10485760)) AS "length"
FROM (
 (
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbTotalCoreLength" as var1
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbTotalCoreLength" as var1
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbTotalCoreLength" as var1
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbTotalCoreLength" as var1
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

