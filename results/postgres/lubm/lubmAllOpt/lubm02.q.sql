CREATE TEMPORARY TABLE viewtable526 AS select distinct alias2."underD" as "underD" from 
"public"."teachers" alias2 
where 
(alias2."ttype" = 0 or (alias2."ttype" = 3 or (alias2."ttype" = 1 or alias2."ttype" = 2))) and 
alias2."underD" IS NOT NULL

CREATE TEMPORARY TABLE viewtable527 AS select distinct alias3."masterD" as "masterD" from 
"public"."teachers" alias3 
where 
(alias3."ttype" = 0 or (alias3."ttype" = 3 or (alias3."ttype" = 1 or alias3."ttype" = 2))) and 
alias3."masterD" IS NOT NULL

CREATE TEMPORARY TABLE viewtable528 AS select distinct alias3."underD" as "underD" from 
"public"."teachers" alias3 
where 
(alias3."ttype" = 0 or (alias3."ttype" = 3 or (alias3."ttype" = 1 or alias3."ttype" = 2))) and 
alias3."underD" IS NOT NULL

CREATE TEMPORARY TABLE viewtable529 AS select distinct alias2."docD" as "docD" from 
"public"."teachers" alias2 
where 
(alias2."ttype" = 0 or (alias2."ttype" = 3 or (alias2."ttype" = 1 or alias2."ttype" = 2))) and 
alias2."docD" IS NOT NULL

CREATE TEMPORARY TABLE viewtable530 AS select distinct alias2."masterD" as "masterD" from 
"public"."teachers" alias2 
where 
(alias2."ttype" = 0 or (alias2."ttype" = 3 or (alias2."ttype" = 1 or alias2."ttype" = 2))) and 
alias2."masterD" IS NOT NULL

CREATE TEMPORARY TABLE viewtable531 AS select distinct alias3."docD" as "docD" from 
"public"."teachers" alias3 
where 
(alias3."ttype" = 0 or (alias3."ttype" = 3 or (alias3."ttype" = 1 or alias3."ttype" = 2))) and 
alias3."docD" IS NOT NULL

SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var5 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable526 qview3,
viewtable531 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."underD") AND
(qview1."uniid" = qview4."docD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable528 qview3,
viewtable530 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."underD") AND
(qview1."uniid" = qview4."masterD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable527 qview3,
viewtable530 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."masterD") AND
(qview1."uniid" = qview4."masterD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable526 qview3,
viewtable528 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."underD") AND
(qview1."uniid" = qview4."underD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable530 qview3
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."masterD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable526 qview3
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."underD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable529 qview3,
viewtable531 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."docD") AND
(qview1."uniid" = qview4."docD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable530 qview3,
viewtable531 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."masterD") AND
(qview1."uniid" = qview4."docD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable526 qview3,
viewtable527 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."underD") AND
(qview1."uniid" = qview4."masterD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable528 qview3,
viewtable529 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."underD") AND
(qview1."uniid" = qview4."docD"))
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2, 
   qview1."uniid" as var3, 
   qview1."depid" as var4, 
   qview1."uniid" as var5
 FROM 
"public"."students" qview1,
"public"."departments" qview2,
viewtable529 qview3
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."docD")
 ) 
 
 ) SUBQALIAS