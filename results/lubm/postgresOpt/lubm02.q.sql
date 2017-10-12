CREATE TEMPORARY TABLE viewtable216 AS select distinct alias0."underD" as "underD" from 
"teachers" alias0 
where 
(alias0."ttype" = 0 or (alias0."ttype" = 3 or (alias0."ttype" = 1 or alias0."ttype" = 2)));
CREATE TEMPORARY TABLE viewtable217 AS select distinct alias0."masterD" as "masterD" from 
"teachers" alias0 
where 
(alias0."ttype" = 0 or (alias0."ttype" = 3 or (alias0."ttype" = 1 or alias0."ttype" = 2)));
CREATE TEMPORARY TABLE viewtable218 AS select distinct alias0."docD" as "docD" from 
"teachers" alias0 
where 
(alias0."ttype" = 0 or (alias0."ttype" = 3 or (alias0."ttype" = 1 or alias0."ttype" = 2)));
CREATE TEMPORARY TABLE viewtable219 AS select distinct alias1."docD" as "docD" from 
"teachers" alias1 
where 
(alias1."ttype" = 0 or (alias1."ttype" = 3 or (alias1."ttype" = 1 or alias1."ttype" = 2)));
CREATE TEMPORARY TABLE viewtable220 AS select distinct alias1."underD" as "underD" from 
"teachers" alias1 
where 
(alias1."ttype" = 0 or (alias1."ttype" = 3 or (alias1."ttype" = 1 or alias1."ttype" = 2)));
CREATE TEMPORARY TABLE viewtable221 AS select distinct alias1."masterD" as "masterD" from 
"teachers" alias1 
where 
(alias1."ttype" = 0 or (alias1."ttype" = 3 or (alias1."ttype" = 1 or alias1."ttype" = 2)));
SELECT *
FROM (
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
viewtable218 qview3,
viewtable221 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."docD") AND
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
viewtable218 qview3,
viewtable220 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."docD") AND
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
viewtable217 qview3,
viewtable221 qview4
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
viewtable216 qview3,
viewtable221 qview4
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
viewtable217 qview3,
viewtable220 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."masterD") AND
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
viewtable216 qview3
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
viewtable216 qview3,
viewtable219 qview4
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
viewtable218 qview3
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."docD"))
 
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
viewtable217 qview3,
viewtable219 qview4
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
viewtable216 qview3,
viewtable220 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
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
viewtable217 qview3
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
"public"."departments" qview2,
viewtable218 qview3,
viewtable219 qview4
WHERE 
(qview1."stype" = 1) AND
(qview1."uniid" = qview1."degreeuniid") AND
qview1."uniid" IS NOT NULL AND
qview1."depid" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview1."depid" = qview2."departmentid") AND
(qview1."uniid" = qview2."universityid") AND
(qview1."uniid" = qview3."docD") AND
(qview1."uniid" = qview4."docD")
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

