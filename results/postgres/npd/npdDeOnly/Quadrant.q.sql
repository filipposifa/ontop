CREATE TEMPORARY TABLE viewtable7323 AS select distinct alias4."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_exploration_all" alias4 
where 
alias4."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7324 AS select distinct alias3."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_shallow_all" alias3 
where 
alias3."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7325 AS select distinct alias2."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_development_all" alias2 
where 
alias2."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7326 AS select distinct alias0."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_development_all" alias0 
where 
alias0."wlbNamePart1" IS NOT NULL

CREATE TEMPORARY TABLE viewtable7327 AS select distinct alias1."wlbNamePart1" as "wlbNamePart1" from 
"public"."wellbore_exploration_all" alias1 
where 
alias1."wlbNamePart1" IS NOT NULL

SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable7326 qview1,
viewtable7327 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable7325 qview1,
viewtable7326 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable7324 qview1,
viewtable7326 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable7323 qview1,
viewtable7327 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable7326 qview1,
viewtable7327 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
viewtable7324 qview1,
viewtable7327 qview2
WHERE 
(qview1."wlbNamePart1" = qview2."wlbNamePart1")