SELECT *
FROM (
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 2) AND
(qview1."masterD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 2) AND
(qview1."underD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 2) AND
(qview1."docD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 0) AND
(qview1."docD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 0) AND
(qview1."underD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 0) AND
(qview1."masterD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 3) AND
(qview1."docD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 3) AND
(qview1."underD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 3) AND
(qview1."masterD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 1) AND
(qview1."underD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 1) AND
(qview1."masterD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."ttype" = 1) AND
(qview1."docD" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x"
FROM (
 (
SELECT 
   qview1."depid" as var0, 
   qview1."uniid" as var1, 
   qview1."id" as var2
 FROM 
"public"."students" qview1
WHERE 
(qview1."stype" = 1) AND
(qview1."degreeuniid" = '0') AND
qview1."depid" IS NOT NULL AND
qview1."uniid" IS NOT NULL AND
qview1."id" IS NOT NULL
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW

