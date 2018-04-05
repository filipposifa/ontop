SELECT *
FROM (
SELECT

   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(var0 AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `wellbore`
FROM (
 (
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_development_all` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_development_all` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_shallow_all` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
`wellbore_development_all` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_npdid_overview` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_exploration_all` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
`wellbore_npdid_overview` QVIEW3,
`field` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`wellbore_development_all` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
`wellbore_shallow_all` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW2.`wlbWellboreName` as var1
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_exploration_all` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW1.`wlbWellboreName` as var1
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00'))
 
UNION
(
SELECT 
   QVIEW1.`wlbDateUpdated` as var0, 
   QVIEW3.`wlbWellboreName` as var1
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
`wellbore_development_all` QVIEW3,
`discovery` QVIEW4
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

