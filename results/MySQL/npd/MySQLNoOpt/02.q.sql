SELECT *
FROM (
SELECT DISTINCT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`prlOperDateValidFrom` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   1 AS `licenceURIQuestType`, NULL AS `licenceURILang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/licence/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`prlNpdidLicence` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `licenceURI`, 
   7 AS `companyQuestType`, NULL AS `companyLang`, QVIEW2.`cmpLongName` AS `company`
 FROM 
`licence_oper_hst` QVIEW1,
`company` QVIEW2
WHERE 
QVIEW1.`prlNpdidLicence` IS NOT NULL AND
QVIEW1.`cmpNpdidCompany` IS NOT NULL AND
QVIEW1.`prlOperDateValidFrom` IS NOT NULL AND
QVIEW1.`prlOperDateValidTo` IS NOT NULL AND
(QVIEW1.`cmpNpdidCompany` = QVIEW2.`cmpNpdidCompany`) AND
QVIEW2.`cmpLongName` IS NOT NULL AND
('9999-12-31' <> QVIEW1.`prlOperDateValidFrom`) AND
(QVIEW1.`prlOperDateValidFrom` > '1979-12-31 00:00:00')
) SUB_QVIEW
ORDER BY SUB_QVIEW.`licenceURI`

