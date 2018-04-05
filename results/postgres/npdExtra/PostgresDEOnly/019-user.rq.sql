CREATE TEMPORARY TABLE viewtable1073 AS select distinct alias5."tufNpdidTuf" as "tufNpdidTuf" from 
"public"."tuf_operator_hst" alias5 
where 
alias5."tufNpdidTuf" IS NOT NULL

CREATE TEMPORARY TABLE viewtable1074 AS select distinct alias1."tufNpdidTuf" as "tufNpdidTuf" from 
"public"."tuf_owner_hst" alias1 
where 
alias1."tufNpdidTuf" IS NOT NULL

CREATE TEMPORARY TABLE viewtable1075 AS select distinct alias2."tufNpdidTuf" as "tufNpdidTuf" from 
"public"."tuf_owner_hst" alias2 
where 
alias2."tufNpdidTuf" IS NOT NULL

CREATE TEMPORARY TABLE viewtable1076 AS select distinct alias0."tufNpdidTuf" as "tufNpdidTuf" from 
"public"."tuf_operator_hst" alias0 
where 
alias0."tufNpdidTuf" IS NOT NULL

SELECT *
FROM (
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_owner_hst" qview1,
viewtable1076 qview2
WHERE 
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_owner_hst" qview1,
viewtable1075 qview2
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
viewtable1073 qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."tufName" AS "facility"
 FROM 
"public"."tuf_operator_hst" qview1,
viewtable1074 qview2
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
viewtable1076 qview2
WHERE 
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_moveable" qview1,
viewtable1074 qview2
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
viewtable1076 qview2
WHERE 
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf")
UNION
SELECT 
   7 AS "facilityQuestType", NULL AS "facilityLang", qview1."fclName" AS "facility"
 FROM 
"public"."facility_fixed" qview1,
viewtable1074 qview2
WHERE 
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

