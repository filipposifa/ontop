SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
FROM (
 (
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((0 = qview2."teachertype") AND (1 = qview2."ctype")) OR (((3 = qview2."teachertype") AND (1 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (1 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((0 = qview4."teachertype") AND (1 = qview4."ctype")) OR (((3 = qview4."teachertype") AND (1 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (1 = qview4."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 1) AND
(qview1."courseid" = qview2."id") AND
(qview2."teachertype" = 1) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((0 = qview4."teachertype") AND (1 = qview4."ctype")) OR (((3 = qview4."teachertype") AND (1 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (1 = qview4."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 1) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((0 = qview3."teachertype") AND (1 = qview3."ctype")) OR (((3 = qview3."teachertype") AND (1 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (1 = qview3."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 1) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 1) AND
(qview1."courseid" = qview2."id") AND
(qview2."teachertype" = 1) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((0 = qview3."teachertype") AND (1 = qview3."ctype")) OR (((3 = qview3."teachertype") AND (1 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (1 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 1) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."id") AND
(((0 = qview5."teachertype") AND (1 = qview5."ctype")) OR (((3 = qview5."teachertype") AND (1 = qview5."ctype")) OR ((2 = qview5."teachertype") AND (1 = qview5."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((0 = qview2."teachertype") AND (1 = qview2."ctype")) OR (((3 = qview2."teachertype") AND (1 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (1 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 1) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((0 = qview2."teachertype") AND (1 = qview2."ctype")) OR (((3 = qview2."teachertype") AND (1 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (1 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 1) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((0 = qview3."teachertype") AND (1 = qview3."ctype")) OR (((3 = qview3."teachertype") AND (1 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (1 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview5."ctype" = 1) AND
(qview1."courseid" = qview5."id") AND
(qview5."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((0 = qview3."teachertype") AND (1 = qview3."ctype")) OR (((3 = qview3."teachertype") AND (1 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (1 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 1) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."id") AND
(((0 = qview5."teachertype") AND (1 = qview5."ctype")) OR (((3 = qview5."teachertype") AND (1 = qview5."ctype")) OR ((2 = qview5."teachertype") AND (1 = qview5."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 1) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 1) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((0 = qview4."teachertype") AND (1 = qview4."ctype")) OR (((3 = qview4."teachertype") AND (1 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (1 = qview4."ctype"))))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
FROM (
 (
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((3 = qview3."teachertype") AND (0 = qview3."ctype")) OR (((1 = qview3."teachertype") AND (0 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (0 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview5."ctype" = 0) AND
(qview1."courseid" = qview5."id") AND
(qview5."teachertype" = 0))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teachertype" = 0) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((3 = qview4."teachertype") AND (0 = qview4."ctype")) OR (((1 = qview4."teachertype") AND (0 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (0 = qview4."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((3 = qview2."teachertype") AND (0 = qview2."ctype")) OR (((1 = qview2."teachertype") AND (0 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (0 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((3 = qview4."teachertype") AND (0 = qview4."ctype")) OR (((1 = qview4."teachertype") AND (0 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (0 = qview4."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."ta" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teachertype" = 0) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."courseid"))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."ta" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."courseid"))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 0))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."ta" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."courseid"))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."ta" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 0) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."courseid"))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teachertype" = 0))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((3 = qview3."teachertype") AND (0 = qview3."ctype")) OR (((1 = qview3."teachertype") AND (0 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (0 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."ta" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."courseid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview5."ctype" = 0) AND
(qview1."courseid" = qview5."id") AND
(qview5."teachertype" = 0))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((3 = qview4."teachertype") AND (0 = qview4."ctype")) OR (((1 = qview4."teachertype") AND (0 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (0 = qview4."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teachertype" = 0) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."ta" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."courseid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((3 = qview2."teachertype") AND (0 = qview2."ctype")) OR (((1 = qview2."teachertype") AND (0 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (0 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teachertype" = 0))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."ctype" = 0) AND
(qview1."courseid" = qview2."id") AND
(qview2."teacherid" = '0') AND
(qview2."teachertype" = 2) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((3 = qview3."teachertype") AND (0 = qview3."ctype")) OR (((1 = qview3."teachertype") AND (0 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (0 = qview3."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."ta" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."courseid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teachertype" = 0))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."ta" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."courseid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."id") AND
(((3 = qview4."teachertype") AND (0 = qview4."ctype")) OR (((1 = qview4."teachertype") AND (0 = qview4."ctype")) OR ((2 = qview4."teachertype") AND (0 = qview4."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((3 = qview3."teachertype") AND (0 = qview3."ctype")) OR (((1 = qview3."teachertype") AND (0 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (0 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."id") AND
(((3 = qview5."teachertype") AND (0 = qview5."ctype")) OR (((1 = qview5."teachertype") AND (0 = qview5."ctype")) OR ((2 = qview5."teachertype") AND (0 = qview5."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((3 = qview2."teachertype") AND (0 = qview2."ctype")) OR (((1 = qview2."teachertype") AND (0 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (0 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 0) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."id") AND
(((3 = qview5."teachertype") AND (0 = qview5."ctype")) OR (((1 = qview5."teachertype") AND (0 = qview5."ctype")) OR ((2 = qview5."teachertype") AND (0 = qview5."ctype")))))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
"public"."ta" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."id") AND
(((3 = qview3."teachertype") AND (0 = qview3."ctype")) OR (((1 = qview3."teachertype") AND (0 = qview3."ctype")) OR ((2 = qview3."teachertype") AND (0 = qview3."ctype")))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."courseid"))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."courses" qview2,
"public"."courses" qview3,
"public"."ta" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."courseid" = qview2."id") AND
(((3 = qview2."teachertype") AND (0 = qview2."ctype")) OR (((1 = qview2."teachertype") AND (0 = qview2."ctype")) OR ((2 = qview2."teachertype") AND (0 = qview2."ctype")))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teacherid" = '0') AND
(qview3."teachertype" = 2) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."courseid" = qview4."courseid"))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."ctype" = 0) AND
(qview1."courseid" = qview3."id") AND
(qview3."teachertype" = 0) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."ta" qview3,
"public"."courses" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."courseid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."studid" as var0, 
   qview1."courseid" as var1
 FROM 
"public"."takescourses" qview1,
"public"."students" qview2,
"public"."ta" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."coursetype" = 0) AND
qview1."courseid" IS NOT NULL AND
qview1."studid" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview1."studid" = qview2."id") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."courseid" = qview3."courseid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview4."ctype" = 0) AND
(qview1."courseid" = qview4."id") AND
(qview4."teacherid" = '0') AND
(qview4."teachertype" = 2) AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."courseid" = qview5."id") AND
(((3 = qview5."teachertype") AND (0 = qview5."ctype")) OR (((1 = qview5."teachertype") AND (0 = qview5."ctype")) OR ((2 = qview5."teachertype") AND (0 = qview5."ctype"))))
 ) 
 
 ) SUBQALIAS