SELECT DISTINCT 
   5 AS `NGLQuestType`, NULL AS `NGLLang`, CAST(QVIEW1.`prfPrdNGLNetMillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `NGL`, 
   5 AS `conQuestType`, NULL AS `conLang`, CAST(QVIEW1.`prfPrdCondensateNetMillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `con`, 
   5 AS `oilQuestType`, NULL AS `oilLang`, CAST(QVIEW1.`prfPrdOilNetMillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `oil`, 
   4 AS `monthQuestType`, NULL AS `monthLang`, CAST(QVIEW1.`prfMonth` AS CHAR(8000) CHARACTER SET utf8) AS `month`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(QVIEW1.`prfYear` AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `maxOEQuestType`, NULL AS `maxOELang`, CAST(QVIEW1.`prfPrdOeNetMillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `maxOE`, 
   5 AS `gasQuestType`, NULL AS `gasLang`, CAST(QVIEW1.`prfPrdGasNetBillSm3` AS CHAR(8000) CHARACTER SET utf8) AS `gas`
 FROM 
`field_production_monthly` QVIEW1
WHERE 
QVIEW1.`prfPrdGasNetBillSm3` IS NOT NULL AND
QVIEW1.`prfNpdidInformationCarrier` IS NOT NULL AND
QVIEW1.`prfYear` IS NOT NULL AND
QVIEW1.`prfMonth` IS NOT NULL AND
QVIEW1.`prfPrdOeNetMillSm3` IS NOT NULL AND
QVIEW1.`prfPrdCondensateNetMillSm3` IS NOT NULL AND
QVIEW1.`prfPrdOilNetMillSm3` IS NOT NULL AND
QVIEW1.`prfPrdNGLNetMillSm3` IS NOT NULL AND
(QVIEW1.`prfPrdGasNetBillSm3` < 100)