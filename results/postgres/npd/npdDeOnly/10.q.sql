SELECT *
FROM (
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_development_all" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_development_all" qview3,
"public"."field" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."field" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."field" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."discovery" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."field" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."discovery" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."field" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."field" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."field" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."field" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."discovery" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."field" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."discovery" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."field" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_development_all" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_development_all" qview3,
"public"."field" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."field" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."field" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."discovery" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."field" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."discovery" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."field" qview5
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."discovery" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS "dateQuestType", NULL AS "dateLang", CAST(qview1."wlbDateUpdated" AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."field" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00')
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

