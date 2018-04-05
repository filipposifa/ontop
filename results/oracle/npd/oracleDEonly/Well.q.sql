CREATE GLOBAL TEMPORARY TABLE V174ADD5B338E4649B295F611E5332 ON COMMIT PRESERVE ROWS AS select distinct alias2."SEASURVEYNAME" as "SEASURVEYNAME" from 
"NPD"."SEAAREA" alias2 
where 
alias2."SEASURVEYNAME" IS NOT NULL

SELECT 
   1 AS "wQuestType", NULL AS "wLang", ('http://sws.ifi.uio.no/data/npd-v2/survey/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW2."SEASURVEYNAME", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/area') AS "w", 
   1 AS "fQuestType", NULL AS "fLang", ('http://sws.ifi.uio.no/data/npd-v2/survey/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."SEANAME", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "f"
 FROM 
"NPD"."SEIS_ACQUISITION" QVIEW1,
"NPD"."SEAAREA" QVIEW2,
V174ADD5B338E4649B295F611E5332 QVIEW3
WHERE 
(QVIEW1."SEANPDIDSURVEY" = QVIEW2."SEANPDIDSURVEY") AND
QVIEW2."SEASURVEYNAME" IS NOT NULL AND
QVIEW1."SEANAME" IS NOT NULL AND
(QVIEW2."SEASURVEYNAME" = QVIEW3."SEASURVEYNAME")