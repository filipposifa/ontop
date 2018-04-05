CREATE GLOBAL TEMPORARY TABLE V4E75149CC5834693A11272763905E ON COMMIT PRESERVE ROWS  AS select distinct alias0."WLBNPDIDWELLBORE" as "WLBNPDIDWELLBORE" from 
"NPD"."WELLBORE_CORE" alias0 
where 
alias0."WLBNPDIDWELLBORE" IS NOT NULL and 
alias0."WLBCORENUMBER" IS NOT NULL

SELECT

   1 AS "memberQuestType", NULL AS "memberLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS "member"
FROM (
 (
SELECT DISTINCT 
   QVIEW1."WLBNPDIDWELLBORE" as var0
 FROM 
V4E75149CC5834693A11272763905E QVIEW1
 ) 
 
 ) SUBQALIAS