CREATE TEMPORARY TABLE viewtable6114 AS select distinct alias6."depid" as "depid", 
alias6."uniid" as "uniid", 
alias6."teacherid" as "teacherid" from 
"public"."courses" alias6 
where 
(alias6."teachertype" = 2 and alias6."ctype" = 1 or alias6."teachertype" = 2 and alias6."ctype" = 0) and 
alias6."depid" IS NOT NULL and 
alias6."uniid" IS NOT NULL and 
alias6."teacherid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6115 AS select distinct alias5."depid" as "depid", 
alias5."uniid" as "uniid", 
alias5."advisorid" as "advisorid" from 
"public"."students" alias5 
where 
(alias5."advisortype" = 2 and alias5."stype" = 1 or alias5."advisortype" = 2 and alias5."stype" = 0) and 
alias5."advisorid" IS NOT NULL and 
alias5."depid" IS NOT NULL and 
alias5."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6116 AS select distinct alias0."depid" as "depid", 
alias0."uniid" as "uniid", 
alias0."advisorid" as "advisorid" from 
"public"."students" alias0 
where 
(alias0."advisortype" = 2 and alias0."stype" = 1 or alias0."advisortype" = 2 and alias0."stype" = 0) and 
alias0."depid" IS NOT NULL and 
alias0."uniid" IS NOT NULL and 
alias0."advisorid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6117 AS select distinct alias8."depid" as "depid", 
alias8."uniid" as "uniid", 
alias8."teacherid" as "teacherid" from 
"public"."courses" alias8 
where 
(alias8."teachertype" = 3 and alias8."ctype" = 1 or alias8."teachertype" = 3 and alias8."ctype" = 0) and 
alias8."teacherid" IS NOT NULL and 
alias8."depid" IS NOT NULL and 
alias8."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6118 AS select distinct alias6."depid" as "depid", 
alias6."uniid" as "uniid", 
alias6."teacherid" as "teacherid" from 
"public"."courses" alias6 
where 
(alias6."teachertype" = 3 and alias6."ctype" = 1 or alias6."teachertype" = 3 and alias6."ctype" = 0) and 
alias6."depid" IS NOT NULL and 
alias6."uniid" IS NOT NULL and 
alias6."teacherid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6119 AS select distinct alias5."depid" as "depid", 
alias5."uniid" as "uniid", 
alias5."advisorid" as "advisorid" from 
"public"."students" alias5 
where 
alias5."stype" = 0 and 
alias5."advisortype" = 1 and 
alias5."advisorid" IS NOT NULL and 
alias5."depid" IS NOT NULL and 
alias5."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6120 AS select distinct alias3."depid" as "depid", 
alias3."uniid" as "uniid", 
alias3."teacherid" as "teacherid" from 
"public"."courses" alias3 
where 
(alias3."teachertype" = 3 and alias3."ctype" = 1 or alias3."teachertype" = 3 and alias3."ctype" = 0) and 
alias3."teacherid" IS NOT NULL and 
alias3."depid" IS NOT NULL and 
alias3."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6121 AS select distinct alias7."depid" as "depid", 
alias7."uniid" as "uniid", 
alias7."advisorid" as "advisorid" from 
"public"."students" alias7 
where 
(alias7."advisortype" = 2 and alias7."stype" = 1 or alias7."advisortype" = 2 and alias7."stype" = 0) and 
alias7."advisorid" IS NOT NULL and 
alias7."depid" IS NOT NULL and 
alias7."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6122 AS select distinct alias0."depid" as "depid", 
alias0."uniid" as "uniid", 
alias0."advisorid" as "advisorid" from 
"public"."students" alias0 
where 
alias0."stype" = 0 and 
alias0."advisortype" = 1 and 
alias0."depid" IS NOT NULL and 
alias0."advisorid" IS NOT NULL and 
alias0."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6123 AS select distinct alias0."depid" as "depid", 
alias0."uniid" as "uniid", 
alias0."advisorid" as "advisorid" from 
"public"."students" alias0 
where 
(alias0."advisortype" = 3 and alias0."stype" = 1 or alias0."advisortype" = 3 and alias0."stype" = 0) and 
alias0."depid" IS NOT NULL and 
alias0."uniid" IS NOT NULL and 
alias0."advisorid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6124 AS select distinct alias0."depid" as "depid", 
alias0."uniid" as "uniid", 
alias0."advisorid" as "advisorid" from 
"public"."students" alias0 
where 
alias0."stype" = 1 and 
alias0."advisortype" = 1 and 
alias0."depid" IS NOT NULL and 
alias0."advisorid" IS NOT NULL and 
alias0."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6125 AS select distinct alias5."depid" as "depid", 
alias5."uniid" as "uniid", 
alias5."advisorid" as "advisorid" from 
"public"."students" alias5 
where 
alias5."stype" = 1 and 
alias5."advisortype" = 1 and 
alias5."advisorid" IS NOT NULL and 
alias5."depid" IS NOT NULL and 
alias5."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6126 AS select distinct alias0."advisorid" as "advisorid", 
alias0."depid" as "depid", 
alias0."uniid" as "uniid" from 
"public"."students" alias0 
where 
(alias0."advisortype" = 2 and alias0."stype" = 1 or alias0."advisortype" = 2 and alias0."stype" = 0) and 
alias0."depid" IS NOT NULL and 
alias0."advisorid" IS NOT NULL and 
alias0."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6127 AS select distinct alias3."depid" as "depid", 
alias3."uniid" as "uniid", 
alias3."teacherid" as "teacherid" from 
"public"."courses" alias3 
where 
(alias3."teachertype" = 2 and alias3."ctype" = 1 or alias3."teachertype" = 2 and alias3."ctype" = 0) and 
alias3."teacherid" IS NOT NULL and 
alias3."depid" IS NOT NULL and 
alias3."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6128 AS select distinct alias8."depid" as "depid", 
alias8."uniid" as "uniid", 
alias8."teacherid" as "teacherid" from 
"public"."courses" alias8 
where 
(alias8."teachertype" = 2 and alias8."ctype" = 1 or alias8."teachertype" = 2 and alias8."ctype" = 0) and 
alias8."teacherid" IS NOT NULL and 
alias8."depid" IS NOT NULL and 
alias8."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6129 AS select distinct alias5."depid" as "depid", 
alias5."uniid" as "uniid", 
alias5."advisorid" as "advisorid" from 
"public"."students" alias5 
where 
(alias5."advisortype" = 3 and alias5."stype" = 1 or alias5."advisortype" = 3 and alias5."stype" = 0) and 
alias5."advisorid" IS NOT NULL and 
alias5."depid" IS NOT NULL and 
alias5."uniid" IS NOT NULL

