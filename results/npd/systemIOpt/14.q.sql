SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/test/mud/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(var2 AS VARCHAR(500)) AS "date", 
   7 AS "typeQuestType", NULL AS "typeLang", CAST(var3 AS VARCHAR(500)) AS "type", 
   5 AS "wQuestType", NULL AS "wLang", CAST(var4 AS VARCHAR(500)) AS "w", 
   5 AS "dQuestType", NULL AS "dLang", CAST(var5 AS VARCHAR(500)) AS "d"
FROM (
 (
SELECT DISTINCT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."WELLBORE_MUD_ID" as var1, 
   QVIEW1."WLBMUDDATEMEASURED" as var2, 
   QVIEW2."WLBMUDTYPE" as var3, 
   QVIEW3."WLBMUDWEIGHTATMD" as var4, 
   QVIEW3."WLBMD" as var5
 FROM 

        (
        "PUBLIC"."WELLBORE_MUD" QVIEW1
        LEFT OUTER JOIN
        
                (
                "PUBLIC"."WELLBORE_MUD" QVIEW2
                LEFT OUTER JOIN
                "PUBLIC"."WELLBORE_MUD" QVIEW3
                ON
                QVIEW3."WLBMUDWEIGHTATMD" IS NOT NULL AND
                QVIEW3."WLBMD" IS NOT NULL
                 )
        ON
        QVIEW1."WELLBORE_MUD_ID" IS NOT NULL AND
        (QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
        (QVIEW1."WELLBORE_MUD_ID" = QVIEW2."WELLBORE_MUD_ID") AND
        QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
        QVIEW2."WLBMUDTYPE" IS NOT NULL AND
        (QVIEW1."WELLBORE_MUD_ID" = QVIEW3."WELLBORE_MUD_ID") AND
        (QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE")
         )
WHERE 
(QVIEW1."WLBMUDDATEMEASURED" > '1986-08-25 00:00:00') AND
QVIEW1."WELLBORE_MUD_ID" IS NOT NULL AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
('9999-12-31' <> QVIEW1."WLBMUDDATEMEASURED") AND
QVIEW1."WLBMUDDATEMEASURED" IS NOT NULL
 ) 
 
 ) SUBQALIAS