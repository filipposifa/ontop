SELECT *
FROM (
SELECT DISTINCT 
   7 AS "licenceQuestType", NULL AS "licenceLang", qview1."prlName" AS "licence", 
   8 AS "dateValidToQuestType", NULL AS "dateValidToLang", CAST(qview1."prlDateValidTo" AS VARCHAR(10485760)) AS "dateValidTo", 
   8 AS "dateGrantedQuestType", NULL AS "dateGrantedLang", CAST(qview1."prlDateGranted" AS VARCHAR(10485760)) AS "dateGranted"
 FROM 
"public"."licence" qview1
WHERE 
('9999-12-31' <> qview1."prlDateGranted") AND
qview1."prlDateGranted" IS NOT NULL AND
qview1."prlNpdidLicence" IS NOT NULL AND
('9999-12-31' <> qview1."prlDateValidTo") AND
qview1."prlDateValidTo" IS NOT NULL AND
qview1."prlName" IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW."licence"

