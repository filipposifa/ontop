SELECT *
FROM (
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
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
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_shallow_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_development_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
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
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
`discovery` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`discovery` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW1.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
`field` QVIEW3
WHERE 
('9999-12-31' <> QVIEW1.`wlbDateUpdated`) AND
QVIEW1.`wlbDateUpdated` IS NOT NULL AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW1.`wlbWellboreName` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
UNION
SELECT 
   8 AS `dateQuestType`, NULL AS `dateLang`, CAST(QVIEW1.`wlbDateUpdated` AS CHAR(8000) CHARACTER SET utf8) AS `date`, 
   7 AS `wellboreQuestType`, NULL AS `wellboreLang`, QVIEW3.`wlbWellboreName` AS `wellbore`
 FROM 
`wellbore_exploration_all` QVIEW1,
`field` QVIEW2,
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
(QVIEW1.`wlbDateUpdated` > '2013-01-01 00:00:00')
) SUB_QVIEW
ORDER BY SUB_QVIEW.`wellbore`

