SELECT *
FROM (
SELECT

   0 AS "NGLQuestType", NULL AS "NGLLang", CAST(NULL AS VARCHAR(10485760)) AS "NGL", 
   0 AS "oilQuestType", NULL AS "oilLang", CAST(NULL AS VARCHAR(10485760)) AS "oil", 
   0 AS "conQuestType", NULL AS "conLang", CAST(NULL AS VARCHAR(10485760)) AS "con", 
   7 AS "fieldQuestType", NULL AS "fieldLang", CAST(var0 AS VARCHAR(10485760)) AS "field", 
   0 AS "OEQuestType", NULL AS "OELang", CAST(NULL AS VARCHAR(10485760)) AS "OE", 
   0 AS "gasQuestType", NULL AS "gasLang", CAST(NULL AS VARCHAR(10485760)) AS "gas"
FROM (
 (
SELECT DISTINCT 
   qview1."fldName" as var0
 FROM 
"public"."field" qview1
WHERE 
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldName" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."field"

