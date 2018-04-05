SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu') AS `y`, 
   4 AS `zQuestType`, NULL AS `zLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`id` as var1, 
   QVIEW1.`depid` as var2, 
   QVIEW1.`email` as var3
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
`takescourses` QVIEW3
WHERE 
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`stype` = 1) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW2.`universityid` = '0') AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`id` as var1, 
   QVIEW1.`depid` as var2, 
   QVIEW1.`email` as var3
 FROM 
`students` QVIEW1,
`departments` QVIEW2
WHERE 
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`stype` = 1) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW2.`universityid` = '0') AND
QVIEW1.`email` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`id` as var1, 
   QVIEW1.`depid` as var2, 
   QVIEW1.`email` as var3
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
`takescourses` QVIEW3
WHERE 
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`stype` = 1) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW2.`universityid` = '0') AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 1) AND
QVIEW1.`email` IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/UndergraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   1 AS `yQuestType`, NULL AS `yLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu') AS `y`, 
   4 AS `zQuestType`, NULL AS `zLang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `z`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`id` as var1, 
   QVIEW1.`depid` as var2, 
   QVIEW1.`email` as var3
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
`takescourses` QVIEW3
WHERE 
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`stype` = 0) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW2.`universityid` = '0') AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0))
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`id` as var1, 
   QVIEW1.`depid` as var2, 
   QVIEW1.`email` as var3
 FROM 
`students` QVIEW1,
`departments` QVIEW2,
`takescourses` QVIEW3
WHERE 
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`stype` = 0) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW2.`universityid` = '0') AND
(QVIEW1.`depid` = QVIEW3.`depid`) AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`studid`) AND
(QVIEW3.`coursetype` = 0) AND
QVIEW1.`email` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`id` as var1, 
   QVIEW1.`depid` as var2, 
   QVIEW1.`email` as var3
 FROM 
`students` QVIEW1,
`departments` QVIEW2
WHERE 
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`stype` = 0) AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW1.`depid` = QVIEW2.`departmentid`) AND
(QVIEW2.`universityid` = '0') AND
QVIEW1.`email` IS NOT NULL
 ) 
 
 ) SUBQALIAS