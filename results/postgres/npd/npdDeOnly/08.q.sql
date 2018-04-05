SELECT 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."prfYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "gQuestType", NULL AS "gLang", CAST(qview1."prfPrdGasNetBillSm3" AS VARCHAR(10485760)) AS "g", 
   4 AS "mQuestType", NULL AS "mLang", CAST(qview1."prfMonth" AS VARCHAR(10485760)) AS "m", 
   5 AS "oQuestType", NULL AS "oLang", CAST(qview1."prfPrdOilNetMillSm3" AS VARCHAR(10485760)) AS "o"
 FROM 
"public"."field_production_monthly" qview1
WHERE 
qview1."prfNpdidInformationCarrier" IS NOT NULL AND
qview1."prfYear" IS NOT NULL AND
qview1."prfMonth" IS NOT NULL AND
qview1."prfPrdOilNetMillSm3" IS NOT NULL AND
qview1."prfPrdGasNetBillSm3" IS NOT NULL AND
(qview1."prfYear" > 1999) AND
((qview1."prfMonth" >= 1) AND (qview1."prfMonth" <= 6))
UNION
SELECT 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."prfYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "gQuestType", NULL AS "gLang", CAST(qview1."prfPrdGasNetBillSm3" AS VARCHAR(10485760)) AS "g", 
   4 AS "mQuestType", NULL AS "mLang", CAST(qview1."prfMonth" AS VARCHAR(10485760)) AS "m", 
   5 AS "oQuestType", NULL AS "oLang", CAST(qview1."prfPrdOilNetMillSm3" AS VARCHAR(10485760)) AS "o"
 FROM 
"public"."field_production_totalt_NCS_month" qview1
WHERE 
qview1."prfYear" IS NOT NULL AND
qview1."prfMonth" IS NOT NULL AND
qview1."prfPrdOilNetMillSm3" IS NOT NULL AND
qview1."prfPrdGasNetBillSm3" IS NOT NULL AND
(qview1."prfYear" > 1999) AND
((qview1."prfMonth" >= 1) AND (qview1."prfMonth" <= 6))