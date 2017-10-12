CREATE TEMPORARY TABLE viewtable5201 AS select distinct alias0.`depid` as "depid", 
alias0.`uniid` as "uniid", 
alias0.`advisorid` as "advisorid" from 
`students` alias0 
where 
(alias0.`advisortype` = 3 and alias0.`stype` = 1 or alias0.`advisortype` = 3 and alias0.`stype` = 0);
create temporary table viewtable5202 as select * from viewtable5201;
create temporary table viewtable5203 as select * from viewtable5201;
create temporary table viewtable5204 as select * from viewtable5201;
create temporary table viewtable5205 as select * from viewtable5201;
create temporary table viewtable5206 as select * from viewtable5201;
create temporary table viewtable5207 as select * from viewtable5201;
CREATE TEMPORARY TABLE viewtable5209 AS select distinct alias0.`advisorid` as "advisorid", 
alias0.`depid` as "depid", 
alias0.`uniid` as "uniid" from 
`students` alias0 
where 
(alias0.`advisortype` = 2 and alias0.`stype` = 1 or alias0.`advisortype` = 2 and alias0.`stype` = 0);
CREATE TEMPORARY TABLE viewtable5211 AS select distinct alias8.`depid` as "depid", 
alias8.`uniid` as "uniid", 
alias8.`teacherid` as "teacherid" from 
`courses` alias8 
where 
(alias8.`teachertype` = 3 and alias8.`ctype` = 1 or alias8.`teachertype` = 3 and alias8.`ctype` = 0) and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL;
create temporary table viewtable5212 as select * from viewtable5211;
CREATE TEMPORARY TABLE viewtable5214 AS select distinct alias7.`depid` as "depid", 
alias7.`uniid` as "uniid", 
alias7.`advisorid` as "advisorid" from 
`students` alias7 
where 
(alias7.`advisortype` = 2 and alias7.`stype` = 1 or alias7.`advisortype` = 2 and alias7.`stype` = 0) and 
alias7.`advisorid` IS NOT NULL and 
alias7.`depid` IS NOT NULL and 
alias7.`uniid` IS NOT NULL and 
alias7.`advisorid` IS NOT NULL and 
alias7.`depid` IS NOT NULL and 
alias7.`uniid` IS NOT NULL and 
alias7.`depid` IS NOT NULL and 
alias7.`uniid` IS NOT NULL and 
alias7.`advisorid` IS NOT NULL and 
alias7.`depid` IS NOT NULL and 
alias7.`uniid` IS NOT NULL and 
alias7.`advisorid` IS NOT NULL and 
alias7.`depid` IS NOT NULL and 
alias7.`uniid` IS NOT NULL;
create temporary table viewtable5215 as select * from viewtable5214;
CREATE TEMPORARY TABLE viewtable5217 AS select distinct alias8.`depid` as "depid", 
alias8.`uniid` as "uniid", 
alias8.`teacherid` as "teacherid" from 
`courses` alias8 
where 
(alias8.`teachertype` = 2 and alias8.`ctype` = 1 or alias8.`teachertype` = 2 and alias8.`ctype` = 0) and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL and 
alias8.`teacherid` IS NOT NULL and 
alias8.`depid` IS NOT NULL and 
alias8.`uniid` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable5219 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
(alias5.`advisortype` = 3 and alias5.`stype` = 1 or alias5.`advisortype` = 3 and alias5.`stype` = 0) and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable5221 AS select distinct alias1.`depid` as "depid", 
alias1.`uniid` as "uniid", 
alias1.`teacherid` as "teacherid" from 
`courses` alias1 
where 
(alias1.`teachertype` = 2 and alias1.`ctype` = 1 or alias1.`teachertype` = 2 and alias1.`ctype` = 0);
create temporary table viewtable5222 as select * from viewtable5221;
create temporary table viewtable5223 as select * from viewtable5221;
create temporary table viewtable5224 as select * from viewtable5221;
create temporary table viewtable5225 as select * from viewtable5221;
create temporary table viewtable5226 as select * from viewtable5221;
create temporary table viewtable5227 as select * from viewtable5221;
CREATE TEMPORARY TABLE viewtable5229 AS select distinct alias6.`depid` as "depid", 
alias6.`uniid` as "uniid", 
alias6.`teacherid` as "teacherid" from 
`courses` alias6 
where 
(alias6.`teachertype` = 2 and alias6.`ctype` = 1 or alias6.`teachertype` = 2 and alias6.`ctype` = 0);
create temporary table viewtable5230 as select * from viewtable5229;
CREATE TEMPORARY TABLE viewtable5232 AS select distinct alias6.`depid` as "depid", 
alias6.`uniid` as "uniid", 
alias6.`teacherid` as "teacherid" from 
`courses` alias6 
where 
(alias6.`teachertype` = 2 and alias6.`ctype` = 1 or alias6.`teachertype` = 2 and alias6.`ctype` = 0) and 
alias6.`teacherid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable5234 AS select distinct alias6.`depid` as "depid", 
alias6.`uniid` as "uniid", 
alias6.`teacherid` as "teacherid" from 
`courses` alias6 
where 
(alias6.`teachertype` = 3 and alias6.`ctype` = 1 or alias6.`teachertype` = 3 and alias6.`ctype` = 0) and 
alias6.`teacherid` IS NOT NULL and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL and 
alias6.`teacherid` IS NOT NULL and 
alias6.`depid` IS NOT NULL and 
alias6.`uniid` IS NOT NULL;
create temporary table viewtable5235 as select * from viewtable5234;
create temporary table viewtable5236 as select * from viewtable5234;
create temporary table viewtable5237 as select * from viewtable5234;
create temporary table viewtable5238 as select * from viewtable5234;
create temporary table viewtable5239 as select * from viewtable5234;
create temporary table viewtable5240 as select * from viewtable5234;
CREATE TEMPORARY TABLE viewtable5242 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
(alias5.`advisortype` = 2 and alias5.`stype` = 1 or alias5.`advisortype` = 2 and alias5.`stype` = 0) and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL and 
alias5.`advisorid` IS NOT NULL and 
alias5.`depid` IS NOT NULL and 
alias5.`uniid` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable5244 AS select distinct alias1.`depid` as "depid", 
alias1.`uniid` as "uniid", 
alias1.`teacherid` as "teacherid" from 
`courses` alias1 
where 
(alias1.`teachertype` = 3 and alias1.`ctype` = 1 or alias1.`teachertype` = 3 and alias1.`ctype` = 0);
create temporary table viewtable5245 as select * from viewtable5244;
create temporary table viewtable5246 as select * from viewtable5244;
create temporary table viewtable5247 as select * from viewtable5244;
create temporary table viewtable5248 as select * from viewtable5244;
CREATE TEMPORARY TABLE viewtable5250 AS select distinct alias0.`depid` as "depid", 
alias0.`uniid` as "uniid", 
alias0.`advisorid` as "advisorid" from 
`students` alias0 
where 
(alias0.`advisortype` = 2 and alias0.`stype` = 1 or alias0.`advisortype` = 2 and alias0.`stype` = 0);
create temporary table viewtable5251 as select * from viewtable5250;
create temporary table viewtable5252 as select * from viewtable5250;
create temporary table viewtable5253 as select * from viewtable5250;
create temporary table viewtable5254 as select * from viewtable5250;
create temporary table viewtable5255 as select * from viewtable5250;
create temporary table viewtable5256 as select * from viewtable5250;
create temporary table viewtable5257 as select * from viewtable5250;
CREATE TEMPORARY TABLE viewtable5259 AS select distinct alias7.`depid` as "depid", 
alias7.`uniid` as "uniid", 
alias7.`advisorid` as "advisorid" from 
`students` alias7 
where 
(alias7.`advisortype` = 3 and alias7.`stype` = 1 or alias7.`advisortype` = 3 and alias7.`stype` = 0);
CREATE TEMPORARY TABLE viewtable5261 AS select distinct alias5.`depid` as "depid", 
alias5.`uniid` as "uniid", 
alias5.`advisorid` as "advisorid" from 
`students` alias5 
where 
(alias5.`advisortype` = 3 and alias5.`stype` = 1 or alias5.`advisortype` = 3 and alias5.`stype` = 0);
create temporary table viewtable5262 as select * from viewtable5261;
create temporary table viewtable5263 as select * from viewtable5261;
create temporary table viewtable5264 as select * from viewtable5261;
create temporary table viewtable5265 as select * from viewtable5261;
CREATE TEMPORARY TABLE viewtable5267 AS select distinct alias7.`depid` as "depid", 
alias7.`uniid` as "uniid", 
alias7.`advisorid` as "advisorid" from 
`students` alias7 
where 
(alias7.`advisortype` = 3 and alias7.`stype` = 1 or alias7.`advisortype` = 3 and alias7.`stype` = 0) and 
alias7.`advisorid` IS NOT NULL and 
alias7.`advisorid` IS NOT NULL and 
alias7.`advisorid` IS NOT NULL and 
alias7.`advisorid` IS NOT NULL;
CREATE TEMPORARY TABLE viewtable5269 AS select distinct alias6.`depid` as "depid", 
alias6.`uniid` as "uniid", 
alias6.`teacherid` as "teacherid" from 
`courses` alias6 
where 
(alias6.`teachertype` = 3 and alias6.`ctype` = 1 or alias6.`teachertype` = 3 and alias6.`ctype` = 0);
create temporary table viewtable5270 as select * from viewtable5269;
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
`teachers` QVIEW4,
viewtable5222 QVIEW5
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
viewtable5223 QVIEW4,
viewtable5254 QVIEW5
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
viewtable5224 QVIEW4,
viewtable5229 QVIEW5
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
`teachers` QVIEW4,
viewtable5251 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5250 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5221 QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 2) AND
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
viewtable5232 QVIEW4,
viewtable5253 QVIEW5
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
viewtable5214 QVIEW4,
viewtable5252 QVIEW5
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
(QVIEW1.`advisorid` = QVIEW5.`advisorid`)
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
`students` QVIEW4
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
(QVIEW4.`stype` = 1) AND
(QVIEW4.`advisortype` = 1) AND
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
`students` QVIEW2,
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
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`advisorid`) AND
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`students` QVIEW5
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
(QVIEW5.`stype` = 1) AND
(QVIEW5.`advisortype` = 1) AND
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
`students` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`teachers` QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`advisorid`) AND
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
(QVIEW5.`ttype` = 1) AND
(QVIEW1.`advisorid` = QVIEW5.`id`)
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`students` QVIEW2,
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
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`advisorid`) AND
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
`students` QVIEW4
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
(QVIEW4.`stype` = 0) AND
(QVIEW4.`advisortype` = 1) AND
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`students` QVIEW5
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
(QVIEW5.`stype` = 0) AND
(QVIEW5.`advisortype` = 1) AND
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`students` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`teachers` QVIEW5
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`advisortype` = 1) AND
QVIEW1.`advisorid` IS NOT NULL AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`depid`) AND
(QVIEW1.`uniid` = QVIEW2.`uniid`) AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`advisorid` = QVIEW2.`advisorid`) AND
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
(QVIEW5.`ttype` = 1) AND
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
(QVIEW1.`advisorid` = QVIEW4.`id`)
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
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
(QVIEW1.`advisorid` = QVIEW5.`teacherid`) AND
(((2 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)) OR ((2 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`))))
 
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
viewtable5225 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
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
`courses` QVIEW4,
viewtable5209 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
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
viewtable5215 QVIEW4,
viewtable5256 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
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
(QVIEW3.`teachertype` = 2) AND
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
viewtable5226 QVIEW4,
viewtable5242 QVIEW5
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
viewtable5255 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
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
viewtable5230 QVIEW4,
viewtable5257 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 2) AND
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
(QVIEW3.`teachertype` = 2) AND
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5217 QVIEW4,
viewtable5227 QVIEW5
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
(QVIEW1.`advisorid` = QVIEW5.`teacherid`)
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
viewtable5259 QVIEW4,
viewtable5263 QVIEW5
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5269 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5234 QVIEW5
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
viewtable5236 QVIEW4,
viewtable5265 QVIEW5
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
viewtable5245 QVIEW4,
viewtable5264 QVIEW5
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
viewtable5262 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5219 QVIEW5
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5211 QVIEW4,
viewtable5246 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
`students` QVIEW5
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
(QVIEW1.`advisorid` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
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
`teachers` QVIEW4,
viewtable5235 QVIEW5
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5261 QVIEW5
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
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5244 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`heads` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5201 QVIEW5
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5239 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5237 QVIEW5
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
viewtable5247 QVIEW5
WHERE 
(QVIEW1.`stype` = 0) AND
(QVIEW1.`advisortype` = 3) AND
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
viewtable5212 QVIEW4,
viewtable5270 QVIEW5
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
   QVIEW3.`courseid` as var8
 FROM 
`students` QVIEW1,
`teachers` QVIEW2,
`takescourses` QVIEW3,
`courses` QVIEW4,
viewtable5202 QVIEW5
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
viewtable5205 QVIEW4,
viewtable5267 QVIEW5
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
viewtable5207 QVIEW4,
viewtable5240 QVIEW5
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`heads` QVIEW4,
viewtable5238 QVIEW5
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
viewtable5203 QVIEW5
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
viewtable5206 QVIEW4,
viewtable5248 QVIEW5
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
   QVIEW2.`courseid` as var8
 FROM 
`students` QVIEW1,
`takescourses` QVIEW2,
`courses` QVIEW3,
`teachers` QVIEW4,
viewtable5204 QVIEW5
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
(QVIEW1.`advisorid` = QVIEW5.`advisorid`)
 ) 
 
 ) SUBQALIAS