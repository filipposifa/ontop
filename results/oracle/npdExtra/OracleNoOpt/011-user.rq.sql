SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", QVIEW3."WLBWELLBORENAME" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW2."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length"
 FROM 
"NPD"."WELLBORE_CORE" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBWELLBORENAME" IS NOT NULL AND
(QVIEW2."WLBTOTALCORELENGTH" > 30)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", QVIEW3."WLBWELLBORENAME" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW2."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length"
 FROM 
"NPD"."WELLBORE_CORE" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBWELLBORENAME" IS NOT NULL AND
(QVIEW2."WLBTOTALCORELENGTH" > 30)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", QVIEW3."WLBWELLBORENAME" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW2."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length"
 FROM 
"NPD"."WELLBORE_CORE" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_SHALLOW_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBWELLBORENAME" IS NOT NULL AND
(QVIEW2."WLBTOTALCORELENGTH" > 30)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", QVIEW3."WLBWELLBORENAME" AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW2."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length"
 FROM 
"NPD"."WELLBORE_CORE" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBWELLBORENAME" IS NOT NULL AND
(QVIEW2."WLBTOTALCORELENGTH" > 30)
) SUB_QVIEW

ORDER BY SUB_QVIEW."wellbore"