SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW5."WLBREENTRY" = 'NO') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW5."WLBREENTRY" = 'YES') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
(QVIEW1."WLBREENTRY" = 'NO') AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
(QVIEW1."WLBREENTRY" = 'YES') AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW5."WLBREENTRY" = 'NO') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW5."WLBREENTRY" = 'YES') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW5."WLBREENTRY" = 'NO') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW5."WLBREENTRY" = 'YES') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
(QVIEW1."WLBREENTRY" = 'NO') AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
(QVIEW1."WLBREENTRY" = 'YES') AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW5."WLBREENTRY" = 'NO') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW5."WLBREENTRY" = 'YES') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW5."PRLNAME" = QVIEW6."WLBPRODUCTIONLICENCE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW6."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBPRODUCTIONLICENCE" = QVIEW5."PRLNAME") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW5."PRLNAME" = QVIEW6."WLBPRODUCTIONLICENCE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW6."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBPURPOSE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."WLBPURPOSE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBPURPOSE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBDRILLINGDAYS" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."WLBDRILLINGDAYS" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBDRILLINGDAYS" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5,
"NPD"."LICENCE" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
(QVIEW5."WLBPRODUCTIONLICENCE" = QVIEW6."PRLNAME") AND
QVIEW6."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5,
"NPD"."LICENCE" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
(QVIEW5."WLBPRODUCTIONLICENCE" = QVIEW6."PRLNAME") AND
QVIEW6."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBPRODUCTIONLICENCE" = QVIEW5."PRLNAME") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW3."WLBTOTALCORELENGTH" AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW3."WLBTOTALCORELENGTH" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW4."WLBCOREINTERVALUOM" = '[m   ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
(QVIEW3."WLBTOTALCORELENGTH" < 22337) AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW5."PRLNAME" = QVIEW6."WLBPRODUCTIONLICENCE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW6."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBPRODUCTIONLICENCE" = QVIEW5."PRLNAME") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW5."PRLNAME" = QVIEW6."WLBPRODUCTIONLICENCE") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW6."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337)
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE")
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBPURPOSE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."WLBPURPOSE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBPURPOSE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBDRILLINGDAYS" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."WLBDRILLINGDAYS" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."WLBDRILLINGDAYS" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."FLDNPDIDFIELD" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5,
"NPD"."LICENCE" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
(QVIEW5."WLBPRODUCTIONLICENCE" = QVIEW6."PRLNAME") AND
QVIEW6."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5,
"NPD"."LICENCE" QVIEW6
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
(QVIEW5."WLBPRODUCTIONLICENCE" = QVIEW6."PRLNAME") AND
QVIEW6."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."LICENCE" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBPRODUCTIONLICENCE" = QVIEW5."PRLNAME") AND
QVIEW5."PRLNPDIDLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."PRLNPDIDPRODUCTIONLICENCE" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_NPDID_OVERVIEW" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4,
"NPD"."WELLBORE_EXPLORATION_ALL" QVIEW5
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW5."WLBNPDIDWELLBORE") AND
QVIEW5."DSCNPDIDDISCOVERY" IS NOT NULL
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(QVIEW4."WLBTOTALCORELENGTH" * 0.3048 AS VARCHAR(4000)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."WLBWELL", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."WLBNPDIDWELLBORE" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."WLBCORENUMBER" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
 FROM 
"NPD"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"NPD"."WELLBORE_CORE" QVIEW2,
"NPD"."WELLBORE_CORE" QVIEW3,
"NPD"."WELLBORE_CORE" QVIEW4
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."WLBWELL" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
QVIEW2."WLBCORENUMBER" IS NOT NULL AND
(QVIEW2."WLBCORENUMBER" = QVIEW3."WLBCORENUMBER") AND
(QVIEW3."WLBCOREINTERVALUOM" = '[ft  ]') AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
(QVIEW2."WLBCORENUMBER" = QVIEW4."WLBCORENUMBER") AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW4."WLBNPDIDWELLBORE") AND
QVIEW4."WLBTOTALCORELENGTH" IS NOT NULL AND
((QVIEW4."WLBTOTALCORELENGTH" * 0.3048) < 22337) AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL