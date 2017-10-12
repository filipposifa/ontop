SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateCourse', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`
FROM (
 (
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((0 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)) OR (((3 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((0 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)) OR (((3 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((0 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR (((3 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((0 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR (((3 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW5.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(QVIEW5.`teachertype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((0 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)) OR (((3 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (1 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((0 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)) OR (((3 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((0 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR (((3 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(((0 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)) OR (((3 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)) OR ((2 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((0 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR (((3 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (1 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 1) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(((0 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)) OR (((3 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)) OR ((2 = QVIEW5.`teachertype`) AND (1 = QVIEW5.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teachertype` = 1) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((0 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)) OR (((3 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teachertype` = 1) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 1) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 1) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((0 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)) OR (((3 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (1 = QVIEW4.`ctype`))))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/UndergraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/Course', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `y`
FROM (
 (
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teachertype` = 0) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`ta` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`courseid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((3 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR (((1 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teachertype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`ta` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`courseid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(((3 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)) OR (((1 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)) OR ((2 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((3 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR (((1 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW5.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(QVIEW5.`teachertype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teachertype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((3 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR (((1 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((3 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR (((1 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`ta` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`courseid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((3 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR (((1 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((3 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR (((1 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 0) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(((3 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)) OR (((1 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)) OR ((2 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((3 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR (((1 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`ta` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`courseid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW5.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(QVIEW5.`teachertype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`ta` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`courseid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teachertype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`ta` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((3 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR (((1 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`courseid`))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`ta` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`courseid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 0) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`ta` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`courseid`))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((3 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR (((1 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`ta` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teachertype` = 0) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`courseid`))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teachertype` = 0) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((3 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR (((1 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`ta` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teacherid` = '0') AND
(QVIEW2.`teachertype` = 2) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`courseid`))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`ta` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(QVIEW2.`teachertype` = 0) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`courseid`))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4,
`courses` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(((3 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR (((1 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)) OR ((2 = QVIEW3.`teachertype`) AND (0 = QVIEW3.`ctype`)))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW4.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(QVIEW4.`teacherid` = '0') AND
(QVIEW4.`teachertype` = 2) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW5.`id`) AND
(((3 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)) OR (((1 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)) OR ((2 = QVIEW5.`teachertype`) AND (0 = QVIEW5.`ctype`)))))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`courses` QVIEW2,
`courses` QVIEW3,
`ta` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW2.`id`) AND
(((3 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR (((1 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)) OR ((2 = QVIEW2.`teachertype`) AND (0 = QVIEW2.`ctype`)))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`courseid`))
 
UNION
(
SELECT 
   QVIEW1.`studid` as var0, 
   QVIEW1.`courseid` as var1
 FROM 
`takescourses` QVIEW1,
`students` QVIEW2,
`courses` QVIEW3,
`courses` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`coursetype` = 0) AND
QVIEW1.`courseid` IS NOT NULL AND
QVIEW1.`studid` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW1.`studid` = QVIEW2.`id`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`ctype` = 0) AND
(QVIEW1.`courseid` = QVIEW3.`id`) AND
(QVIEW3.`teacherid` = '0') AND
(QVIEW3.`teachertype` = 2) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`courseid` = QVIEW4.`id`) AND
(((3 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR (((1 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`)) OR ((2 = QVIEW4.`teachertype`) AND (0 = QVIEW4.`ctype`))))
 ) 
 
 ) SUBQALIAS