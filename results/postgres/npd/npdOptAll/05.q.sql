SELECT *
FROM (
SELECT

   1 AS "frQuestType", NULL AS "frLang", ('http://sws.ifi.uio.no/data/npd-v2/field/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/reserve') AS "fr", 
   5 AS "conQuestType", NULL AS "conLang", CAST(var1 AS VARCHAR(10485760)) AS "con", 
   5 AS "gasQuestType", NULL AS "gasLang", CAST(var2 AS VARCHAR(10485760)) AS "gas", 
   5 AS "NGLQuestType", NULL AS "NGLLang", CAST(var3 AS VARCHAR(10485760)) AS "NGL", 
   5 AS "oilQuestType", NULL AS "oilLang", CAST(var4 AS VARCHAR(10485760)) AS "oil", 
   5 AS "OEQuestType", NULL AS "OELang", CAST(var5 AS VARCHAR(10485760)) AS "OE"
FROM (
 (
SELECT 
   qview1."fldNpdidField" as var0, 
   qview1."fldRemainingCondensate" as var1, 
   qview1."fldRemainingGas" as var2, 
   qview1."fldRemainingNGL" as var3, 
   qview1."fldRemainingOil" as var4, 
   qview1."fldRemainingOE" as var5
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
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."OE" DESC

