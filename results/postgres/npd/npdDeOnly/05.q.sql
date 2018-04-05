SELECT *
FROM (
SELECT DISTINCT 
   1 AS "frQuestType", NULL AS "frLang", ('http://sws.ifi.uio.no/data/npd-v2/field/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."fldNpdidField" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/reserve') AS "fr", 
   5 AS "conQuestType", NULL AS "conLang", CAST(qview1."fldRemainingCondensate" AS VARCHAR(10485760)) AS "con", 
   5 AS "gasQuestType", NULL AS "gasLang", CAST(qview1."fldRemainingGas" AS VARCHAR(10485760)) AS "gas", 
   5 AS "NGLQuestType", NULL AS "NGLLang", CAST(qview1."fldRemainingNGL" AS VARCHAR(10485760)) AS "NGL", 
   5 AS "oilQuestType", NULL AS "oilLang", CAST(qview1."fldRemainingOil" AS VARCHAR(10485760)) AS "oil", 
   5 AS "OEQuestType", NULL AS "OELang", CAST(qview1."fldRemainingOE" AS VARCHAR(10485760)) AS "OE"
 FROM 
"public"."field_reserves" qview1
WHERE 
qview1."fldRemainingGas" IS NOT NULL AND
qview1."fldNpdidField" IS NOT NULL AND
qview1."fldRemainingOE" IS NOT NULL AND
qview1."fldRemainingNGL" IS NOT NULL AND
qview1."fldRemainingCondensate" IS NOT NULL AND
qview1."fldRemainingOil" IS NOT NULL AND
(qview1."fldRemainingGas" < 100)
) SUB_QVIEW
ORDER BY SUB_QVIEW."OE" DESC

