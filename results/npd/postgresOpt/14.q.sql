SELECT *
FROM (
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/test/mud/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(var2 AS VARCHAR(10485760)) AS "date", 
   7 AS "typeQuestType", NULL AS "typeLang", CAST(var3 AS VARCHAR(10485760)) AS "type", 
   5 AS "wQuestType", NULL AS "wLang", CAST(var4 AS VARCHAR(10485760)) AS "w", 
   5 AS "dQuestType", NULL AS "dLang", CAST(var5 AS VARCHAR(10485760)) AS "d"
FROM (
 (
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."wellbore_mud_id" as var1, 
   qview1."wlbMudDateMeasured" as var2, 
   qview2."wlbMudType" as var3, 
   qview3."wlbMudWeightAtMD" as var4, 
   qview3."wlbMD" as var5
 FROM 

        (
        "public"."wellbore_mud" qview1
        LEFT OUTER JOIN
        
                (
                "public"."wellbore_mud" qview2
                LEFT OUTER JOIN
                "public"."wellbore_mud" qview3
                ON
                qview3."wlbMudWeightAtMD" IS NOT NULL AND
                qview3."wlbMD" IS NOT NULL
                 )
        ON
        (qview1."wellbore_mud_id" = qview2."wellbore_mud_id") AND
        qview1."wlbNpdidWellbore" IS NOT NULL AND
        (qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
        qview2."wlbMudType" IS NOT NULL AND
        qview1."wellbore_mud_id" IS NOT NULL AND
        (qview1."wellbore_mud_id" = qview3."wellbore_mud_id") AND
        (qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore")
         )
WHERE 
(qview1."wlbMudDateMeasured" > '1986-08-25 00:00:00') AND
('9999-12-31' <> qview1."wlbMudDateMeasured") AND
qview1."wlbMudDateMeasured" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wellbore_mud_id" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

