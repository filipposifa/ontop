SELECT *
FROM (
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/quadrant/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   7 AS "nQuestType", NULL AS "nLang", CAST(qview1."wlbNamePart1" AS VARCHAR(10485760)) AS "n"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1")
) SUB_QVIEW

