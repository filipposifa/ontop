SELECT *
FROM (
SELECT DISTINCT 
   7 AS `licenceQuestType`, NULL AS `licenceLang`, QVIEW1.`prlName` AS `licence`, 
   8 AS `dateValidToQuestType`, NULL AS `dateValidToLang`, CAST(QVIEW1.`prlDateValidTo` AS CHAR(8000) CHARACTER SET utf8) AS `dateValidTo`, 
   8 AS `dateGrantedQuestType`, NULL AS `dateGrantedLang`, CAST(QVIEW1.`prlDateGranted` AS CHAR(8000) CHARACTER SET utf8) AS `dateGranted`
 FROM 
`licence` QVIEW1
WHERE 
('9999-12-31' <> QVIEW1.`prlDateGranted`) AND
QVIEW1.`prlDateGranted` IS NOT NULL AND
QVIEW1.`prlNpdidLicence` IS NOT NULL AND
('9999-12-31' <> QVIEW1.`prlDateValidTo`) AND
QVIEW1.`prlDateValidTo` IS NOT NULL AND
QVIEW1.`prlName` IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW.`licence`

