SELECT *
FROM (
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_owner_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_fixed` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Singapore') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Panama') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Liberia') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Russian federation') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Bahamas') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'China') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'NORWAY') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`tufNpdidTuf` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`tufName` AS `facility`
 FROM 
`tuf_operator_hst` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`tufNpdidTuf` IS NOT NULL AND
QVIEW1.`tufName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Denmark') AND
(QVIEW1.`tufNpdidTuf` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`tufNpdidTuf` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_owner_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`tuf_operator_hst` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1,
`facility_fixed` QVIEW2
WHERE 
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Singapore') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'GREAT BRITAIN') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Panama') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Liberia') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Russian federation') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Bahamas') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Marshall islands') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'China') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'NORWAY') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_moveable` QVIEW1
WHERE 
(QVIEW1.`fclNationName` = 'Denmark') AND
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_owner_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Singapore') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Panama') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Liberia') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Russian federation') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Bahamas') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'China') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'NORWAY') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`tuf_operator_hst` QVIEW2,
`facility_moveable` QVIEW3
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`tufNpdidTuf`) AND
(QVIEW3.`fclNationName` = 'Denmark') AND
(QVIEW1.`fclNpdidFacility` = QVIEW3.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Singapore') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Panama') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Liberia') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Russian federation') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Bahamas') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'China') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'NORWAY') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Denmark') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Singapore' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Singapore') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Great_Britain' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'GREAT BRITAIN') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Panama' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Panama') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Liberia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Liberia') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Russia' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Russian federation') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/The_Bahamas' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Bahamas') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Marshall_Islands' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Marshall islands') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/China' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'China') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Norway' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'NORWAY') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
UNION
SELECT 
   1 AS `countryQuestType`, NULL AS `countryLang`, 'http://dbpedia.org/resource/Denmark' AS `country`, 
   4 AS `idQuestType`, NULL AS `idLang`, CAST(QVIEW1.`fclNpdidFacility` AS CHAR(8000) CHARACTER SET utf8) AS `id`, 
   7 AS `facilityQuestType`, NULL AS `facilityLang`, QVIEW1.`fclName` AS `facility`
 FROM 
`facility_fixed` QVIEW1,
`facility_moveable` QVIEW2
WHERE 
QVIEW1.`fclNpdidFacility` IS NOT NULL AND
QVIEW1.`fclName` IS NOT NULL AND
(QVIEW2.`fclNationName` = 'Denmark') AND
(QVIEW1.`fclNpdidFacility` = QVIEW2.`fclNpdidFacility`) AND
(QVIEW1.`fclNpdidFacility` > 300000)
) SUB_QVIEW
ORDER BY SUB_QVIEW.`facility`

