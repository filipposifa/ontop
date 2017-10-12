CREATE TEMPORARY TABLE viewtable94 AS select distinct alias4."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_exploration_all" alias4 
where 
alias4."wlbNamePart1" IS NOT NULL and 
alias4."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable95 AS select distinct alias2."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_development_all" alias2 
where 
alias2."wlbNamePart1" IS NOT NULL and 
alias2."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable96 AS select distinct alias0."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_development_all" alias0 
where 
alias0."wlbNamePart1" IS NOT NULL and 
alias0."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable97 AS select distinct alias1."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_exploration_all" alias1

CREATE TEMPORARY TABLE viewtable98 AS select distinct alias0."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_development_all" alias0

CREATE TEMPORARY TABLE viewtable99 AS select distinct alias1."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_exploration_all" alias1 
where 
alias1."wlbNamePart1" IS NOT NULL and 
alias1."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable100 AS select distinct alias3."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_shallow_all" alias3

SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable98 qview1,
viewtable99 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable95 qview1,
viewtable98 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable96 qview1,
viewtable100 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable94 qview1,
viewtable97 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable98 qview1,
viewtable99 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable99 qview1,
viewtable100 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")