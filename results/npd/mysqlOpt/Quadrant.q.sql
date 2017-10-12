CREATE TEMPORARY TABLE viewtable38 AS select distinct alias1.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_development_all` alias1;
create temporary table viewtable39 as select * from viewtable38;
CREATE TEMPORARY TABLE viewtable41 AS select distinct alias1.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_development_all` alias1 
where 
alias1.`wlbNamePart1` IS NOT NULL and 
alias1.`wlbNamePart1` IS NOT NULL;
create temporary table viewtable42 as select * from viewtable41;
CREATE TEMPORARY TABLE viewtable44 AS select distinct alias0.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_exploration_all` alias0;
CREATE TEMPORARY TABLE viewtable46 AS select distinct alias2.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_shallow_all` alias2;
CREATE TEMPORARY TABLE viewtable48 AS select distinct alias0.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_exploration_all` alias0 
where 
alias0.`wlbNamePart1` IS NOT NULL and 
alias0.`wlbNamePart1` IS NOT NULL;
create temporary table viewtable49 as select * from viewtable48;
create temporary table viewtable50 as select * from viewtable48;
CREATE TEMPORARY TABLE viewtable52 AS select distinct alias2.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_shallow_all` alias2 
where 
alias2.`wlbNamePart1` IS NOT NULL and 
alias2.`wlbNamePart1` IS NOT NULL;
SELECT

   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `n`
FROM (
 (
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable38 QVIEW1,
viewtable52 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable41 QVIEW1,
viewtable44 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable39 QVIEW1,
viewtable49 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable46 QVIEW1,
viewtable50 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable42 QVIEW1)
 
UNION
(
SELECT 
   QVIEW1.`wlbNamePart1` as var0, 
   QVIEW1.`wlbNamePart1` as var1
 FROM 
viewtable48 QVIEW1
 ) 
 
 ) SUBQALIAS