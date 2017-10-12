SELECT DISTINCT 
   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/survey/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(QVIEW1.`seaName`, ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   4 AS `cdpKMQuestType`, NULL AS `cdpKMLang`, CAST(QVIEW2.`seaCdpTotalKm` AS CHAR(8000) CHARACTER SET utf8) AS `cdpKM`, 
   4 AS `boatKMQuestType`, NULL AS `boatKMLang`, CAST(QVIEW3.`seaBoatTotalKm` AS CHAR(8000) CHARACTER SET utf8) AS `boatKM`
 FROM 

        (
        
                (
                `seis_acquisition` QVIEW1
                LEFT OUTER JOIN
                `seis_acquisition` QVIEW2
                ON
                (QVIEW1.`seaName` = QVIEW2.`seaName`) AND
                QVIEW2.`seaCdpTotalKm` IS NOT NULL AND
                QVIEW1.`seaName` IS NOT NULL
                 )
        LEFT OUTER JOIN
        `seis_acquisition` QVIEW3
        ON
        (QVIEW1.`seaName` = QVIEW3.`seaName`) AND
        QVIEW3.`seaBoatTotalKm` IS NOT NULL AND
        QVIEW1.`seaName` IS NOT NULL
         )
WHERE 
(QVIEW2.`seaCdpTotalKm` > 3660) AND
QVIEW1.`seaName` IS NOT NULL