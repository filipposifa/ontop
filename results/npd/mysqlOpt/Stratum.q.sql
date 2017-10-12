CREATE TEMPORARY TABLE viewtable522 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PLIOCENE' or (alias2.`wlbAgeWithHc2` = 'PLIOCENE' or (alias2.`wlbAgeWithHc1` = 'PLIOCENE' or alias2.`wlbAgeAtTd` = 'PLIOCENE')));
create temporary table viewtable523 as select * from viewtable522;
CREATE TEMPORARY TABLE viewtable525 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'OLIGOCENE' or (alias2.`wlbAgeWithHc2` = 'OLIGOCENE' or (alias2.`wlbAgeWithHc1` = 'OLIGOCENE' or alias2.`wlbAgeAtTd` = 'OLIGOCENE')));
create temporary table viewtable526 as select * from viewtable525;
CREATE TEMPORARY TABLE viewtable528 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'CAMPANIAN' or (alias2.`wlbAgeWithHc2` = 'CAMPANIAN' or (alias2.`wlbAgeWithHc1` = 'CAMPANIAN' or alias2.`wlbAgeAtTd` = 'CAMPANIAN')));
create temporary table viewtable529 as select * from viewtable528;
CREATE TEMPORARY TABLE viewtable531 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY CRETACEOUS' or (alias2.`wlbAgeWithHc2` = 'EARLY CRETACEOUS' or (alias2.`wlbAgeWithHc1` = 'EARLY CRETACEOUS' or alias2.`wlbAgeAtTd` = 'EARLY CRETACEOUS')));
create temporary table viewtable532 as select * from viewtable531;
CREATE TEMPORARY TABLE viewtable534 AS select distinct alias1.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias1 
where 
alias1.`lsuNpdidLithoStratParent` IS NOT NULL and 
alias1.`lsuNpdidLithoStratParent` IS NOT NULL;
create temporary table viewtable535 as select * from viewtable534;
create temporary table viewtable536 as select * from viewtable534;
create temporary table viewtable537 as select * from viewtable534;
create temporary table viewtable538 as select * from viewtable534;
create temporary table viewtable539 as select * from viewtable534;
create temporary table viewtable540 as select * from viewtable534;
create temporary table viewtable541 as select * from viewtable534;
create temporary table viewtable542 as select * from viewtable534;
create temporary table viewtable543 as select * from viewtable534;
create temporary table viewtable544 as select * from viewtable534;
CREATE TEMPORARY TABLE viewtable546 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'JURASSIC' or (alias2.`wlbAgeWithHc2` = 'JURASSIC' or (alias2.`wlbAgeWithHc1` = 'JURASSIC' or alias2.`wlbAgeAtTd` = 'JURASSIC')));
create temporary table viewtable547 as select * from viewtable546;
CREATE TEMPORARY TABLE viewtable549 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EOCENE' or (alias2.`wlbAgeWithHc2` = 'EOCENE' or (alias2.`wlbAgeWithHc1` = 'EOCENE' or alias2.`wlbAgeAtTd` = 'EOCENE')));
create temporary table viewtable550 as select * from viewtable549;
CREATE TEMPORARY TABLE viewtable552 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'MIDDLE TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'MIDDLE TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'MIDDLE TRIASSIC' or alias2.`wlbAgeAtTd` = 'MIDDLE TRIASSIC')));
create temporary table viewtable553 as select * from viewtable552;
CREATE TEMPORARY TABLE viewtable555 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY PERMIAN' or (alias2.`wlbAgeWithHc2` = 'EARLY PERMIAN' or (alias2.`wlbAgeWithHc1` = 'EARLY PERMIAN' or alias2.`wlbAgeAtTd` = 'EARLY PERMIAN')));
create temporary table viewtable556 as select * from viewtable555;
CREATE TEMPORARY TABLE viewtable558 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'MIOCENE' or (alias2.`wlbAgeWithHc2` = 'MIOCENE' or (alias2.`wlbAgeWithHc1` = 'MIOCENE' or alias2.`wlbAgeAtTd` = 'MIOCENE')));
create temporary table viewtable559 as select * from viewtable558;
CREATE TEMPORARY TABLE viewtable561 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'TRIASSIC' or alias2.`wlbAgeAtTd` = 'TRIASSIC')));
create temporary table viewtable562 as select * from viewtable561;
CREATE TEMPORARY TABLE viewtable564 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'EARLY TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'EARLY TRIASSIC' or alias2.`wlbAgeAtTd` = 'EARLY TRIASSIC')));
create temporary table viewtable565 as select * from viewtable564;
CREATE TEMPORARY TABLE viewtable567 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'DEVONIAN' or (alias2.`wlbAgeWithHc2` = 'DEVONIAN' or (alias2.`wlbAgeWithHc1` = 'DEVONIAN' or alias2.`wlbAgeAtTd` = 'DEVONIAN')));
create temporary table viewtable568 as select * from viewtable567;
CREATE TEMPORARY TABLE viewtable570 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'CARBONIFEROUS' or (alias2.`wlbAgeWithHc2` = 'CARBONIFEROUS' or (alias2.`wlbAgeWithHc1` = 'CARBONIFEROUS' or alias2.`wlbAgeAtTd` = 'CARBONIFEROUS')));
create temporary table viewtable571 as select * from viewtable570;
CREATE TEMPORARY TABLE viewtable573 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE CARBONIFEROUS' or (alias2.`wlbAgeWithHc2` = 'LATE CARBONIFEROUS' or (alias2.`wlbAgeWithHc1` = 'LATE CARBONIFEROUS' or alias2.`wlbAgeAtTd` = 'LATE CARBONIFEROUS')));
create temporary table viewtable574 as select * from viewtable573;
CREATE TEMPORARY TABLE viewtable576 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY CARBONIFEROUS' or (alias2.`wlbAgeWithHc2` = 'EARLY CARBONIFEROUS' or (alias2.`wlbAgeWithHc1` = 'EARLY CARBONIFEROUS' or alias2.`wlbAgeAtTd` = 'EARLY CARBONIFEROUS')));
create temporary table viewtable577 as select * from viewtable576;
CREATE TEMPORARY TABLE viewtable579 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'SILURIAN' or (alias2.`wlbAgeWithHc2` = 'SILURIAN' or (alias2.`wlbAgeWithHc1` = 'SILURIAN' or alias2.`wlbAgeAtTd` = 'SILURIAN')));
create temporary table viewtable580 as select * from viewtable579;
CREATE TEMPORARY TABLE viewtable582 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PERMIAN' or (alias2.`wlbAgeWithHc2` = 'PERMIAN' or (alias2.`wlbAgeWithHc1` = 'PERMIAN' or alias2.`wlbAgeAtTd` = 'PERMIAN')));
create temporary table viewtable583 as select * from viewtable582;
CREATE TEMPORARY TABLE viewtable585 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'CRETACEOUS' or (alias2.`wlbAgeWithHc2` = 'CRETACEOUS' or (alias2.`wlbAgeWithHc1` = 'CRETACEOUS' or alias2.`wlbAgeAtTd` = 'CRETACEOUS')));
create temporary table viewtable586 as select * from viewtable585;
CREATE TEMPORARY TABLE viewtable588 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE PALEOCENE' or (alias2.`wlbAgeWithHc2` = 'LATE PALEOCENE' or (alias2.`wlbAgeWithHc1` = 'LATE PALEOCENE' or alias2.`wlbAgeAtTd` = 'LATE PALEOCENE')));
create temporary table viewtable589 as select * from viewtable588;
CREATE TEMPORARY TABLE viewtable591 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE CRETACEOUS' or (alias2.`wlbAgeWithHc2` = 'LATE CRETACEOUS' or (alias2.`wlbAgeWithHc1` = 'LATE CRETACEOUS' or alias2.`wlbAgeAtTd` = 'LATE CRETACEOUS')));
create temporary table viewtable592 as select * from viewtable591;
CREATE TEMPORARY TABLE viewtable594 AS select distinct alias0.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias0;
create temporary table viewtable595 as select * from viewtable594;
create temporary table viewtable596 as select * from viewtable594;
create temporary table viewtable597 as select * from viewtable594;
create temporary table viewtable598 as select * from viewtable594;
create temporary table viewtable599 as select * from viewtable594;
create temporary table viewtable600 as select * from viewtable594;
create temporary table viewtable601 as select * from viewtable594;
create temporary table viewtable602 as select * from viewtable594;
create temporary table viewtable603 as select * from viewtable594;
create temporary table viewtable604 as select * from viewtable594;
create temporary table viewtable605 as select * from viewtable594;
create temporary table viewtable606 as select * from viewtable594;
create temporary table viewtable607 as select * from viewtable594;
create temporary table viewtable608 as select * from viewtable594;
create temporary table viewtable609 as select * from viewtable594;
create temporary table viewtable610 as select * from viewtable594;
create temporary table viewtable611 as select * from viewtable594;
CREATE TEMPORARY TABLE viewtable613 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'DANIAN' or (alias2.`wlbAgeWithHc2` = 'DANIAN' or (alias2.`wlbAgeWithHc1` = 'DANIAN' or alias2.`wlbAgeAtTd` = 'DANIAN')));
create temporary table viewtable614 as select * from viewtable613;
CREATE TEMPORARY TABLE viewtable616 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PLEISTOCENE' or (alias2.`wlbAgeWithHc2` = 'PLEISTOCENE' or (alias2.`wlbAgeWithHc1` = 'PLEISTOCENE' or alias2.`wlbAgeAtTd` = 'PLEISTOCENE')));
create temporary table viewtable617 as select * from viewtable616;
CREATE TEMPORARY TABLE viewtable619 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE JURASSIC' or (alias2.`wlbAgeWithHc2` = 'LATE JURASSIC' or (alias2.`wlbAgeWithHc1` = 'LATE JURASSIC' or alias2.`wlbAgeAtTd` = 'LATE JURASSIC')));
create temporary table viewtable620 as select * from viewtable619;
CREATE TEMPORARY TABLE viewtable622 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY JURASSIC' or (alias2.`wlbAgeWithHc2` = 'EARLY JURASSIC' or (alias2.`wlbAgeWithHc1` = 'EARLY JURASSIC' or alias2.`wlbAgeAtTd` = 'EARLY JURASSIC')));
create temporary table viewtable623 as select * from viewtable622;
CREATE TEMPORARY TABLE viewtable625 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE PLIOCENE' or (alias2.`wlbAgeWithHc2` = 'LATE PLIOCENE' or (alias2.`wlbAgeWithHc1` = 'LATE PLIOCENE' or alias2.`wlbAgeAtTd` = 'LATE PLIOCENE')));
create temporary table viewtable626 as select * from viewtable625;
CREATE TEMPORARY TABLE viewtable628 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE PERMIAN' or (alias2.`wlbAgeWithHc2` = 'LATE PERMIAN' or (alias2.`wlbAgeWithHc1` = 'LATE PERMIAN' or alias2.`wlbAgeAtTd` = 'LATE PERMIAN')));
create temporary table viewtable629 as select * from viewtable628;
CREATE TEMPORARY TABLE viewtable631 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PALEOCENE' or (alias2.`wlbAgeWithHc2` = 'PALEOCENE' or (alias2.`wlbAgeWithHc1` = 'PALEOCENE' or alias2.`wlbAgeAtTd` = 'PALEOCENE')));
create temporary table viewtable632 as select * from viewtable631;
CREATE TEMPORARY TABLE viewtable634 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'MIDDLE JURASSIC' or (alias2.`wlbAgeWithHc2` = 'MIDDLE JURASSIC' or (alias2.`wlbAgeWithHc1` = 'MIDDLE JURASSIC' or alias2.`wlbAgeAtTd` = 'MIDDLE JURASSIC')));
create temporary table viewtable635 as select * from viewtable634;
CREATE TEMPORARY TABLE viewtable637 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'LATE TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'LATE TRIASSIC' or alias2.`wlbAgeAtTd` = 'LATE TRIASSIC')));
create temporary table viewtable638 as select * from viewtable637;
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable579 QVIEW2,
viewtable595 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable580 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable543 QVIEW2,
viewtable576 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable577 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable603 QVIEW2,
viewtable619 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable620 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable556 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable555 QVIEW2,
viewtable606 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable600 QVIEW2,
viewtable637 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable638 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable570 QVIEW2,
viewtable611 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable571 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable586 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable585 QVIEW2,
viewtable610 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable553 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable537 QVIEW2,
viewtable552 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable626 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable538 QVIEW2,
viewtable625 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable635 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable599 QVIEW2,
viewtable634 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable623 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable607 QVIEW2,
viewtable622 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable589 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable588 QVIEW2,
viewtable602 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable539 QVIEW2,
viewtable573 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable574 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable536 QVIEW2,
viewtable631 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable632 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable547 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable540 QVIEW2,
viewtable546 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable614 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable609 QVIEW2,
viewtable613 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable526 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable525 QVIEW2,
viewtable597 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable562 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable561 QVIEW2,
viewtable594 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable582 QVIEW2,
viewtable596 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable583 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable629 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable601 QVIEW2,
viewtable628 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable529 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable528 QVIEW2,
viewtable544 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable558 QVIEW2,
viewtable598 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable559 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable591 QVIEW2,
viewtable604 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable592 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable550 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable549 QVIEW2,
viewtable605 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable522 QVIEW2,
viewtable534 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable523 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable565 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable541 QVIEW2,
viewtable564 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable532 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable531 QVIEW2,
viewtable542 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable535 QVIEW2,
viewtable616 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable617 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `era`
FROM (
 (
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable568 QVIEW2
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`))
 
UNION
(
SELECT 
   QVIEW1.`lsuNpdidLithoStrat` as var0
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable567 QVIEW2,
viewtable608 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
 ) 
 
 ) SUBQALIAS