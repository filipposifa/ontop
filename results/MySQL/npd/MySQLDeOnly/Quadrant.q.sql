CREATE TEMPORARY TABLE viewtable7403 AS select distinct alias0.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_exploration_all` alias0 
where 
alias0.`wlbNamePart1` IS NOT NULL

create temporary table viewtable7404 as select * from viewtable7403;
create temporary table viewtable7405 as select * from viewtable7403;
create temporary table viewtable7406 as select * from viewtable7403;
CREATE TEMPORARY TABLE viewtable7408 AS select distinct alias4.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_exploration_all` alias4 
where 
alias4.`wlbNamePart1` IS NOT NULL

CREATE TEMPORARY TABLE viewtable7410 AS select distinct alias2.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_development_all` alias2 
where 
alias2.`wlbNamePart1` IS NOT NULL

CREATE TEMPORARY TABLE viewtable7412 AS select distinct alias3.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_shallow_all` alias3 
where 
alias3.`wlbNamePart1` IS NOT NULL

create temporary table viewtable7413 as select * from viewtable7412;
CREATE TEMPORARY TABLE viewtable7415 AS select distinct alias1.`wlbNamePart1` as "wlbNamePart1" from 
`wellbore_development_all` alias1 
where 
alias1.`wlbNamePart1` IS NOT NULL

create temporary table viewtable7416 as select * from viewtable7415;
create temporary table viewtable7417 as select * from viewtable7415;
create temporary table viewtable7418 as select * from viewtable7415;
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
viewtable7403 QVIEW1,
viewtable7415 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
viewtable7410 QVIEW1,
viewtable7416 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
viewtable7412 QVIEW1,
viewtable7417 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
viewtable7404 QVIEW1,
viewtable7408 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
viewtable7405 QVIEW1,
viewtable7418 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)
UNION
SELECT 
   1 AS `qQuestType`, NULL AS `qLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/quadrant/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `q`, 
   7 AS `nQuestType`, NULL AS `nLang`, CAST(QVIEW1.`wlbNamePart1` AS CHAR(8000) CHARACTER SET utf8) AS `n`
 FROM 
viewtable7406 QVIEW1,
viewtable7413 QVIEW2
WHERE 
(QVIEW1.`wlbNamePart1` = QVIEW2.`wlbNamePart1`)