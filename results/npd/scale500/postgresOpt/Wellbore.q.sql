CREATE TEMPORARY TABLE viewtable6376 AS select distinct alias3."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_development_all" alias3

CREATE TEMPORARY TABLE viewtable6377 AS select distinct alias5."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_development_all" alias5 
where 
alias5."wlbNpdidWellboreReclass" IS NOT NULL and 
alias5."wlbNpdidWellboreReclass" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6378 AS select distinct alias2."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_exploration_all" alias2 
where 
alias2."wlbNpdidWellboreReclass" IS NOT NULL and 
alias2."wlbNpdidWellboreReclass" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6379 AS select distinct alias0."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"public"."wellbore_exploration_all" alias0

SELECT

   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", ('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(var2 AS VARCHAR(10485760)) AS "y"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview2."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
viewtable6378 qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview3."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."dscNpdidDiscovery" = qview3."dscNpdidDiscovery") AND
qview3."dscDiscoveryYear" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview2."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
viewtable6379 qview3
WHERE 
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview2."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
viewtable6376 qview3
WHERE 
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview3."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."dscNpdidDiscovery" = qview3."dscNpdidDiscovery") AND
qview3."dscDiscoveryYear" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview2."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
viewtable6377 qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
 ) 
 
 ) SUBQALIAS