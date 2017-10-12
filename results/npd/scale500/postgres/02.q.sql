SELECT *
FROM (
SELECT DISTINCT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."prlOperDateValidFrom" AS VARCHAR(10485760)) AS "date", 
   1 AS "licenceURIQuestType", NULL AS "licenceURILang", ('http://sws.ifi.uio.no/data/npd-v2/licence/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."prlNpdidLicence" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "licenceURI", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."cmpLongName" AS "company"
 FROM 
"public"."licence_oper_hst" qview1,
"public"."company" qview2
WHERE 
qview1."prlNpdidLicence" IS NOT NULL AND
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."prlOperDateValidFrom" IS NOT NULL AND
qview1."prlOperDateValidTo" IS NOT NULL AND
(qview1."cmpNpdidCompany" = qview2."cmpNpdidCompany") AND
qview2."cmpLongName" IS NOT NULL AND
('9999-12-31' <> qview1."prlOperDateValidFrom") AND
(qview1."prlOperDateValidFrom" > '1979-12-31 00:00:00')
) SUB_QVIEW
ORDER BY SUB_QVIEW."licenceURI"

