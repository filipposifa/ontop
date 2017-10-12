SELECT *
FROM (
SELECT

   1 AS "memberQuestType", NULL AS "memberLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS "member"
FROM (
 (
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" as var0
 FROM 
"public"."wellbore_core" qview1
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

