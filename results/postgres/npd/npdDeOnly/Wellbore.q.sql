CREATE TEMPORARY TABLE viewtable8077 AS select distinct alias3."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_development_all" alias3 
where 
alias3."wlbNpdidWellboreReclass" IS NOT NULL

CREATE TEMPORARY TABLE viewtable8078 AS select distinct alias5."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_development_all" alias5 
where 
alias5."wlbNpdidWellboreReclass" IS NOT NULL

CREATE TEMPORARY TABLE viewtable8079 AS select distinct alias1."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_exploration_all" alias1 
where 
alias1."wlbNpdidWellboreReclass" IS NOT NULL

CREATE TEMPORARY TABLE viewtable8080 AS select distinct alias0."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_exploration_all" alias0 
where 
alias0."wlbNpdidWellboreReclass" IS NOT NULL

SELECT 
   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."wlbNpdidWellbore" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(qview1."dscNpdidDiscovery" AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(qview2."dscDiscoveryYear" AS VARCHAR(10485760)) AS "y"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
viewtable8079 qview3
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
viewtable8077 qview3
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
viewtable8080 qview3
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
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
viewtable8078 qview3
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