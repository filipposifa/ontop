CREATE TEMPORARY TABLE viewtable8058 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'EARLY TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'EARLY TRIASSIC' or alias2.`wlbAgeAtTd` = 'EARLY TRIASSIC')))

create temporary table viewtable8059 as select * from viewtable8058;
CREATE TEMPORARY TABLE viewtable8061 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'DEVONIAN' or (alias2.`wlbAgeWithHc2` = 'DEVONIAN' or (alias2.`wlbAgeWithHc1` = 'DEVONIAN' or alias2.`wlbAgeAtTd` = 'DEVONIAN')))

create temporary table viewtable8062 as select * from viewtable8061;
CREATE TEMPORARY TABLE viewtable8064 AS select distinct alias1.`lsuNpdidLithoStrat` as "lsuNpdidLithoStrat" from 
`wellbore_formation_top` alias1 
where 
alias1.`lsuNpdidLithoStrat` IS NOT NULL

create temporary table viewtable8065 as select * from viewtable8064;
create temporary table viewtable8066 as select * from viewtable8064;
create temporary table viewtable8067 as select * from viewtable8064;
create temporary table viewtable8068 as select * from viewtable8064;
create temporary table viewtable8069 as select * from viewtable8064;
create temporary table viewtable8070 as select * from viewtable8064;
create temporary table viewtable8071 as select * from viewtable8064;
create temporary table viewtable8072 as select * from viewtable8064;
create temporary table viewtable8073 as select * from viewtable8064;
create temporary table viewtable8074 as select * from viewtable8064;
create temporary table viewtable8075 as select * from viewtable8064;
create temporary table viewtable8076 as select * from viewtable8064;
create temporary table viewtable8077 as select * from viewtable8064;
create temporary table viewtable8078 as select * from viewtable8064;
create temporary table viewtable8079 as select * from viewtable8064;
create temporary table viewtable8080 as select * from viewtable8064;
create temporary table viewtable8081 as select * from viewtable8064;
CREATE TEMPORARY TABLE viewtable8083 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE PLIOCENE' or (alias2.`wlbAgeWithHc2` = 'LATE PLIOCENE' or (alias2.`wlbAgeWithHc1` = 'LATE PLIOCENE' or alias2.`wlbAgeAtTd` = 'LATE PLIOCENE')))

create temporary table viewtable8084 as select * from viewtable8083;
CREATE TEMPORARY TABLE viewtable8086 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE PALEOCENE' or (alias2.`wlbAgeWithHc2` = 'LATE PALEOCENE' or (alias2.`wlbAgeWithHc1` = 'LATE PALEOCENE' or alias2.`wlbAgeAtTd` = 'LATE PALEOCENE')))

create temporary table viewtable8087 as select * from viewtable8086;
CREATE TEMPORARY TABLE viewtable8089 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'CARBONIFEROUS' or (alias2.`wlbAgeWithHc2` = 'CARBONIFEROUS' or (alias2.`wlbAgeWithHc1` = 'CARBONIFEROUS' or alias2.`wlbAgeAtTd` = 'CARBONIFEROUS')))

create temporary table viewtable8090 as select * from viewtable8089;
CREATE TEMPORARY TABLE viewtable8092 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE CRETACEOUS' or (alias2.`wlbAgeWithHc2` = 'LATE CRETACEOUS' or (alias2.`wlbAgeWithHc1` = 'LATE CRETACEOUS' or alias2.`wlbAgeAtTd` = 'LATE CRETACEOUS')))

create temporary table viewtable8093 as select * from viewtable8092;
CREATE TEMPORARY TABLE viewtable8095 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'LATE TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'LATE TRIASSIC' or alias2.`wlbAgeAtTd` = 'LATE TRIASSIC')))

create temporary table viewtable8096 as select * from viewtable8095;
CREATE TEMPORARY TABLE viewtable8098 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'JURASSIC' or (alias2.`wlbAgeWithHc2` = 'JURASSIC' or (alias2.`wlbAgeWithHc1` = 'JURASSIC' or alias2.`wlbAgeAtTd` = 'JURASSIC')))

create temporary table viewtable8099 as select * from viewtable8098;
CREATE TEMPORARY TABLE viewtable8101 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'SILURIAN' or (alias2.`wlbAgeWithHc2` = 'SILURIAN' or (alias2.`wlbAgeWithHc1` = 'SILURIAN' or alias2.`wlbAgeAtTd` = 'SILURIAN')))

create temporary table viewtable8102 as select * from viewtable8101;
CREATE TEMPORARY TABLE viewtable8104 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY PERMIAN' or (alias2.`wlbAgeWithHc2` = 'EARLY PERMIAN' or (alias2.`wlbAgeWithHc1` = 'EARLY PERMIAN' or alias2.`wlbAgeAtTd` = 'EARLY PERMIAN')))

