SELECT

   4 AS `yearQuestType`, NULL AS `yearLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `year`, 
   5 AS `gQuestType`, NULL AS `gLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `g`, 
   4 AS `mQuestType`, NULL AS `mLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `m`, 
   5 AS `oQuestType`, NULL AS `oLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `o`
FROM (
 (
SELECT 
   QVIEW1.`prfYear` as var0, 
   QVIEW1.`prfPrdGasNetBillSm3` as var1, 
   QVIEW1.`prfMonth` as var2, 
   QVIEW1.`prfPrdOilNetMillSm3` as var3
 FROM 
`field_production_totalt_NCS_month` QVIEW1
WHERE 
QVIEW1.`prfYear` IS NOT NULL AND
QVIEW1.`prfMonth` IS NOT NULL AND
QVIEW1.`prfPrdOilNetMillSm3` IS NOT NULL AND
QVIEW1.`prfPrdGasNetBillSm3` IS NOT NULL AND
(QVIEW1.`prfYear` > 1999) AND
((QVIEW1.`prfMonth` >= 1) AND (QVIEW1.`prfMonth` <= 6)))
 
UNION
(
SELECT 
   QVIEW1.`prfYear` as var0, 
   QVIEW1.`prfPrdGasNetBillSm3` as var1, 
   QVIEW1.`prfMonth` as var2, 
   QVIEW1.`prfPrdOilNetMillSm3` as var3
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
 ) 
 
 ) SUBQALIAS