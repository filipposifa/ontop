SELECT

   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   1 AS `licenceURIQuestType`, NULL AS `licenceURILang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/licence/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `licenceURI`, 
   5 AS `interestQuestType`, NULL AS `interestLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `interest`
FROM (
 (
SELECT DISTINCT 
   QVIEW1.`prlLicenseeDateValidFrom` as var0, 
   QVIEW1.`prlNpdidLicence` as var1, 
   QVIEW1.`prlLicenseeInterest` as var2
 FROM 
`licence_licensee_hst` QVIEW1
WHERE 
QVIEW1.`prlLicenseeInterest` IS NOT NULL AND
QVIEW1.`prlNpdidLicence` IS NOT NULL AND
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`prlLicenseeDateValidFrom` IS NOT NULL AND
QVIEW1.`prlLicenseeDateValidTo` IS NOT NULL AND
('9999-12-31' <> QVIEW1.`prlLicenseeDateValidFrom`) AND
(QVIEW1.`prlLicenseeDateValidFrom` > '1979-12-31 00:00:00')
 ) 
 
 ) SUBQALIAS