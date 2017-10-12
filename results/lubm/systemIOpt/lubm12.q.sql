SELECT

   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS VARCHAR(500)) AS "y"
FROM (
 (
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."PROFID" as var1, 
   QVIEW1."DEPID" as var2
 FROM 
"PUBLIC"."HEADS" QVIEW1,
"PUBLIC"."DEPARTMENTS" QVIEW2
WHERE 
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."PROFID" IS NOT NULL AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0'))
 
UNION
(
SELECT 
   QVIEW1."DEPID" as var0, 
   QVIEW1."ID" as var1, 
   QVIEW1."DEPID" as var2
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."DEPARTMENTS" QVIEW3
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW1."DEPID" = QVIEW3."DEPARTMENTID") AND
(QVIEW3."UNIVERSITYID" = '0')
 ) 
 
 ) SUBQALIAS