SELECT *
FROM (
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Great_Britain' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'GREAT BRITAIN') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'GREAT BRITAIN') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'GREAT BRITAIN') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'GREAT BRITAIN') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Denmark' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Denmark') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Denmark') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Denmark') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Denmark') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Liberia' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Liberia') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Liberia') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Liberia') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Liberia') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/The_Bahamas' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Bahamas') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Bahamas') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Bahamas') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Bahamas') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Panama' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Panama') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Panama') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Panama') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Panama') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Norway' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'NORWAY') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'NORWAY') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'NORWAY') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'NORWAY') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Russia' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Russian federation') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Russian federation') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Russian federation') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Russian federation') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Singapore' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Singapore') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Singapore') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Singapore') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Singapore') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/China' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'China') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'China') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'China') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'China') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "countryQuestType", NULL AS "countryLang", 'http://dbpedia.org/resource/Marshall_Islands' AS "country", 
   4 AS "idQuestType", NULL AS "idLang", CAST(var0 AS VARCHAR(10485760)) AS "id", 
   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var1 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
(qview1."fclNationName" = 'Marshall islands') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
(qview1."fclNationName" = 'Marshall islands') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview3."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."tufNpdidTuf" as var0, 
   qview1."tufName" as var1
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2,
"public"."facility_moveable" qview3
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf") AND
(qview3."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
(qview1."fclNationName" = 'Marshall islands') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf") AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_moveable" qview1
WHERE 
(qview1."fclNationName" = 'Marshall islands') AND
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" > 300000))
 
UNION
(
SELECT 
   qview1."fclNpdidFacility" as var0, 
   qview1."fclName" as var1
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" > 300000)
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."facility"

