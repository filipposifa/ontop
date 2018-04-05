CREATE TEMPORARY TABLE viewtable661 AS select distinct alias0.`tufNpdidTuf` as "tufNpdidTuf" from 
`tuf_operator_hst` alias0 
where 
alias0.`tufNpdidTuf` IS NOT NULL

create temporary table viewtable662 as select * from viewtable661;
create temporary table viewtable663 as select * from viewtable661;
CREATE TEMPORARY TABLE viewtable665 AS select distinct alias1.`tufNpdidTuf` as "tufNpdidTuf" from 
`tuf_owner_hst` alias1 
where 
alias1.`tufNpdidTuf` IS NOT NULL

create temporary table viewtable666 as select * from viewtable665;
create temporary table viewtable667 as select * from viewtable665;
CREATE TEMPORARY TABLE viewtable669 AS select distinct alias0.`tufName` as "tufName" from 
`tuf_operator_hst` alias0 
where 
alias0.`tufNpdidTuf` IS NOT NULL and 
alias0.`tufName` IS NOT NULL

CREATE TEMPORARY TABLE viewtable671 AS select distinct alias1.`tufName` as "tufName" from 
`tuf_owner_hst` alias1 
where 
alias1.`tufNpdidTuf` IS NOT NULL and 
alias1.`tufName` IS NOT NULL

SELECT *
FROM (
SELECT

   7 AS `facilityQuestType`, NULL AS `facilityLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `facility`
FROM (
 (
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`))
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_moveable` QVIEW1,
viewtable662 QVIEW2
WHERE 
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`))
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_fixed` QVIEW1
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_petreg_licence` QVIEW1
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
viewtable671 QVIEW1)
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_owner_hst` QVIEW1,
viewtable661 QVIEW2
WHERE 
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`))
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
viewtable669 QVIEW1)
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`))
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_operator_hst` QVIEW1,
viewtable665 QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`))
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`))
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_moveable` QVIEW1,
viewtable666 QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`))
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`))
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_fixed` QVIEW1,
viewtable667 QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`))
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_moveable` QVIEW1
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`pipName` as var0
 FROM 
`pipLine` QVIEW1
WHERE 
QVIEW1.`pipName` IS NOT NULL AND
QVIEW1.`pipNpdidPipe` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`))
 
UNION
(
SELECT 
   QVIEW1.`tufName` as var0
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`))
 
UNION
(
SELECT 
   QVIEW1.`fclName` as var0
 FROM 
`facility_fixed` QVIEW1,
viewtable663 QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`facility`