CREATE TEMPORARY TABLE viewtable6130 AS select distinct alias7."depid" as "depid", 
alias7."uniid" as "uniid", 
alias7."advisorid" as "advisorid" from 
"public"."students" alias7 
where 
(alias7."advisortype" = 3 and alias7."stype" = 1 or alias7."advisortype" = 3 and alias7."stype" = 0) and 
alias7."advisorid" IS NOT NULL and 
alias7."depid" IS NOT NULL and 
alias7."uniid" IS NOT NULL

SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6114 qview4,
viewtable6116 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6116 qview4,
viewtable6121 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6116 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 2) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 2) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6114 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 2) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 2) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 2) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6114 qview4,
viewtable6115 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6115 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 2) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6114 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 2) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6114 qview4,
viewtable6128 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 1) AND
(qview1."advisorid" = qview4."id"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."teachers" qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ctype" = 1) AND
(qview1."advisorid" = qview2."teacherid") AND
(qview2."teachertype" = 1) AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview5."ttype" = 1) AND
(qview1."advisorid" = qview5."id"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6125 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 1) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6125 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ctype" = 1) AND
(qview1."advisorid" = qview2."teacherid") AND
(qview2."teachertype" = 1) AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 1) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview5."ctype" = 1) AND
(qview1."advisorid" = qview5."teacherid") AND
(qview5."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6124 qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ctype" = 1) AND
(qview1."advisorid" = qview2."teacherid") AND
(qview2."teachertype" = 1) AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6125 qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
viewtable6125 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 1) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6124 qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6125 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 1) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 1) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."teachers" qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ctype" = 0) AND
(qview1."advisorid" = qview2."teacherid") AND
(qview2."teachertype" = 1) AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview5."ttype" = 1) AND
(qview1."advisorid" = qview5."id"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."courses" qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 1) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview5."ctype" = 0) AND
(qview1."advisorid" = qview5."teacherid") AND
(qview5."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6119 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 1) AND
(qview1."advisorid" = qview4."id"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6119 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ctype" = 0) AND
(qview1."advisorid" = qview2."teacherid") AND
(qview2."teachertype" = 1) AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6119 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 1) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6119 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 1) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."courses" qview4,
viewtable6119 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6122 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ctype" = 0) AND
(qview1."advisorid" = qview2."teacherid") AND
(qview2."teachertype" = 1) AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 1))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 1) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 1)
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6121 qview4,
viewtable6126 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid") AND
(qview1."advisorid" = qview5."advisorid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6115 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 2) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6116 qview4,
viewtable6127 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6116 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 2) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 2) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6115 qview4,
viewtable6127 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6114 qview4,
viewtable6127 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 2) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 2))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6127 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 2) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 2) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6127 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 2) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 2) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 2) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."heads" qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."profid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6120 qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 3) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."profid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."advisorid" = qview2."profid") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."profid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6123 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."teachers" qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."advisorid" = qview2."profid") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview5."ttype" = 3) AND
(qview1."advisorid" = qview5."id"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6118 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."advisorid" = qview2."profid") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 1) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 1) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 3) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6118 qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6129 qview4,
viewtable6130 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."profid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6118 qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 1) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 1) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 1) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid")
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var6 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var7 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var8 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."profid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6123 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."advisorid" = qview2."profid") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."teachers" qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."advisorid" = qview2."profid") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview5."ttype" = 3) AND
(qview1."advisorid" = qview5."id"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6123 qview4,
viewtable6129 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."advisorid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."heads" qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."profid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6117 qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable6120 qview4,
viewtable6123 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."profid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."advisorid" = qview2."profid") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3) AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6123 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 3) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."teachers" qview4,
viewtable6120 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ttype" = 3) AND
(qview1."advisorid" = qview4."id") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."teacherid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."advisorid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview2."ttype" = 3) AND
(qview1."advisorid" = qview2."id") AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview1."id" = qview3."studid") AND
(qview3."coursetype" = 0) AND
qview3."courseid" IS NOT NULL AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview4."ctype" = 0) AND
(qview3."courseid" = qview4."id") AND
(qview1."advisorid" = qview4."teacherid") AND
(qview4."teachertype" = 3))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."depid" as var3, 
   qview1."uniid" as var4, 
   qview1."advisorid" as var5, 
   qview1."depid" as var6, 
   qview1."uniid" as var7, 
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4,
viewtable6123 qview5
WHERE 
(qview1."stype" = 0) AND
(qview1."advisortype" = 3) AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."depid") AND
(qview1."uniid" = qview2."uniid") AND
(qview1."id" = qview2."studid") AND
(qview2."coursetype" = 0) AND
qview2."courseid" IS NOT NULL AND
(qview1."depid" = qview3."depid") AND
(qview1."uniid" = qview3."uniid") AND
(qview3."ctype" = 0) AND
(qview2."courseid" = qview3."id") AND
(qview1."advisorid" = qview3."teacherid") AND
(qview3."teachertype" = 3) AND
(qview1."depid" = qview4."depid") AND
(qview1."uniid" = qview4."uniid") AND
(qview1."advisorid" = qview4."profid") AND
(qview1."depid" = qview5."depid") AND
(qview1."uniid" = qview5."uniid") AND
(qview1."advisorid" = qview5."advisorid")
 ) 
 
 ) SUBQALIAS