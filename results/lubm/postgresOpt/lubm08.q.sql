SELECT *
FROM (
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(var3 AS VARCHAR(10485760)) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."id" as var1, 
   qview1."depid" as var2, 
   qview1."email" as var3
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
"public"."takescourses" qview3
WHERE 
(qview1."uniid" = '0') AND
(qview1."stype" = 1) AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview2."universityid" = '0') AND
(qview1."depid" = qview3."depid") AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview1."email" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."id" as var1, 
   qview1."depid" as var2, 
   qview1."email" as var3
 FROM 
"public"."students" qview1,
"public"."departments" qview2
WHERE 
(qview1."uniid" = '0') AND
(qview1."stype" = 1) AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview2."universityid" = '0') AND
qview1."email" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."id" as var1, 
   qview1."depid" as var2, 
   qview1."email" as var3
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
"public"."takescourses" qview3
WHERE 
(qview1."uniid" = '0') AND
(qview1."stype" = 1) AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview2."universityid" = '0') AND
qview1."email" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(var3 AS VARCHAR(10485760)) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."id" as var1, 
   qview1."depid" as var2, 
   qview1."email" as var3
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
"public"."takescourses" qview3
WHERE 
(qview1."uniid" = '0') AND
(qview1."stype" = 0) AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview2."universityid" = '0') AND
(qview1."depid" = qview3."depid") AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview1."email" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."id" as var1, 
   qview1."depid" as var2, 
   qview1."email" as var3
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
"public"."takescourses" qview3
WHERE 
(qview1."uniid" = '0') AND
(qview1."stype" = 0) AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview2."universityid" = '0') AND
qview1."email" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."id" as var1, 
   qview1."depid" as var2, 
   qview1."email" as var3
 FROM 
"public"."students" qview1,
"public"."departments" qview2
WHERE 
(qview1."uniid" = '0') AND
(qview1."stype" = 0) AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview2."universityid" = '0') AND
qview1."email" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

