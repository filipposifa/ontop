SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://sws.ifi.uio.no/data/npd-v2/survey/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   4 AS "cdpKMQuestType", NULL AS "cdpKMLang", CAST(var1 AS VARCHAR(10485760)) AS "cdpKM", 
   4 AS "boatKMQuestType", NULL AS "boatKMLang", CAST(var2 AS VARCHAR(10485760)) AS "boatKM"
FROM (
 (
SELECT DISTINCT 
   qview1."seaName" as var0, 
   qview2."seaCdpTotalKm" as var1, 
   qview3."seaBoatTotalKm" as var2
 FROM 

        (
        
                (
                "public"."seis_acquisition" qview1
                LEFT OUTER JOIN
                "public"."seis_acquisition" qview2
                ON
                (qview1."seaName" = qview2."seaName") AND
                qview2."seaCdpTotalKm" IS NOT NULL AND
                qview1."seaName" IS NOT NULL
                 )
        LEFT OUTER JOIN
        "public"."seis_acquisition" qview3
        ON
        (qview1."seaName" = qview3."seaName") AND
        qview3."seaBoatTotalKm" IS NOT NULL AND
        qview1."seaName" IS NOT NULL
         )
WHERE 
(qview2."seaCdpTotalKm" > 3660) AND
qview1."seaName" IS NOT NULL
 ) 
 
 ) SUBQALIAS