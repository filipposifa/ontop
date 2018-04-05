SELECT *
FROM (
SELECT

   7 AS `licenceQuestType`, NULL AS `licenceLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `licence`, 
   8 AS `licenseeFromQuestType`, NULL AS `licenseeFromLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `licenseeFrom`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `company`
FROM (
 (
SELECT DISTINCT 
   QVIEW3.`prlName` as var0, 
   QVIEW1.`prlLicenseeDateValidFrom` as var1, 
   QVIEW2.`cmpLongName` as var2
 FROM 
`licence_licensee_hst` QVIEW1,
`company` QVIEW2,
`licence` QVIEW3
WHERE 
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`prlLicenseeDateValidTo` IS NOT NULL AND
QVIEW1.`prlLicenseeDateValidFrom` IS NOT NULL AND
QVIEW1.`prlNpdidLicence` IS NOT NULL AND
(QVIEW1.`cmpNpdidCompany` = QVIEW2.`cmpNpdidCompany`) AND
QVIEW2.`cmpLongName` IS NOT NULL AND
('9999-12-31' <> QVIEW1.`prlLicenseeDateValidFrom`) AND
(QVIEW1.`prlNpdidLicence` = QVIEW3.`prlNpdidLicence`) AND
QVIEW3.`prlName` IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`licence`, SUB_QVIEW.`licenseeFrom`

