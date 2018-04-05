CREATE TEMPORARY TABLE viewtable5892 AS select distinct alias0."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_development_all" alias0 
where 
alias0."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable5893 AS select distinct alias2."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_shallow_all" alias2 
where 
alias2."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable5894 AS select distinct alias1."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_exploration_all" alias1 
where 
alias1."wlbNamePart1" IS NOT NULL

SELECT

   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(var1 AS VARCHAR(10485760)) AS "n"
FROM (
 (
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5892 qview1,
viewtable5894 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1"))
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5892 qview1)
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5894 qview1)
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5892 qview1,
viewtable5893 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1"))
 
UNION
(
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
viewtable5893 qview1,
viewtable5894 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
 ) 
 
 ) SUBQALIAS