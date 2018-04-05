CREATE TEMPORARY TABLE viewtable613 AS select distinct alias0."tufName" as "tufName" from 
"public"."tuf_operator_hst" alias0 
where 
alias0."tufNpdidTuf" IS NOT NULL and 
alias0."tufName" IS NOT NULL

CREATE TEMPORARY TABLE viewtable614 AS select distinct alias1."tufNpdidTuf" as "tufNpdidTuf" from 
"public"."tuf_owner_hst" alias1 
where 
alias1."tufNpdidTuf" IS NOT NULL

CREATE TEMPORARY TABLE viewtable615 AS select distinct alias0."tufNpdidTuf" as "tufNpdidTuf" from 
"public"."tuf_operator_hst" alias0 
where 
alias0."tufNpdidTuf" IS NOT NULL

CREATE TEMPORARY TABLE viewtable616 AS select distinct alias1."tufName" as "tufName" from 
"public"."tuf_owner_hst" alias1 
where 
alias1."tufNpdidTuf" IS NOT NULL and 
alias1."tufName" IS NOT NULL

SELECT *
FROM (
SELECT

   7 AS "facilityQuestType", NULL AS "facilityLang", CAST(var0 AS VARCHAR(10485760)) AS "facility"
FROM (
 (
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_fixed" qview1,
viewtable614 qview2
WHERE 
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf"))
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility"))
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_operator_hst" qview1,
viewtable614 qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf"))
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility"))
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_fixed" qview1,
viewtable615 qview2
WHERE 
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf"))
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_fixed" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility"))
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
viewtable613 qview1)
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
viewtable616 qview1)
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_moveable" qview1,
viewtable615 qview2
WHERE 
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf"))
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_moveable" qview1,
"public"."facility_fixed" qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility"))
 
UNION
(
SELECT 
   qview1."pipName" as var0
 FROM 
"public"."pipLine" qview1
WHERE 
qview1."pipName" IS NOT NULL AND
qview1."pipNpdidPipe" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_owner_hst" qview1,
viewtable615 qview2
WHERE 
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."tufNpdidTuf"))
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility"))
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_moveable" qview1,
viewtable614 qview2
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview1."fclNpdidFacility" = qview2."tufNpdidTuf"))
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_fixed" qview1
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_fixed" qview2
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility"))
 
UNION
(
SELECT 
   qview1."tufName" as var0
 FROM 
"public"."tuf_petreg_licence" qview1
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."fclName" as var0
 FROM 
"public"."facility_moveable" qview1
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."facility"

