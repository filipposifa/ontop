SELECT DISTINCT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/survey/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1."SEANAME", ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "cdpKMQuestType", NULL AS "cdpKMLang", CAST(QVIEW2."SEACDPTOTALKM" AS VARCHAR(500)) AS "cdpKM", 
   4 AS "boatKMQuestType", NULL AS "boatKMLang", CAST(QVIEW3."SEABOATTOTALKM" AS VARCHAR(500)) AS "boatKM"
 FROM 

        (
        
                (
                "PUBLIC"."SEIS_ACQUISITION" QVIEW1
                LEFT OUTER JOIN
                "PUBLIC"."SEIS_ACQUISITION" QVIEW2
                ON
                (QVIEW1."SEANAME" = QVIEW2."SEANAME") AND
                QVIEW2."SEACDPTOTALKM" IS NOT NULL AND
                QVIEW1."SEANAME" IS NOT NULL
                 )
        LEFT OUTER JOIN
        "PUBLIC"."SEIS_ACQUISITION" QVIEW3
        ON
        (QVIEW1."SEANAME" = QVIEW3."SEANAME") AND
        QVIEW3."SEABOATTOTALKM" IS NOT NULL AND
        QVIEW1."SEANAME" IS NOT NULL
         )
WHERE 
(QVIEW2."SEACDPTOTALKM" > 3660) AND
QVIEW1."SEANAME" IS NOT NULL