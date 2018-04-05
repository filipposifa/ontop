SELECT 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`prfYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `gQuestType`, NULL AS `gLang`, CAST(QVIEW1.`prfPrdGasNetBillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `g`, 
   4 AS `mQuestType`, NULL AS `mLang`, CAST(QVIEW1.`prfMonth` AS CHAR(8000) CHARACTER SET utf8) AS `m`, 
   5 AS `oQuestType`, NULL AS `oLang`, CAST(QVIEW1.`prfPrdOilNetMillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `o`
 FROM 
`field_production_monthly` QVIEW1
WHERE 
QVIEW1.`prfNpdidInformationCarrier` IS NOT NULL AND
QVIEW1.`prfYear` IS NOT NULL AND
QVIEW1.`prfMonth` IS NOT NULL AND
QVIEW1.`prfPrdOilNetMillSm3` IS NOT NULL AND
QVIEW1.`prfPrdGasNetBillSm3` IS NOT NULL AND
(QVIEW1.`prfYear` > 1999) AND
((QVIEW1.`prfMonth` >= 1) AND (QVIEW1.`prfMonth` <= 6))
UNION
SELECT 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`prfYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `gQuestType`, NULL AS `gLang`, CAST(QVIEW1.`prfPrdGasNetBillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `g`, 
   4 AS `mQuestType`, NULL AS `mLang`, CAST(QVIEW1.`prfMonth` AS CHAR(8000) CHARACTER SET utf8) AS `m`, 
   5 AS `oQuestType`, NULL AS `oLang`, CAST(QVIEW1.`prfPrdOilNetMillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `o`
 FROM 
`field_production_totalt_NCS_month` QVIEW1
WHERE 
QVIEW1.`prfYear` IS NOT NULL AND
QVIEW1.`prfMonth` IS NOT NULL AND
QVIEW1.`prfPrdOilNetMillSm3` IS NOT NULL AND
QVIEW1.`prfPrdGasNetBillSm3` IS NOT NULL AND
(QVIEW1.`prfYear` > 1999) AND
((QVIEW1.`prfMonth` >= 1) AND (QVIEW1.`prfMonth` <= 6))