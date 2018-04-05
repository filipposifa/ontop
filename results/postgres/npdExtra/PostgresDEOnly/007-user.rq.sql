SELECT *
FROM (
SELECT DISTINCT 
   0 AS "NGLQuestType", NULL AS "NGLLang", CAST(NULL AS VARCHAR(10485760)) AS "NGL", 
   0 AS "oilQuestType", NULL AS "oilLang", CAST(NULL AS VARCHAR(10485760)) AS "oil", 
   0 AS "conQuestType", NULL AS "conLang", CAST(NULL AS VARCHAR(10485760)) AS "con", 
   7 AS "fieldQuestType", NULL AS "fieldLang", qview1."fldName" AS "field", 
   0 AS "OEQuestType", NULL AS "OELang", CAST(NULL AS VARCHAR(10485760)) AS "OE", 
   0 AS "gasQuestType", NULL AS "gasLang", CAST(NULL AS VARCHAR(10485760)) AS "gas"
 FROM 
"public"."field" qview1
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW."field"

