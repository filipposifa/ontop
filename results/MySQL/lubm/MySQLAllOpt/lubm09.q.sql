CREATE TEMPORARY TABLE viewtable5525 AS select distinct alias3.`depid` as "depid", 
alias3.`uniid` as "uniid", 
alias3.`advisorid` as "advisorid" from 
`students` alias3 
where 
(alias3.`advisortype` = 2 and alias3.`stype` = 1 or alias3.`advisortype` = 2 and alias3.`stype` = 0) and 
alias3.`depid` IS NOT NULL and 
alias3.`uniid` IS NOT NULL and 
alias3.`advisorid` IS NOT NULL

create temporary table viewtable5526 as select * from viewtable5525;
CREATE TEMPORARY TABLE viewtable5528 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
(alias5.`advisortype` = 3 and alias5.`stype` = 1 or alias5.`advisortype` = 3 and alias5.`stype` = 0) and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL

create temporary table viewtable5529 as select * from viewtable5528;
create temporary table viewtable5530 as select * from viewtable5528;
CREATE TEMPORARY TABLE viewtable5532 AS select distinct alias8.`depid` as "depid", 
alias8.`uniid` as "uniid", 
alias8.`teacherid` as "teacherid" from 
`courses` alias8 
where 
(alias8.`teachertype` = 3 and alias8.`ctype` = 1 or alias8.`teachertype` = 3 and alias8.`ctype` = 0) and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL

create temporary table viewtable5533 as select * from viewtable5532;
CREATE TEMPORARY TABLE viewtable5535 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
(alias5.`advisortype` = 2 and alias5.`stype` = 1 or alias5.`advisortype` = 2 and alias5.`stype` = 0) and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL

create temporary table viewtable5536 as select * from viewtable5535;
create temporary table viewtable5537 as select * from viewtable5535;
create temporary table viewtable5538 as select * from viewtable5535;
CREATE TEMPORARY TABLE viewtable5540 AS select distinct alias1.`depid` as "depid", 
alias1.`uniid` as "uniid", 
alias1.`teacherid` as "teacherid" from 
`courses` alias1 
where 
(alias1.`teachertype` = 3 and alias1.`ctype` = 1 or alias1.`teachertype` = 3 and alias1.`ctype` = 0) and 
alias1.`teacherid` IS NOT NULL and 
alias1.`depid` IS NOT NULL and 
alias1.`uniid` IS NOT NULL

create temporary table viewtable5541 as select * from viewtable5540;
create temporary table viewtable5542 as select * from viewtable5540;
CREATE TEMPORARY TABLE viewtable5544 AS select distinct alias3.`advisorid` as "advisorid", 
alias3.`depid` as "depid", 
alias3.`uniid` as "uniid" from 
`students` alias3 
where 
(alias3.`advisortype` = 3 and alias3.`stype` = 1 or alias3.`advisortype` = 3 and alias3.`stype` = 0) and 
alias3.`advisorid` IS NOT NULL and 
alias3.`uniid` IS NOT NULL and 
alias3.`depid` IS NOT NULL

CREATE TEMPORARY TABLE viewtable5546 AS select distinct alias3.`depid` as "depid", 
alias3.`uniid` as "uniid", 
alias3.`advisorid` as "advisorid" from 
`students` alias3 
where 
(alias3.`advisortype` = 3 and alias3.`stype` = 1 or alias3.`advisortype` = 3 and alias3.`stype` = 0) and 
alias3.`advisorid` IS NOT NULL and 
alias3.`depid` IS NOT NULL and 
alias3.`uniid` IS NOT NULL

