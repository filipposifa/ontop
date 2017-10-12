SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW1,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW2
WHERE 
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW1."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL
UNION
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_CORE" QVIEW1,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW2
WHERE 
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBCORENUMBER" IS NOT NULL
UNION
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_CORE" QVIEW1
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBCORENUMBER" IS NOT NULL
UNION
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW1
WHERE 
QVIEW1."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL