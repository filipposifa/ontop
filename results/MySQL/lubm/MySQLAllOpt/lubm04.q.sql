SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssociateProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   4 AS `y1QuestType`, NULL AS `y1Lang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `y1`, 
   4 AS `y2QuestType`, NULL AS `y2Lang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `y2`, 
   3 AS `y3QuestType`, NULL AS `y3Lang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `y3`
FROM (
 (
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((2 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((2 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((2 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((2 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((2 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((2 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((2 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((2 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((2 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((2 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((2 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((2 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 2) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((2 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((2 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`)))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/FullProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   4 AS `y1QuestType`, NULL AS `y1Lang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `y1`, 
   4 AS `y2QuestType`, NULL AS `y2Lang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `y2`, 
   3 AS `y3QuestType`, NULL AS `y3Lang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `y3`
FROM (
 (
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`heads` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`profid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3,
`students` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`heads` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`profid`) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3,
`students` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4,
`heads` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`heads` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`heads` QVIEW4,
`students` QVIEW5,
`students` QVIEW6
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`profid`) AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW6.`depid` = '0') AND
(QVIEW6.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW6.`advisorid`) AND
(((3 = QVIEW6.`advisortype`) AND (1 = QVIEW6.`stype`)) OR ((3 = QVIEW6.`advisortype`) AND (0 = QVIEW6.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`heads` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`heads` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`profid`) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3,
`students` QVIEW4,
`students` QVIEW5
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW5.`depid` = '0') AND
(QVIEW5.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW5.`advisorid`) AND
(((3 = QVIEW5.`advisortype`) AND (1 = QVIEW5.`stype`)) OR ((3 = QVIEW5.`advisortype`) AND (0 = QVIEW5.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`heads` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(((3 = QVIEW2.`advisortype`) AND (1 = QVIEW2.`stype`)) OR ((3 = QVIEW2.`advisortype`) AND (0 = QVIEW2.`stype`))) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`profid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`heads` QVIEW2,
`students` QVIEW3,
`students` QVIEW4
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 3) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW2.`profid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
(((3 = QVIEW3.`advisortype`) AND (1 = QVIEW3.`stype`)) OR ((3 = QVIEW3.`advisortype`) AND (0 = QVIEW3.`stype`))) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW4.`depid` = '0') AND
(QVIEW4.`uniid` = '0') AND
(QVIEW1.`id` = QVIEW4.`advisorid`) AND
(((3 = QVIEW4.`advisortype`) AND (1 = QVIEW4.`stype`)) OR ((3 = QVIEW4.`advisortype`) AND (0 = QVIEW4.`stype`)))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `xQuestType`, NULL AS `xLang`, CONCAT('http://www.Department', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.University', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '.edu/AssistantProfessor', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `x`, 
   4 AS `y1QuestType`, NULL AS `y1Lang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `y1`, 
   4 AS `y2QuestType`, NULL AS `y2Lang`, CAST(var2 AS CHAR(8000) CHARACTER SET utf8) AS `y2`, 
   3 AS `y3QuestType`, NULL AS `y3Lang`, CAST(var3 AS CHAR(8000) CHARACTER SET utf8) AS `y3`
FROM (
 (
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 0) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 1) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 1) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 1) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 0) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 1) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 0) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 0) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2,
`students` QVIEW3
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL AND
(QVIEW3.`depid` = '0') AND
(QVIEW3.`uniid` = '0') AND
(QVIEW3.`stype` = 0) AND
(QVIEW3.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW3.`advisorid`))
 
UNION
(
SELECT 
   QVIEW1.`id` as var0, 
   QVIEW1.`name` as var1, 
   QVIEW1.`email` as var2, 
   QVIEW1.`phone` as var3
 FROM 
`teachers` QVIEW1,
`students` QVIEW2
WHERE 
(QVIEW1.`depid` = '0') AND
(QVIEW1.`uniid` = '0') AND
(QVIEW1.`ttype` = 1) AND
QVIEW1.`name` IS NOT NULL AND
QVIEW1.`id` IS NOT NULL AND
(QVIEW2.`depid` = '0') AND
(QVIEW2.`uniid` = '0') AND
(QVIEW2.`stype` = 1) AND
(QVIEW2.`advisortype` = 1) AND
(QVIEW1.`id` = QVIEW2.`advisorid`) AND
QVIEW1.`email` IS NOT NULL AND
QVIEW1.`phone` IS NOT NULL
 ) 
 
 ) SUBQALIAS