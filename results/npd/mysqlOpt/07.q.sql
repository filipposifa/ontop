SELECT

   5 AS `NGLQuestType`, NULL AS `NGLLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `NGL`, 
   5 AS `conQuestType`, NULL AS `conLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `con`, 
   5 AS `oilQuestType`, NULL AS `oilLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `oil`, 
   4 AS `monthQuestType`, NULL AS `monthLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `month`, 
   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(var4 AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `maxOEQuestType`, NULL AS `maxOELang`, CAST(var5 AS CHAR(8000) CHARACTER SET utf8) AS `maxOE`, 
   5 AS `gasQuestType`, NULL AS `gasLang`, CAST(var6 AS CHAR(8000) CHARACTER SET utf8) AS `gas`
FROM (
 (
SELECT DISTINCT 
   QVIEW1.`prfPrdNGLNetMillSm3` as var0, 
   QVIEW1.`prfPrdCondensateNetMillSm3` as var1, 
   QVIEW1.`prfPrdOilNetMillSm3` as var2, 
   QVIEW1.`prfMonth` as var3, 
   QVIEW1.`prfYear` as var4, 
   QVIEW1.`prfPrdOeNetMillSm3` as var5, 
   QVIEW1.`prfPrdGasNetBillSm3` as var6
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
 ) 
 
 ) SUBQALIAS