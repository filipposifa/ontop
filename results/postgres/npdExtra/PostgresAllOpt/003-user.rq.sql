SELECT *
FROM (
SELECT

   7 AS "licenceQuestType", NULL AS "licenceLang", CAST(var0 AS VARCHAR(10485760)) AS "licence", 
   8 AS "dateValidToQuestType", NULL AS "dateValidToLang", CAST(var1 AS VARCHAR(10485760)) AS "dateValidTo", 
   8 AS "dateGrantedQuestType", NULL AS "dateGrantedLang", CAST(var2 AS VARCHAR(10485760)) AS "dateGranted"
FROM (
 (
SELECT 
   qview1."prlName" as var0, 
   qview1."prlDateValidTo" as var1, 
   qview1."prlDateGranted" as var2
 FROM 
"public"."licence" qview1
WHERE 
('9999-12-31' <> qview1."prlDateGranted") AND
qview1."prlDateGranted" IS NOT NULL AND
qview1."prlNpdidLicence" IS NOT NULL AND
('9999-12-31' <> qview1."prlDateValidTo") AND
qview1."prlDateValidTo" IS NOT NULL AND
qview1."prlName" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."licence"

