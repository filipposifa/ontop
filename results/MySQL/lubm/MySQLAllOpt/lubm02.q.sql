CREATE TEMPORARY TABLE viewtable531 AS select distinct alias1.`masterD` as "masterD" from 
`teachers` alias1 
where 
(alias1.`ttype` = 0 or (alias1.`ttype` = 3 or (alias1.`ttype` = 1 or alias1.`ttype` = 2))) and 
alias1.`masterD` IS NOT NULL

create temporary table viewtable532 as select * from viewtable531;
create temporary table viewtable533 as select * from viewtable531;
create temporary table viewtable534 as select * from viewtable531;
create temporary table viewtable535 as select * from viewtable531;
create temporary table viewtable536 as select * from viewtable531;
create temporary table viewtable537 as select * from viewtable531;
CREATE TEMPORARY TABLE viewtable539 AS select distinct alias2.`masterD` as "masterD" from 
`teachers` alias2 
where 
(alias2.`ttype` = 0 or (alias2.`ttype` = 3 or (alias2.`ttype` = 1 or alias2.`ttype` = 2))) and 
alias2.`masterD` IS NOT NULL

CREATE TEMPORARY TABLE viewtable541 AS select distinct alias2.`docD` as "docD" from 
`teachers` alias2 
where 
(alias2.`ttype` = 0 or (alias2.`ttype` = 3 or (alias2.`ttype` = 1 or alias2.`ttype` = 2))) and 
alias2.`docD` IS NOT NULL

create temporary table viewtable542 as select * from viewtable541;
create temporary table viewtable543 as select * from viewtable541;
create temporary table viewtable544 as select * from viewtable541;
CREATE TEMPORARY TABLE viewtable546 AS select distinct alias2.`underD` as "underD" from 
`teachers` alias2 
where 
(alias2.`ttype` = 0 or (alias2.`ttype` = 3 or (alias2.`ttype` = 1 or alias2.`ttype` = 2))) and 
alias2.`underD` IS NOT NULL

create temporary table viewtable547 as select * from viewtable546;
create temporary table viewtable548 as select * from viewtable546;
create temporary table viewtable549 as select * from viewtable546;
CREATE TEMPORARY TABLE viewtable551 AS select distinct alias1.`docD` as "docD" from 
`teachers` alias1 
where 
(alias1.`ttype` = 0 or (alias1.`ttype` = 3 or (alias1.`ttype` = 1 or alias1.`ttype` = 2))) and 
alias1.`docD` IS NOT NULL

create temporary table viewtable552 as select * from viewtable551;
create temporary table viewtable553 as select * from viewtable551;
create temporary table viewtable554 as select * from viewtable551;
CREATE TEMPORARY TABLE viewtable556 AS select distinct alias1.`underD` as "underD" from 
`teachers` alias1 
where 
(alias1.`ttype` = 0 or (alias1.`ttype` = 3 or (alias1.`ttype` = 1 or alias1.`ttype` = 2))) and 
alias1.`underD` IS NOT NULL

create temporary table viewtable557 as select * from viewtable556;
create temporary table viewtable558 as select * from viewtable556;
create temporary table viewtable559 as select * from viewtable556;
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu') AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu') AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable535 QVIEW3,
viewtable549 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`) AND
(QVIEW1.`uniid` = QVIEW4.`underD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable532 QVIEW3,
viewtable548 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`) AND
(QVIEW1.`uniid` = QVIEW4.`underD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable553 QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`docD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable537 QVIEW3,
viewtable539 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`) AND
(QVIEW1.`uniid` = QVIEW4.`masterD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable541 QVIEW3,
viewtable551 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`docD`) AND
(QVIEW1.`uniid` = QVIEW4.`docD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable558 QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`underD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable543 QVIEW3,
viewtable556 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`docD`) AND
(QVIEW1.`uniid` = QVIEW4.`underD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable534 QVIEW3,
viewtable544 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`) AND
(QVIEW1.`uniid` = QVIEW4.`docD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable547 QVIEW3,
viewtable557 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`underD`) AND
(QVIEW1.`uniid` = QVIEW4.`underD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable559 QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`underD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable531 QVIEW3,
viewtable542 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`) AND
(QVIEW1.`uniid` = QVIEW4.`docD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable546 QVIEW3,
viewtable552 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`underD`) AND
(QVIEW1.`uniid` = QVIEW4.`docD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable536 QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable533 QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`masterD`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`uniid` as var3, 
   QVIEW1.`depid` as var4, 
   QVIEW1.`uniid` as var5
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
viewtable554 QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`uniid` = QVIEW1.`degreeuniid`) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW1.`uniid` = QVIEW2.`universityid`) AND
(QVIEW1.`uniid` = QVIEW3.`docD`)
 ) 
 
 ) SUBQALIAS