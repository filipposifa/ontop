SELECT DISTINCT 
   5 AS "NGLQuestType", NULL AS "NGLLang", CAST(QVIEW1."PRFPRDNGLNETMILLSM3" AS VARCHAR(500)) AS "NGL", 
   5 AS "conQuestType", NULL AS "conLang", CAST(QVIEW1."PRFPRDCONDENSATENETMILLSM3" AS VARCHAR(500)) AS "con", 
   5 AS "oilQuestType", NULL AS "oilLang", CAST(QVIEW1."PRFPRDOILNETMILLSM3" AS VARCHAR(500)) AS "oil", 
   4 AS "monthQuestType", NULL AS "monthLang", CAST(QVIEW1."PRFMONTH" AS VARCHAR(500)) AS "month", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW1."PRFYEAR" AS VARCHAR(500)) AS "year", 
   5 AS "maxOEQuestType", NULL AS "maxOELang", CAST(QVIEW1."PRFPRDOENETMILLSM3" AS VARCHAR(500)) AS "maxOE", 
   5 AS "gasQuestType", NULL AS "gasLang", CAST(QVIEW1."PRFPRDGASNETBILLSM3" AS VARCHAR(500)) AS "gas"
 FROM 
"PUBLIC"."FIELD_PRODUCTION_MONTHLY" QVIEW1
WHERE 
QVIEW1."PRFPRDGASNETBILLSM3" IS NOT NULL AND
QVIEW1."PRFNPDIDINFORMATIONCARRIER" IS NOT NULL AND
QVIEW1."PRFYEAR" IS NOT NULL AND
QVIEW1."PRFMONTH" IS NOT NULL AND
QVIEW1."PRFPRDOENETMILLSM3" IS NOT NULL AND
QVIEW1."PRFPRDCONDENSATENETMILLSM3" IS NOT NULL AND
QVIEW1."PRFPRDOILNETMILLSM3" IS NOT NULL AND
QVIEW1."PRFPRDNGLNETMILLSM3" IS NOT NULL AND
(QVIEW1."PRFPRDGASNETBILLSM3" < 100)