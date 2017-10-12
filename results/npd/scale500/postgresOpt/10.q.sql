SELECT *
FROM (
SELECT

   8 AS "dateQuestType", NULL AS "dateLang", CAST(var0 AS VARCHAR(10485760)) AS "date", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(var1 AS VARCHAR(10485760)) AS "wellbore"
FROM (
 (
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview4."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview4."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."discovery" qview2
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview4."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."field" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."field" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."discovery" qview2
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview4."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview4."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."field" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."field" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."field" qview4
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."field" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview4."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview2."wlbWellboreName" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."discovery" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview1."wlbWellboreName" as var1
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."field" qview3
WHERE 
('9999-12-31' <> qview1."wlbDateUpdated") AND
qview1."wlbDateUpdated" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbDateUpdated" > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   qview1."wlbDateUpdated" as var0, 
   qview3."wlbWellboreName" as var1
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
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

