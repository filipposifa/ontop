SELECT *
FROM (
SELECT

   0 AS `NGLQuestType`, NULL AS `NGLLang`, CAST(NULL AS CHAR(8000) CHARACTER SET utf8) AS `NGL`, 
   0 AS `oilQuestType`, NULL AS `oilLang`, CAST(NULL AS CHAR(8000) CHARACTER SET utf8) AS `oil`, 
   0 AS `conQuestType`, NULL AS `conLang`, CAST(NULL AS CHAR(8000) CHARACTER SET utf8) AS `con`, 
   7 AS `fieldQuestType`, NULL AS `fieldLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `field`, 
   0 AS `OEQuestType`, NULL AS `OELang`, CAST(NULL AS CHAR(8000) CHARACTER SET utf8) AS `OE`, 
   0 AS `gasQuestType`, NULL AS `gasLang`, CAST(NULL AS CHAR(8000) CHARACTER SET utf8) AS `gas`
FROM (
 (
SELECT DISTINCT 
   QVIEW1.`fldName` as var0
 FROM 
`field` QVIEW1
WHERE 
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldName` IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`field`