create temporary table viewtable5547 as select * from viewtable5546;
create temporary table viewtable5548 as select * from viewtable5546;
create temporary table viewtable5549 as select * from viewtable5546;
create temporary table viewtable5550 as select * from viewtable5546;
create temporary table viewtable5551 as select * from viewtable5546;
create temporary table viewtable5552 as select * from viewtable5546;
create temporary table viewtable5553 as select * from viewtable5546;
create temporary table viewtable5554 as select * from viewtable5546;
create temporary table viewtable5555 as select * from viewtable5546;
create temporary table viewtable5556 as select * from viewtable5546;
create temporary table viewtable5557 as select * from viewtable5546;
CREATE TEMPORARY TABLE viewtable5559 AS select distinct alias7.`depid` as "depid", 
alias7.`uniid` as "uniid", 
alias7.`advisorid` as "advisorid" from 
`students` alias7 
where 
(alias7.`advisortype` = 2 and alias7.`stype` = 1 or alias7.`advisortype` = 2 and alias7.`stype` = 0) and 
alias7.`advisorid` IS NOT NULL and 
alias7.`depid` IS NOT NULL and 
alias7.`uniid` IS NOT NULL

create temporary table viewtable5560 as select * from viewtable5559;
CREATE TEMPORARY TABLE viewtable5562 AS select distinct alias6.`depid` as "depid", 
alias6.`uniid` as "uniid", 
alias6.`teacherid` as "teacherid" from 
`courses` alias6 
where 
(alias6.`teachertype` = 3 and alias6.`ctype` = 1 or alias6.`teachertype` = 3 and alias6.`ctype` = 0) and 
alias6.`teacherid` IS NOT NULL and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL

create temporary table viewtable5563 as select * from viewtable5562;
create temporary table viewtable5564 as select * from viewtable5562;
create temporary table viewtable5565 as select * from viewtable5562;
create temporary table viewtable5566 as select * from viewtable5562;
create temporary table viewtable5567 as select * from viewtable5562;
create temporary table viewtable5568 as select * from viewtable5562;
create temporary table viewtable5569 as select * from viewtable5562;
create temporary table viewtable5570 as select * from viewtable5562;
create temporary table viewtable5571 as select * from viewtable5562;
create temporary table viewtable5572 as select * from viewtable5562;
CREATE TEMPORARY TABLE viewtable5574 AS select distinct alias3.`advisorid` as "advisorid", 
alias3.`depid` as "depid", 
alias3.`uniid` as "uniid" from 
`students` alias3 
where 
(alias3.`advisortype` = 2 and alias3.`stype` = 1 or alias3.`advisortype` = 2 and alias3.`stype` = 0) and 
alias3.`uniid` IS NOT NULL and 
alias3.`advisorid` IS NOT NULL and 
alias3.`depid` IS NOT NULL

create temporary table viewtable5575 as select * from viewtable5574;
create temporary table viewtable5576 as select * from viewtable5574;
create temporary table viewtable5577 as select * from viewtable5574;
CREATE TEMPORARY TABLE viewtable5579 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
alias5.`stype` = 0 and 
alias5.`advisortype` = 1 and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL

create temporary table viewtable5580 as select * from viewtable5579;
create temporary table viewtable5581 as select * from viewtable5579;
create temporary table viewtable5582 as select * from viewtable5579;
create temporary table viewtable5583 as select * from viewtable5579;
CREATE TEMPORARY TABLE viewtable5585 AS select distinct alias1.`depid` as "depid", 
alias1.`uniid` as "uniid", 
alias1.`teacherid` as "teacherid" from 
`courses` alias1 
where 
(alias1.`teachertype` = 2 and alias1.`ctype` = 1 or alias1.`teachertype` = 2 and alias1.`ctype` = 0) and 
alias1.`uniid` IS NOT NULL and 
alias1.`depid` IS NOT NULL and 
alias1.`teacherid` IS NOT NULL

create temporary table viewtable5586 as select * from viewtable5585;
create temporary table viewtable5587 as select * from viewtable5585;
create temporary table viewtable5588 as select * from viewtable5585;
create temporary table viewtable5589 as select * from viewtable5585;
create temporary table viewtable5590 as select * from viewtable5585;
create temporary table viewtable5591 as select * from viewtable5585;
create temporary table viewtable5592 as select * from viewtable5585;
create temporary table viewtable5593 as select * from viewtable5585;
CREATE TEMPORARY TABLE viewtable5595 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
alias5.`stype` = 1 and 
alias5.`advisortype` = 1 and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL

