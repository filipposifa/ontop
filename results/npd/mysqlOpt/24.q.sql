CREATE TEMPORARY TABLE viewtable3788 AS select distinct alias0.`wlbNpdidWellbore` as "wlbNpdidWellbore" from 
`wellbore_core` alias0 
where 
alias0.`wlbNpdidWellbore` IS NOT NULL and 
alias0.`wlbCoreNumber` IS NOT NULL and 
alias0.`wlbNpdidWellbore` IS NOT NULL and 
alias0.`wlbCoreNumber` IS NOT NULL;
SELECT

   1 AS `memberQuestType`, NULL AS `memberLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/cores') AS `member`
FROM (
 (
SELECT DISTINCT 
   QVIEW1.`wlbNpdidWellbore` as var0
 FROM 
viewtable3788 QVIEW1
 ) 
 
 ) SUBQALIAS