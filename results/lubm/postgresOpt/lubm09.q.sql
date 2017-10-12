CREATE TEMPORARY TABLE viewtable5790 AS select distinct alias5."depid" as "depid", 
alias5."uniid" as "uniid", 
alias5."advisorid" as "advisorid" from 
"students" alias5 
where 
(alias5."advisortype" = 2 and alias5."stype" = 1 or alias5."advisortype" = 2 and alias5."stype" = 0);
CREATE TEMPORARY TABLE viewtable5791 AS select distinct alias1."depid" as "depid", 
alias1."uniid" as "uniid", 
alias1."teacherid" as "teacherid" from 
"courses" alias1 
where 
(alias1."teachertype" = 2 and alias1."ctype" = 1 or alias1."teachertype" = 2 and alias1."ctype" = 0);
CREATE TEMPORARY TABLE viewtable5792 AS select distinct alias2."depid" as "depid", 
alias2."uniid" as "uniid", 
alias2."advisorid" as "advisorid" from 
"students" alias2 
where 
(alias2."advisortype" = 3 and alias2."stype" = 1 or alias2."advisortype" = 3 and alias2."stype" = 0);
CREATE TEMPORARY TABLE viewtable5793 AS select distinct alias6."depid" as "depid", 
alias6."uniid" as "uniid", 
alias6."teacherid" as "teacherid" from 
"courses" alias6 
where 
(alias6."teachertype" = 2 and alias6."ctype" = 1 or alias6."teachertype" = 2 and alias6."ctype" = 0);
CREATE TEMPORARY TABLE viewtable5794 AS select distinct alias8."depid" as "depid", 
alias8."uniid" as "uniid", 
alias8."teacherid" as "teacherid" from 
"courses" alias8 
where 
(alias8."teachertype" = 2 and alias8."ctype" = 1 or alias8."teachertype" = 2 and alias8."ctype" = 0);
CREATE TEMPORARY TABLE viewtable5795 AS select distinct alias7."depid" as "depid", 
alias7."uniid" as "uniid", 
alias7."advisorid" as "advisorid" from 
"students" alias7 
where 
(alias7."advisortype" = 2 and alias7."stype" = 1 or alias7."advisortype" = 2 and alias7."stype" = 0);
CREATE TEMPORARY TABLE viewtable5796 AS select distinct alias8."depid" as "depid", 
alias8."uniid" as "uniid", 
alias8."teacherid" as "teacherid" from 
"courses" alias8 
where 
(alias8."teachertype" = 3 and alias8."ctype" = 1 or alias8."teachertype" = 3 and alias8."ctype" = 0);
CREATE TEMPORARY TABLE viewtable5797 AS select distinct alias1."depid" as "depid", 
alias1."uniid" as "uniid", 
alias1."teacherid" as "teacherid" from 
"courses" alias1 
where 
(alias1."teachertype" = 3 and alias1."ctype" = 1 or alias1."teachertype" = 3 and alias1."ctype" = 0);
CREATE TEMPORARY TABLE viewtable5798 AS select distinct alias7."depid" as "depid", 
alias7."uniid" as "uniid", 
alias7."advisorid" as "advisorid" from 
"students" alias7 
where 
(alias7."advisortype" = 3 and alias7."stype" = 1 or alias7."advisortype" = 3 and alias7."stype" = 0);
CREATE TEMPORARY TABLE viewtable5799 AS select distinct alias5."depid" as "depid", 
alias5."uniid" as "uniid", 
alias5."advisorid" as "advisorid" from 
"students" alias5 
where 
(alias5."advisortype" = 3 and alias5."stype" = 1 or alias5."advisortype" = 3 and alias5."stype" = 0);
CREATE TEMPORARY TABLE viewtable5800 AS select distinct alias6."depid" as "depid", 
alias6."uniid" as "uniid", 
alias6."teacherid" as "teacherid" from 
"courses" alias6 
where 
(alias6."teachertype" = 3 and alias6."ctype" = 1 or alias6."teachertype" = 3 and alias6."ctype" = 0);
SELECT *
FROM (
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
"public"."teachers" qview4,
viewtable5790 qview5
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
viewtable5793 qview5
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
viewtable5790 qview4,
viewtable5791 qview5
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
viewtable5793 qview4,
viewtable5794 qview5
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
viewtable5790 qview4,
viewtable5793 qview5
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
viewtable5790 qview5
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
viewtable5791 qview5
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
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable5790 qview4,
viewtable5795 qview5
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
(qview1."advisorid" = qview5."advisorid")
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
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."students" qview5
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
(qview5."stype" = 1) AND
(qview5."advisortype" = 1) AND
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
"public"."students" qview2,
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
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."advisorid" = qview2."advisorid") AND
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
"public"."students" qview4
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
(qview4."stype" = 1) AND
(qview4."advisortype" = 1) AND
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."courses" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."students" qview5
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
(qview5."stype" = 1) AND
(qview5."advisortype" = 1) AND
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
"public"."students" qview2,
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
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."advisorid" = qview2."advisorid") AND
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
"public"."students" qview2,
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
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."advisorid" = qview2."advisorid") AND
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
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."students" qview4
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
(qview4."stype" = 0) AND
(qview4."advisortype" = 1) AND
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
"public"."students" qview5
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
(qview5."stype" = 0) AND
(qview5."advisortype" = 1) AND
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
"public"."students" qview5
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
(qview5."stype" = 0) AND
(qview5."advisortype" = 1) AND
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
"public"."students" qview2,
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
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."advisorid" = qview2."advisorid") AND
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."students" qview2,
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
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."advisorid" = qview2."advisorid") AND
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
"public"."students" qview2,
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
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."advisorid" = qview2."advisorid") AND
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
"public"."teachers" qview4,
viewtable5791 qview5
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
viewtable5790 qview5
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
viewtable5790 qview4,
viewtable5795 qview5
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
viewtable5791 qview4,
viewtable5793 qview5
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
viewtable5790 qview4,
viewtable5791 qview5
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
"public"."teachers" qview4,
viewtable5790 qview5
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5793 qview5
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
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5797 qview5
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
viewtable5792 qview4,
viewtable5800 qview5
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
"public"."courses" qview4,
viewtable5792 qview5
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
viewtable5792 qview4,
viewtable5797 qview5
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
viewtable5792 qview4,
viewtable5799 qview5
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5800 qview5
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
"public"."heads" qview4,
viewtable5800 qview5
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
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable5796 qview4,
viewtable5800 qview5
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
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
"public"."heads" qview4,
viewtable5792 qview5
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
"public"."teachers" qview4,
viewtable5800 qview5
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
viewtable5792 qview5
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
"public"."teachers" qview4,
viewtable5792 qview5
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
viewtable5796 qview4,
viewtable5797 qview5
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5799 qview5
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
"public"."teachers" qview4,
viewtable5799 qview5
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
viewtable5797 qview5
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
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5799 qview5
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
   qview2."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."takescourses" qview2,
"public"."courses" qview3,
viewtable5797 qview4,
viewtable5799 qview5
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
viewtable5799 qview4,
viewtable5800 qview5
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
viewtable5792 qview4,
viewtable5798 qview5
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
"public"."teachers" qview4,
viewtable5797 qview5
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
"public"."heads" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5800 qview5
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
"public"."heads" qview4,
viewtable5799 qview5
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
   qview3."courseid" as var8
 FROM 
"public"."students" qview1,
"public"."teachers" qview2,
"public"."takescourses" qview3,
"public"."courses" qview4,
viewtable5797 qview5
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
(qview1."advisorid" = qview5."teacherid")
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

