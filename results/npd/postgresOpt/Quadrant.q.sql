CREATE TEMPORARY TABLE viewtable5121 AS select distinct alias1."wlbNamePart1" as "wlbNamePart1" from 
"wellbore_exploration_all" alias1;
CREATE TEMPORARY TABLE viewtable5122 AS select distinct alias0."wlbNamePart1" as "wlbNamePart1" from 
"wellbore_development_all" alias0;
CREATE TEMPORARY TABLE viewtable5123 AS select distinct alias2."wlbNamePart1" as "wlbNamePart1" from 
"wellbore_shallow_all" alias2;
SELECT *
FROM (
SELECT

   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(var1 AS VARCHAR(10485760)) AS "n"
FROM (
 (
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5122 qview1
WHERE 
qview1."wlbNamePart1" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5122 qview1,
viewtable5123 qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1"))
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5121 qview1,
viewtable5123 qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1"))
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5121 qview1,
viewtable5122 qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1"))
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5121 qview1
WHERE 
qview1."wlbNamePart1" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

