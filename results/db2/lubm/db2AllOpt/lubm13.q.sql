SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 2) AND
(QVIEW1."MASTERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 2) AND
(QVIEW1."DOCD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 2) AND
(QVIEW1."UNDERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 0) AND
(QVIEW1."MASTERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 0) AND
(QVIEW1."UNDERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 0) AND
(QVIEW1."DOCD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 3) AND
(QVIEW1."UNDERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 3) AND
(QVIEW1."MASTERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 3) AND
(QVIEW1."DOCD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 1) AND
(QVIEW1."MASTERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 1) AND
(QVIEW1."UNDERD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."TTYPE" = 1) AND
(QVIEW1."DOCD" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."UNIID" as var1, 
   QVIEW1."ID" as var2
 FROM 
"PUBLIC"."STUDENTS" QVIEW1
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."DEGREEUNIID" = '0') AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL
 ) 
 
 ) SUBQALIAS