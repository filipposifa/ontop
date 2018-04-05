CREATE TEMPORARY TABLE viewtable74 AS select distinct alias0."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias0 
where 
alias0."wlbNpdidWellbore" IS NOT NULL

SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
viewtable74 qview3
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30) AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
viewtable74 qview3
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30) AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
viewtable74 qview3
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30) AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "length"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
viewtable74 qview3
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbTotalCoreLength" > 30) AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore")
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