create temporary table viewtable8105 as select * from viewtable8104;
CREATE TEMPORARY TABLE viewtable8107 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'CAMPANIAN' or (alias2.`wlbAgeWithHc2` = 'CAMPANIAN' or (alias2.`wlbAgeWithHc1` = 'CAMPANIAN' or alias2.`wlbAgeAtTd` = 'CAMPANIAN')))

create temporary table viewtable8108 as select * from viewtable8107;
CREATE TEMPORARY TABLE viewtable8110 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY CARBONIFEROUS' or (alias2.`wlbAgeWithHc2` = 'EARLY CARBONIFEROUS' or (alias2.`wlbAgeWithHc1` = 'EARLY CARBONIFEROUS' or alias2.`wlbAgeAtTd` = 'EARLY CARBONIFEROUS')))

create temporary table viewtable8111 as select * from viewtable8110;
CREATE TEMPORARY TABLE viewtable8113 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'TRIASSIC' or alias2.`wlbAgeAtTd` = 'TRIASSIC')))

create temporary table viewtable8114 as select * from viewtable8113;
CREATE TEMPORARY TABLE viewtable8116 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PERMIAN' or (alias2.`wlbAgeWithHc2` = 'PERMIAN' or (alias2.`wlbAgeWithHc1` = 'PERMIAN' or alias2.`wlbAgeAtTd` = 'PERMIAN')))

create temporary table viewtable8117 as select * from viewtable8116;
CREATE TEMPORARY TABLE viewtable8119 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE PERMIAN' or (alias2.`wlbAgeWithHc2` = 'LATE PERMIAN' or (alias2.`wlbAgeWithHc1` = 'LATE PERMIAN' or alias2.`wlbAgeAtTd` = 'LATE PERMIAN')))

create temporary table viewtable8120 as select * from viewtable8119;
CREATE TEMPORARY TABLE viewtable8122 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY CRETACEOUS' or (alias2.`wlbAgeWithHc2` = 'EARLY CRETACEOUS' or (alias2.`wlbAgeWithHc1` = 'EARLY CRETACEOUS' or alias2.`wlbAgeAtTd` = 'EARLY CRETACEOUS')))

create temporary table viewtable8123 as select * from viewtable8122;
CREATE TEMPORARY TABLE viewtable8125 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'DANIAN' or (alias2.`wlbAgeWithHc2` = 'DANIAN' or (alias2.`wlbAgeWithHc1` = 'DANIAN' or alias2.`wlbAgeAtTd` = 'DANIAN')))

create temporary table viewtable8126 as select * from viewtable8125;
CREATE TEMPORARY TABLE viewtable8128 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PLEISTOCENE' or (alias2.`wlbAgeWithHc2` = 'PLEISTOCENE' or (alias2.`wlbAgeWithHc1` = 'PLEISTOCENE' or alias2.`wlbAgeAtTd` = 'PLEISTOCENE')))

create temporary table viewtable8129 as select * from viewtable8128;
CREATE TEMPORARY TABLE viewtable8131 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE JURASSIC' or (alias2.`wlbAgeWithHc2` = 'LATE JURASSIC' or (alias2.`wlbAgeWithHc1` = 'LATE JURASSIC' or alias2.`wlbAgeAtTd` = 'LATE JURASSIC')))

create temporary table viewtable8132 as select * from viewtable8131;
CREATE TEMPORARY TABLE viewtable8134 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EARLY JURASSIC' or (alias2.`wlbAgeWithHc2` = 'EARLY JURASSIC' or (alias2.`wlbAgeWithHc1` = 'EARLY JURASSIC' or alias2.`wlbAgeAtTd` = 'EARLY JURASSIC')))

create temporary table viewtable8135 as select * from viewtable8134;
CREATE TEMPORARY TABLE viewtable8137 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'MIDDLE JURASSIC' or (alias2.`wlbAgeWithHc2` = 'MIDDLE JURASSIC' or (alias2.`wlbAgeWithHc1` = 'MIDDLE JURASSIC' or alias2.`wlbAgeAtTd` = 'MIDDLE JURASSIC')))

create temporary table viewtable8138 as select * from viewtable8137;
CREATE TEMPORARY TABLE viewtable8140 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'LATE CARBONIFEROUS' or (alias2.`wlbAgeWithHc2` = 'LATE CARBONIFEROUS' or (alias2.`wlbAgeWithHc1` = 'LATE CARBONIFEROUS' or alias2.`wlbAgeAtTd` = 'LATE CARBONIFEROUS')))

create temporary table viewtable8141 as select * from viewtable8140;
CREATE TEMPORARY TABLE viewtable8143 AS select distinct alias1.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias1 
where 
alias1.`lsuNpdidLithoStratParent` IS NOT NULL

create temporary table viewtable8144 as select * from viewtable8143;
create temporary table viewtable8145 as select * from viewtable8143;
create temporary table viewtable8146 as select * from viewtable8143;
create temporary table viewtable8147 as select * from viewtable8143;
create temporary table viewtable8148 as select * from viewtable8143;
create temporary table viewtable8149 as select * from viewtable8143;
create temporary table viewtable8150 as select * from viewtable8143;
create temporary table viewtable8151 as select * from viewtable8143;
create temporary table viewtable8152 as select * from viewtable8143;
create temporary table viewtable8153 as select * from viewtable8143;
create temporary table viewtable8154 as select * from viewtable8143;
create temporary table viewtable8155 as select * from viewtable8143;
create temporary table viewtable8156 as select * from viewtable8143;
create temporary table viewtable8157 as select * from viewtable8143;
create temporary table viewtable8158 as select * from viewtable8143;
create temporary table viewtable8159 as select * from viewtable8143;
create temporary table viewtable8160 as select * from viewtable8143;
create temporary table viewtable8161 as select * from viewtable8143;
create temporary table viewtable8162 as select * from viewtable8143;
CREATE TEMPORARY TABLE viewtable8164 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'EOCENE' or (alias2.`wlbAgeWithHc2` = 'EOCENE' or (alias2.`wlbAgeWithHc1` = 'EOCENE' or alias2.`wlbAgeAtTd` = 'EOCENE')))

create temporary table viewtable8165 as select * from viewtable8164;
CREATE TEMPORARY TABLE viewtable8167 AS select distinct alias0.`lsuNpdidLithoStrat` as "lsuNpdidLithoStrat" from 
`wellbore_formation_top` alias0 
where 
alias0.`lsuNpdidLithoStrat` IS NOT NULL

create temporary table viewtable8168 as select * from viewtable8167;
create temporary table viewtable8169 as select * from viewtable8167;
create temporary table viewtable8170 as select * from viewtable8167;
create temporary table viewtable8171 as select * from viewtable8167;
create temporary table viewtable8172 as select * from viewtable8167;
create temporary table viewtable8173 as select * from viewtable8167;
create temporary table viewtable8174 as select * from viewtable8167;
create temporary table viewtable8175 as select * from viewtable8167;
create temporary table viewtable8176 as select * from viewtable8167;
create temporary table viewtable8177 as select * from viewtable8167;
CREATE TEMPORARY TABLE viewtable8179 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'CRETACEOUS' or (alias2.`wlbAgeWithHc2` = 'CRETACEOUS' or (alias2.`wlbAgeWithHc1` = 'CRETACEOUS' or alias2.`wlbAgeAtTd` = 'CRETACEOUS')))

create temporary table viewtable8180 as select * from viewtable8179;
CREATE TEMPORARY TABLE viewtable8182 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'MIOCENE' or (alias2.`wlbAgeWithHc2` = 'MIOCENE' or (alias2.`wlbAgeWithHc1` = 'MIOCENE' or alias2.`wlbAgeAtTd` = 'MIOCENE')))

create temporary table viewtable8183 as select * from viewtable8182;
CREATE TEMPORARY TABLE viewtable8185 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'MIDDLE TRIASSIC' or (alias2.`wlbAgeWithHc2` = 'MIDDLE TRIASSIC' or (alias2.`wlbAgeWithHc1` = 'MIDDLE TRIASSIC' or alias2.`wlbAgeAtTd` = 'MIDDLE TRIASSIC')))

create temporary table viewtable8186 as select * from viewtable8185;
CREATE TEMPORARY TABLE viewtable8188 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PLIOCENE' or (alias2.`wlbAgeWithHc2` = 'PLIOCENE' or (alias2.`wlbAgeWithHc1` = 'PLIOCENE' or alias2.`wlbAgeAtTd` = 'PLIOCENE')))

create temporary table viewtable8189 as select * from viewtable8188;
CREATE TEMPORARY TABLE viewtable8191 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'OLIGOCENE' or (alias2.`wlbAgeWithHc2` = 'OLIGOCENE' or (alias2.`wlbAgeWithHc1` = 'OLIGOCENE' or alias2.`wlbAgeAtTd` = 'OLIGOCENE')))

create temporary table viewtable8192 as select * from viewtable8191;
CREATE TEMPORARY TABLE viewtable8194 AS select distinct alias0.`lsuNpdidLithoStratParent` as "lsuNpdidLithoStratParent" from 
`wellbore_formation_top` alias0 
where 
alias0.`lsuNpdidLithoStratParent` IS NOT NULL

