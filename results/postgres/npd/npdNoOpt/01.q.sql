SELECT DISTINCT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."prlLicenseeDateValidFrom" AS VARCHAR(10485760)) AS "date", 
   1 AS "licenceURIQuestType", NULL AS "licenceURILang", ('http://sws.ifi.uio.no/data/npd-v2/licence/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."prlNpdidLicence" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "licenceURI", 
   5 AS "interestQuestType", NULL AS "interestLang", CAST(qview1."prlLicenseeInterest" AS VARCHAR(10485760)) AS "interest"
 FROM 
"public"."licence_licensee_hst" qview1
WHERE 
qview1."prlLicenseeInterest" IS NOT NULL AND
qview1."prlNpdidLicence" IS NOT NULL AND
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."prlLicenseeDateValidFrom" IS NOT NULL AND
qview1."prlLicenseeDateValidTo" IS NOT NULL AND
('9999-12-31' <> qview1."prlLicenseeDateValidFrom") AND
(qview1."prlLicenseeDateValidFrom" > '1979-12-31 00:00:00')