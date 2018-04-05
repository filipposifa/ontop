SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW3,
"PUBLIC"."DISCOVERY" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW3."DSCNPDIDDISCOVERY" = QVIEW4."DSCNPDIDDISCOVERY") AND
QVIEW3."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW3,
"PUBLIC"."DISCOVERY" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW3."DSCNPDIDDISCOVERY" = QVIEW4."DSCNPDIDDISCOVERY") AND
QVIEW3."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW4,
"PUBLIC"."DISCOVERY" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW4."DSCNPDIDDISCOVERY" = QVIEW5."DSCNPDIDDISCOVERY") AND
QVIEW4."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW4,
"PUBLIC"."DISCOVERY" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW4."DSCNPDIDDISCOVERY" = QVIEW5."DSCNPDIDDISCOVERY") AND
QVIEW4."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."DISCOVERY" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW4."DSCNPDIDDISCOVERY") AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."DISCOVERY" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW4."DSCNPDIDDISCOVERY") AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."LSUNPDIDLITHOSTRAT" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/cores') AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."STRAT_LITHO_WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."LSUNPDIDLITHOSTRAT" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wellbore", 
   1 AS "wellQuestType", NULL AS "wellLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "wc"
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."WELLBORE_CORE" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE")