SELECT

   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0
 FROM 
"public"."discovery" qview1
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0
 FROM 
"public"."field" qview1,
"public"."wellbore_npdid_overview" qview2
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL
 ) 
 
 ) SUBQALIAS