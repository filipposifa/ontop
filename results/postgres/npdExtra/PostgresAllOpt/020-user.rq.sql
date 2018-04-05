SELECT *
FROM (
SELECT

   7 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(var0 AS VARCHAR(10485760)) AS "wellbore"
FROM (
 (
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."field" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."discovery" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore")
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

