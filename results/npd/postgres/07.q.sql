SELECT *
FROM (
SELECT DISTINCT 
   5 AS "NGLQuestType", NULL AS "NGLLang", CAST(qview1."prfPrdNGLNetMillSm3" AS VARCHAR(10485760)) AS "NGL", 
   5 AS "conQuestType", NULL AS "conLang", CAST(qview1."prfPrdCondensateNetMillSm3" AS VARCHAR(10485760)) AS "con", 
   5 AS "oilQuestType", NULL AS "oilLang", CAST(qview1."prfPrdOilNetMillSm3" AS VARCHAR(10485760)) AS "oil", 
   4 AS "monthQuestType", NULL AS "monthLang", CAST(qview1."prfMonth" AS VARCHAR(10485760)) AS "month", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."prfYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "maxOEQuestType", NULL AS "maxOELang", CAST(qview1."prfPrdOeNetMillSm3" AS VARCHAR(10485760)) AS "maxOE", 
   5 AS "gasQuestType", NULL AS "gasLang", CAST(qview1."prfPrdGasNetBillSm3" AS VARCHAR(10485760)) AS "gas"
 FROM 
"public"."field_production_monthly" qview1
WHERE 
qview1."prfPrdGasNetBillSm3" IS NOT NULL AND
qview1."prfNpdidInformationCarrier" IS NOT NULL AND
qview1."prfYear" IS NOT NULL AND
qview1."prfMonth" IS NOT NULL AND
qview1."prfPrdOeNetMillSm3" IS NOT NULL AND
qview1."prfPrdCondensateNetMillSm3" IS NOT NULL AND
qview1."prfPrdOilNetMillSm3" IS NOT NULL AND
qview1."prfPrdNGLNetMillSm3" IS NOT NULL AND
(qview1."prfPrdGasNetBillSm3" < 100)
) SUB_QVIEW

