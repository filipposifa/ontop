SELECT *
FROM (
SELECT

   1 AS `frQuestType`, NULL AS `frLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/field/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/reserve') AS `fr`, 
   5 AS `conQuestType`, NULL AS `conLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `con`, 
   5 AS `gasQuestType`, NULL AS `gasLang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `gas`, 
   5 AS `NGLQuestType`, NULL AS `NGLLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `NGL`, 
   5 AS `oilQuestType`, NULL AS `oilLang`, CAST(var4 AS CHAR(8000) CHARACTER SET utf8) AS `oil`, 
   5 AS `OEQuestType`, NULL AS `OELang`, CAST(var5 AS CHAR(8000) CHARACTER SET utf8) AS `OE`
FROM (
 (
SELECT 
   QVIEW1.`fldNpdidField` as var0, 
   QVIEW1.`fldRemainingCondensate` as var1, 
   QVIEW1.`fldRemainingGas` as var2, 
   QVIEW1.`fldRemainingNGL` as var3, 
   QVIEW1.`fldRemainingOil` as var4, 
   QVIEW1.`fldRemainingOE` as var5
 FROM 
`field_reserves` QVIEW1
WHERE 
QVIEW1.`fldRemainingGas` IS NOT NULL AND
QVIEW1.`fldNpdidField` IS NOT NULL AND
QVIEW1.`fldRemainingOE` IS NOT NULL AND
QVIEW1.`fldRemainingNGL` IS NOT NULL AND
QVIEW1.`fldRemainingCondensate` IS NOT NULL AND
QVIEW1.`fldRemainingOil` IS NOT NULL AND
(QVIEW1.`fldRemainingGas` < 100)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`OE` DESC