create temporary table viewtable5596 as select * from viewtable5595;
create temporary table viewtable5597 as select * from viewtable5595;
create temporary table viewtable5598 as select * from viewtable5595;
create temporary table viewtable5599 as select * from viewtable5595;
CREATE TEMPORARY TABLE viewtable5601 AS select distinct alias6.`depid` as "depid", 
alias6.`uniid` as "uniid", 
alias6.`teacherid` as "teacherid" from 
`courses` alias6 
where 
(alias6.`teachertype` = 2 and alias6.`ctype` = 1 or alias6.`teachertype` = 2 and alias6.`ctype` = 0) and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL

create temporary table viewtable5602 as select * from viewtable5601;
CREATE TEMPORARY TABLE viewtable5604 AS select distinct alias8.`depid` as "depid", 
alias8.`uniid` as "uniid", 
alias8.`teacherid` as "teacherid" from 
`courses` alias8 
where 
(alias8.`teachertype` = 2 and alias8.`ctype` = 1 or alias8.`teachertype` = 2 and alias8.`ctype` = 0) and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL

SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssociateProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateCourse', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5559 QVIEW4,
viewtable5574 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5535 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5601 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5537 QVIEW4,
viewtable5585 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5586 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5536 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5588 QVIEW4,
viewtable5604 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5538 QVIEW4,
viewtable5587 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/UndergraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssistantProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/Course', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5596 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW4.`id`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5598 QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5599 QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5595 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5597 QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssistantProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateCourse', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5581 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5579 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5583 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5582 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW4.`id`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5580 QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/UndergraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssociateProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/Course', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5526 QVIEW4,
viewtable5592 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5591 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5560 QVIEW4,
viewtable5576 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5577 QVIEW4,
viewtable5590 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5593 QVIEW4,
viewtable5602 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5575 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5589 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5525 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 2) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/FullProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateCourse', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5549 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5528 QVIEW4,
viewtable5550 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5532 QVIEW4,
viewtable5566 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5564 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5546 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW2.`profid`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5548 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`profid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5541 QVIEW4,
viewtable5551 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`heads` QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5563 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`profid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5562 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW2.`profid`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`teachers` QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW2.`profid`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW5.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW5.`id`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5547 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5540 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 1) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5552 QVIEW4,
viewtable5565 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 1) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 1) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/UndergraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/FullProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`, 
   1 AS `zQuestType`, NULL AS `zLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/Course', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5530 QVIEW4,
viewtable5571 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5567 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW2.`profid`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5544 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5553 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW2.`profid`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`heads` QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`teachers` QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW2.`profid`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW5.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW5.`id`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5533 QVIEW4,
viewtable5572 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5557 QVIEW4,
viewtable5568 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5529 QVIEW4,
viewtable5556 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`advisorid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5554 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`profid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5555 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5542 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW2.`id`) AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW3.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ctype` = 0) AND
(QVIEW3.`courseid` = QVIEW4.`id`) AND
(QVIEW1.`advisorid` = QVIEW4.`teacherid`) AND
(QVIEW4.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5570 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW4.`ttype` = 3) AND
(QVIEW1.`advisorid` = QVIEW4.`id`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2, 
   QVIEW1.`depid` as var3, 
   QVIEW1.`uniid` as var4, 
   QVIEW1.`advisorid` as var5, 
   QVIEW1.`depid` as var6, 
   QVIEW1.`uniid` as var7, 
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5569 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW1.`id` = QVIEW2.`studid`) AND
(QVIEW2.`coursetype` = 0) AND
QVIEW2.`courseid` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW1.`uniid` = QVIEW3.`uniid`) AND
(QVIEW3.`ctype` = 0) AND
(QVIEW2.`courseid` = QVIEW3.`id`) AND
(QVIEW1.`advisorid` = QVIEW3.`teacherid`) AND
(QVIEW3.`teachertype` = 3) AND
(QVIEW1.`depid` = QVIEW4.`depid`) AND
(QVIEW1.`uniid` = QVIEW4.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW4.`profid`) AND
(QVIEW1.`depid` = QVIEW5.`depid`) AND
(QVIEW1.`uniid` = QVIEW5.`uniid`) AND
(QVIEW1.`advisorid` = QVIEW5.`teacherid`)
 ) 
 
 ) SUBQALIAS