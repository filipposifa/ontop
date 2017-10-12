CREATE TEMPORARY TABLE viewtable775 AS select distinct alias3."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_development_all" alias3

CREATE TEMPORARY TABLE viewtable776 AS select distinct alias2."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_exploration_all" alias2 
where 
alias2."wlbNpdidWellboreReclass" IS NOT NULL and 
alias2."wlbNpdidWellboreReclass" IS NOT NULL

CREATE TEMPORARY TABLE viewtable777 AS select distinct alias0."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_exploration_all" alias0

SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview2."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
viewtable776 qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview2."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
viewtable775 qview3
WHERE 
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview3."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."dscNpdidDiscovery" = qview3."dscNpdidDiscovery") AND
qview3."dscDiscoveryYear" IS NOT NULL
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview2."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
viewtable777 qview3
WHERE 
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview2."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
viewtable775 qview3
WHERE 
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
UNION
SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview3."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."dscNpdidDiscovery" = qview3."dscNpdidDiscovery") AND
qview3."dscDiscoveryYear" IS NOT NULL