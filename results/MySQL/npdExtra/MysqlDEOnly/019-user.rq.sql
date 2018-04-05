CREATE TEMPORARY TABLE viewtable1149 AS select distinct alias0.`tufNpdidTuf` as "tufNpdidTuf" from 
`tuf_operator_hst` alias0 
where 
alias0.`tufNpdidTuf` IS NOT NULL

create temporary table viewtable1150 as select * from viewtable1149;
create temporary table viewtable1151 as select * from viewtable1149;
CREATE TEMPORARY TABLE viewtable1153 AS select distinct alias1.`tufNpdidTuf` as "tufNpdidTuf" from 
`tuf_owner_hst` alias1 
where 
alias1.`tufNpdidTuf` IS NOT NULL

create temporary table viewtable1154 as select * from viewtable1153;
create temporary table viewtable1155 as select * from viewtable1153;
create temporary table viewtable1156 as select * from viewtable1153;
CREATE TEMPORARY TABLE viewtable1158 AS select distinct alias5.`tufNpdidTuf` as "tufNpdidTuf" from 
`tuf_operator_hst` alias5 
where 
alias5.`tufNpdidTuf` IS NOT NULL

SELECT *
FROM (
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
viewtable1149 QVIEW2
WHERE 
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
viewtable1153 QVIEW2
WHERE 
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
viewtable1158 QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
viewtable1154 QVIEW2
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
viewtable1150 QVIEW2
WHERE 
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
viewtable1155 QVIEW2
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
viewtable1151 QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
UNION
SELECT 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
viewtable1156 QVIEW2
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

