SELECT

   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0
 FROM 
`discovery` QVIEW1
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0
 FROM 
`field` QVIEW1
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL
 ) 
 
 ) SUBQALIAS