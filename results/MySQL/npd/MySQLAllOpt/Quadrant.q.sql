CREATE TEMPORARY TABLE viewtable5929 AS select distinct alias0.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_exploration_all` alias0 
where 
alias0.`wlbNamePart1` IS NOT NULL

create temporary table viewtable5930 as select * from viewtable5929;
create temporary table viewtable5931 as select * from viewtable5929;
create temporary table viewtable5932 as select * from viewtable5929;
CREATE TEMPORARY TABLE viewtable5934 AS select distinct alias2.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_shallow_all` alias2 
where 
alias2.`wlbNamePart1` IS NOT NULL

create temporary table viewtable5935 as select * from viewtable5934;
CREATE TEMPORARY TABLE viewtable5937 AS select distinct alias1.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_development_all` alias1 
where 
alias1.`wlbNamePart1` IS NOT NULL

create temporary table viewtable5938 as select * from viewtable5937;
create temporary table viewtable5939 as select * from viewtable5937;
create temporary table viewtable5940 as select * from viewtable5937;
SELECT

   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `n`
FROM (
 (
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable5931 QVIEW1,
viewtable5940 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable5938 QVIEW1)
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable5934 QVIEW1,
viewtable5939 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable5932 QVIEW1,
viewtable5935 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable5929 QVIEW1,
viewtable5937 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable5930 QVIEW1
 ) 
 
 ) SUBQALIAS