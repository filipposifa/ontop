SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS VARCHAR(500)) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(var3 AS VARCHAR(500)) AS "z"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2, 
   QVIEW1."EMAIL" as var3
 FROM 
"PUBLIC"."STUDENTS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2,
"PUBLIC"."TAKESCOURSES" QVIEW3
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 1) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."STUDID") AND
(QVIEW3."COURSETYPE" = 1) AND
QVIEW1."EMAIL" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2, 
   QVIEW1."EMAIL" as var3
 FROM 
"PUBLIC"."STUDENTS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2,
"PUBLIC"."TAKESCOURSES" QVIEW3
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 1) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."STUDID") AND
(QVIEW3."COURSETYPE" = 1))
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2, 
   QVIEW1."EMAIL" as var3
 FROM 
"PUBLIC"."STUDENTS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 1) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
QVIEW1."EMAIL" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS VARCHAR(500)) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(var3 AS VARCHAR(500)) AS "z"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2, 
   QVIEW1."EMAIL" as var3
 FROM 
"PUBLIC"."STUDENTS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2,
"PUBLIC"."TAKESCOURSES" QVIEW3
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 0) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."STUDID") AND
(QVIEW3."COURSETYPE" = 0) AND
QVIEW1."EMAIL" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2, 
   QVIEW1."EMAIL" as var3
 FROM 
"PUBLIC"."STUDENTS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 0) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
QVIEW1."EMAIL" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2, 
   QVIEW1."EMAIL" as var3
 FROM 
"PUBLIC"."STUDENTS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2,
"PUBLIC"."TAKESCOURSES" QVIEW3
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 0) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."STUDID") AND
(QVIEW3."COURSETYPE" = 0)
 ) 
 
 ) SUBQALIAS