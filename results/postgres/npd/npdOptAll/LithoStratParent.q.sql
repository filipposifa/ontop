CREATE TEMPORARY TABLE viewtable5847 AS select distinct alias1."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias1 
where 
alias1."lsuNpdidLithoStratParent" IS NOT NULL

CREATE TEMPORARY TABLE viewtable5848 AS select distinct alias1."lsuNpdidLithoStrat" as "lsuNpdidLithoStrat" from 
"public"."wellbore_formation_top" alias1 
where 
alias1."lsuNpdidLithoStrat" IS NOT NULL

CREATE TEMPORARY TABLE viewtable5849 AS select distinct alias3."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"public"."wellbore_formation_top" alias3 
where 
alias3."lsuNpdidLithoStratParent" IS NOT NULL

SELECT

   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/depth/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "q", 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuTopDepth" as var2, 
   qview1."lsuBottomDepth" as var3, 
   qview1."lsuNpdidLithoStrat" as var4
 FROM 
"public"."strat_litho_wellbore" qview1,
viewtable5848 qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuTopDepth" IS NOT NULL AND
qview1."lsuBottomDepth" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuTopDepth" as var2, 
   qview1."lsuBottomDepth" as var3, 
   qview1."lsuNpdidLithoStrat" as var4
 FROM 
"public"."strat_litho_wellbore" qview1,
viewtable5847 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuTopDepth" IS NOT NULL AND
qview1."lsuBottomDepth" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuTopDepth" as var2, 
   qview1."lsuBottomDepth" as var3, 
   qview1."lsuNpdidLithoStrat" as var4
 FROM 
"public"."wellbore_formation_top" qview1
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."lsuTopDepth" IS NOT NULL AND
qview1."lsuBottomDepth" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuTopDepth" as var2, 
   qview1."lsuBottomDepth" as var3, 
   qview1."lsuNpdidLithoStrat" as var4
 FROM 
"public"."wellbore_formation_top" qview1,
viewtable5849 qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."lsuTopDepth" IS NOT NULL AND
qview1."lsuBottomDepth" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "qQuestType", NULL AS "qLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS "q", 
   1 AS "uQuestType", NULL AS "uLang", ('http://sws.ifi.uio.no/data/npd-v2/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "u"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuNpdidLithoStrat" as var2
 FROM 
"public"."strat_litho_wellbore_core" qview1,
viewtable5847 qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuNpdidLithoStrat" as var2
 FROM 
"public"."strat_litho_wellbore_core" qview1,
viewtable5848 qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStrat")
 ) 
 
 ) SUBQALIAS