create temporary table viewtable8195 as select * from viewtable8194;
create temporary table viewtable8196 as select * from viewtable8194;
create temporary table viewtable8197 as select * from viewtable8194;
create temporary table viewtable8198 as select * from viewtable8194;
create temporary table viewtable8199 as select * from viewtable8194;
create temporary table viewtable8200 as select * from viewtable8194;
create temporary table viewtable8201 as select * from viewtable8194;
create temporary table viewtable8202 as select * from viewtable8194;
CREATE TEMPORARY TABLE viewtable8204 AS select distinct alias2.`wlbFormationAtTd` as "wlbFormationAtTd" from 
`wellbore_exploration_all` alias2 
where 
(alias2.`wlbAgeWithHc3` = 'PALEOCENE' or (alias2.`wlbAgeWithHc2` = 'PALEOCENE' or (alias2.`wlbAgeWithHc1` = 'PALEOCENE' or alias2.`wlbAgeAtTd` = 'PALEOCENE')))

create temporary table viewtable8205 as select * from viewtable8204;
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8113 QVIEW2,
viewtable8194 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Triassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8114 QVIEW2,
viewtable8167 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8101 QVIEW2,
viewtable8195 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Silurian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8102 QVIEW2,
viewtable8168 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8143 QVIEW2,
viewtable8188 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pliocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8064 QVIEW2,
viewtable8189 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8128 QVIEW2,
viewtable8144 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pleistocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8065 QVIEW2,
viewtable8129 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8116 QVIEW2,
viewtable8196 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Permian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8117 QVIEW2,
viewtable8169 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8145 QVIEW2,
viewtable8204 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Paleocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8066 QVIEW2,
viewtable8205 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8191 QVIEW2,
viewtable8197 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Oligocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8067 QVIEW2,
viewtable8192 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8146 QVIEW2,
viewtable8182 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Miocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8170 QVIEW2,
viewtable8183 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8147 QVIEW2,
viewtable8185 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleTriassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8171 QVIEW2,
viewtable8186 QVIEW3
WHERE 
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8137 QVIEW2,
viewtable8198 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/MiddleJurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8068 QVIEW2,
viewtable8138 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8095 QVIEW2,
viewtable8199 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperTriassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8069 QVIEW2,
viewtable8096 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8083 QVIEW2,
viewtable8148 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Piacenzian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8084 QVIEW2,
viewtable8172 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8119 QVIEW2,
viewtable8149 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Lopingian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8070 QVIEW2,
viewtable8120 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8086 QVIEW2,
viewtable8200 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Thanetian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8087 QVIEW2,
viewtable8173 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8131 QVIEW2,
viewtable8150 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperJurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8071 QVIEW2,
viewtable8132 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8092 QVIEW2,
viewtable8151 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/UpperCretaceous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8093 QVIEW2,
viewtable8174 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8140 QVIEW2,
viewtable8201 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Pennsylvanian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8141 QVIEW2,
viewtable8175 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8098 QVIEW2,
viewtable8152 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Jurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8099 QVIEW2,
viewtable8176 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8153 QVIEW2,
viewtable8164 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Eocene' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8165 QVIEW2,
viewtable8177 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8058 QVIEW2,
viewtable8202 QVIEW3
WHERE 
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerTriassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8059 QVIEW2,
viewtable8072 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8104 QVIEW2,
viewtable8154 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cisuralian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8073 QVIEW2,
viewtable8105 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8134 QVIEW2,
viewtable8155 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerJurassic' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8074 QVIEW2,
viewtable8135 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8122 QVIEW2,
viewtable8156 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/LowerCretaceous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8075 QVIEW2,
viewtable8123 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8110 QVIEW2,
viewtable8157 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Mississippian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8076 QVIEW2,
viewtable8111 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8061 QVIEW2,
viewtable8158 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Devonian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8062 QVIEW2,
viewtable8077 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStrat`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8125 QVIEW2,
viewtable8159 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Danian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8078 QVIEW2,
viewtable8126 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8160 QVIEW2,
viewtable8179 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStratParent`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Cretaceous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8079 QVIEW2,
viewtable8180 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8089 QVIEW2,
viewtable8161 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Carboniferous' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8080 QVIEW2,
viewtable8090 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8107 QVIEW2,
viewtable8162 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuName` = QVIEW2.`wlbFormationAtTd`) AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW3.`lsuNpdidLithoStratParent`)
UNION
SELECT 
   1 AS `uQuestType`, NULL AS `uLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/stratum/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`lsuNpdidLithoStrat` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `u`, 
   1 AS `eraQuestType`, NULL AS `eraLang`, 'http://resource.geosciml.org/classifier/ics/ischart/Campanian' AS `era`
 FROM 
`wellbore_formation_top` QVIEW1,
viewtable8081 QVIEW2,
viewtable8108 QVIEW3
WHERE 
QVIEW1.`lsuNpdidLithoStrat` IS NOT NULL AND
(QVIEW1.`lsuNpdidLithoStrat` = QVIEW2.`lsuNpdidLithoStrat`) AND
(QVIEW1.`lsuName` = QVIEW3.`wlbFormationAtTd`)