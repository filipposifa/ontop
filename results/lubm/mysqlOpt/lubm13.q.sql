SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssociateProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 2) AND
(QVIEW1.`docD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 2) AND
(QVIEW1.`underD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 2) AND
(QVIEW1.`masterD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/Lecturer', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 0) AND
(QVIEW1.`masterD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 0) AND
(QVIEW1.`underD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 0) AND
(QVIEW1.`docD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/FullProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 3) AND
(QVIEW1.`masterD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 3) AND
(QVIEW1.`underD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 3) AND
(QVIEW1.`docD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssistantProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 1) AND
(QVIEW1.`masterD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 1) AND
(QVIEW1.`docD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`ttype` = 1) AND
(QVIEW1.`underD` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/GraduateStudent', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`
FROM (
 (
SELECT 
   QVIEW1.`depid` as var0, 
   QVIEW1.`uniid` as var1, 
   QVIEW1.`id` as var2
 FROM 
`students` QVIEW1
WHERE 
(QVIEW1.`stype` = 1) AND
(QVIEW1.`degreeuniid` = '0') AND
QVIEW1.`depid` IS NOT NULL AND
QVIEW1.`uniid` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL
 ) 
 
 ) SUBQALIAS