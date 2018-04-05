SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview2."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbTotalCoreLength" > 30)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview2."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbTotalCoreLength" > 30)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview2."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbTotalCoreLength" > 30)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview2."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_npdid_overview" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbTotalCoreLength" > 30)
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

