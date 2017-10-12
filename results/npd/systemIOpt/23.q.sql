SELECT

   1 AS "memberQuestType", NULL AS "memberLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "member", 
   1 AS "awcQuestType", NULL AS "awcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "awc"
FROM (
 (
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."WLBNPDIDWELLBORE" as var1, 
   QVIEW1."WLBCORENUMBER" as var2
 FROM 
"PUBLIC"."WELLBORE_CORE" QVIEW1
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBCORENUMBER" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."WLBNPDIDWELLBORE" as var1, 
   QVIEW1."WLBCORENUMBER" as var2
 FROM 
"PUBLIC"."WELLBORE_CORE" QVIEW1,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW2
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE")
 ) 
 
 ) SUBQALIAS