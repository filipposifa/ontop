SELECT *
FROM (
SELECT

   7 AS `licenceQuestType`, NULL AS `licenceLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `licence`, 
   8 AS `dateValidToQuestType`, NULL AS `dateValidToLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `dateValidTo`, 
   8 AS `dateGrantedQuestType`, NULL AS `dateGrantedLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `dateGranted`
FROM (
 (
SELECT 
   QVIEW1.`prlName` as var0, 
   QVIEW1.`prlDateValidTo` as var1, 
   QVIEW1.`prlDateGranted` as var2
 FROM 
`licence` QVIEW1
WHERE 
('9999-12-31' <> QVIEW1.`prlDateGranted`) AND
QVIEW1.`prlDateGranted` IS NOT NULL AND
QVIEW1.`prlNpdidLicence` IS NOT NULL AND
('9999-12-31' <> QVIEW1.`prlDateValidTo`) AND
QVIEW1.`prlDateValidTo` IS NOT NULL AND
QVIEW1.`prlName` IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`licence`

