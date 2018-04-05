SELECT *
FROM (
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_petreg_licence` QVIEW1
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`pipName` AS `facility`
 FROM 
`pipLine` QVIEW1
WHERE 
QVIEW1.`pipName` IS NOT NULL AND
QVIEW1.`pipNpdidPipe` IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW.`facility`

