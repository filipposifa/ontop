CREATE TEMPORARY TABLE SESSION.viewtable4092 AS select distinct alias0."WLBNPDIDWELLBORE" as "WLBNPDIDWELLBORE" from 
"PUBLIC"."WELLBORE_CORE" alias0 
where 
alias0."WLBNPDIDWELLBORE" IS NOT NULL and 
alias0."WLBCORENUMBER" IS NOT NULL and 
alias0."WLBNPDIDWELLBORE" IS NOT NULL and 
alias0."WLBCORENUMBER" IS NOT NULL

CREATE TEMPORARY TABLE SESSION.viewtable4093 AS select distinct alias0."WLBNPDIDWELLBORE" as "WLBNPDIDWELLBORE" from 
"PUBLIC"."WELLBORE_CORE" alias0 
where 
alias0."WLBCORENUMBER" IS NOT NULL and 
alias0."WLBCORENUMBER" IS NOT NULL

SELECT

   1 AS "memberQuestType", NULL AS "memberLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "member"
FROM (
 (
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0
 FROM 
SESSION.VIEWTABLE4092 QVIEW1)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
SESSION.VIEWTABLE4093 QVIEW2
WHERE 
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE")
 ) 
 
 ) SUBQALIAS