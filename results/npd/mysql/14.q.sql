SELECT DISTINCT 
   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNpdidWellbore` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/test/mud/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wellbore_mud_id` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbMudDateMeasured` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `typeQuestType`, NULL AS `typeLang`, QVIEW2.`wlbMudType` AS `type`, 
   5 AS `wQuestType`, NULL AS `wLang`, CAST(QVIEW3.`wlbMudWeightAtMD` AS CHAR(8000) CHARACTER SET utf8) AS `w`, 
   5 AS `dQuestType`, NULL AS `dLang`, CAST(QVIEW3.`wlbMD` AS CHAR(8000) CHARACTER SET utf8) AS `d`
 FROM 

        (
        `wellbore_mud` QVIEW1
        LEFT OUTER JOIN
        
                (
                `wellbore_mud` QVIEW2
                LEFT OUTER JOIN
                `wellbore_mud` QVIEW3
                ON
                QVIEW3.`wlbMudWeightAtMD` IS NOT NULL AND
                QVIEW3.`wlbMD` IS NOT NULL
                 )
        ON
        QVIEW2.`wlbMudType` IS NOT NULL AND
        (QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
        QVIEW1.`wellbore_mud_id` IS NOT NULL AND
        (QVIEW1.`wellbore_mud_id` = QVIEW2.`wellbore_mud_id`) AND
        QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
        (QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
        (QVIEW1.`wellbore_mud_id` = QVIEW3.`wellbore_mud_id`)
         )
WHERE 
(QVIEW1.`wlbMudDateMeasured` > '1986-08-25 00:00:00') AND
QVIEW1.`wellbore_mud_id` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
('9999-12-31' <> QVIEW1.`wlbMudDateMeasured`) AND
QVIEW1.`wlbMudDateMeasured` IS NOT NULL