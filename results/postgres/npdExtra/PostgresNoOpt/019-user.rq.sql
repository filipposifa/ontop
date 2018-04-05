SELECT *
FROM (
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_moveable" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_moveable" qview1
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_petreg_licence" qview1
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_operator_hst" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_fixed" qview1,
"public"."tuf_owner_hst" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_fixed" qview1
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."pipName" AS "facility"
 FROM 
"public"."pipLine" qview1
WHERE 
qview1."pipName" IS NOT NULL AND
qview1."pipNpdidPipe" IS NOT NULL
) SUB_QVIEW
ORDER BY SUB_QVIEW."facility"

