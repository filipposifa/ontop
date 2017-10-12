SELECT *
FROM (
SELECT

   5 AS "NGLQuestType", NULL AS "NGLLang", CAST(var0 AS VARCHAR(10485760)) AS "NGL", 
   5 AS "conQuestType", NULL AS "conLang", CAST(var1 AS VARCHAR(10485760)) AS "con", 
   5 AS "oilQuestType", NULL AS "oilLang", CAST(var2 AS VARCHAR(10485760)) AS "oil", 
   4 AS "monthQuestType", NULL AS "monthLang", CAST(var3 AS VARCHAR(10485760)) AS "month", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(var4 AS VARCHAR(10485760)) AS "year", 
   5 AS "maxOEQuestType", NULL AS "maxOELang", CAST(var5 AS VARCHAR(10485760)) AS "maxOE", 
   5 AS "gasQuestType", NULL AS "gasLang", CAST(var6 AS VARCHAR(10485760)) AS "gas"
FROM (
 (
SELECT DISTINCT 
   qview1."prfPrdNGLNetMillSm3" as var0, 
   qview1."prfPrdCondensateNetMillSm3" as var1, 
   qview1."prfPrdOilNetMillSm3" as var2, 
   qview1."prfMonth" as var3, 
   qview1."prfYear" as var4, 
   qview1."prfPrdOeNetMillSm3" as var5, 
   qview1."prfPrdGasNetBillSm3" as var6
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
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

