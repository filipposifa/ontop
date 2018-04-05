SELECT *
FROM (
SELECT

   7 AS "licenceQuestType", NULL AS "licenceLang", CAST(var0 AS VARCHAR(10485760)) AS "licence", 
   8 AS "licenseeFromQuestType", NULL AS "licenseeFromLang", CAST(var1 AS VARCHAR(10485760)) AS "licenseeFrom", 
   7 AS "companyQuestType", NULL AS "companyLang", CAST(var2 AS VARCHAR(10485760)) AS "company"
FROM (
 (
SELECT DISTINCT 
   qview3."prlName" as var0, 
   qview1."prlLicenseeDateValidFrom" as var1, 
   qview2."cmpLongName" as var2
 FROM 
"public"."licence_licensee_hst" qview1,
"public"."company" qview2,
"public"."licence" qview3
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."prlLicenseeDateValidTo" IS NOT NULL AND
qview1."prlLicenseeDateValidFrom" IS NOT NULL AND
qview1."prlNpdidLicence" IS NOT NULL AND
(qview1."cmpNpdidCompany" = qview2."cmpNpdidCompany") AND
qview2."cmpLongName" IS NOT NULL AND
('9999-12-31' <> qview1."prlLicenseeDateValidFrom") AND
(qview1."prlNpdidLicence" = qview3."prlNpdidLicence") AND
qview3."prlName" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."licence", SUB_QVIEW."licenseeFrom"

