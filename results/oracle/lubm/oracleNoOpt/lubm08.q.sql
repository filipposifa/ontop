SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 1) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID") AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 1) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."STUDID") AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
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
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID") AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
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
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."STUDID") AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 0) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."ID") AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
WHERE 
(QVIEW1."UNIID" = '0') AND
(QVIEW1."STYPE" = 0) AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPARTMENTID") AND
(QVIEW2."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW3."DEPID") AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."STUDID") AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
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
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."ID") AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   5 AS "zQuestType", NULL AS "zLang", QVIEW4."EMAIL" AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."DEPARTMENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5,
"LUBM"."DEPARTMENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7
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
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."EMAIL" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW5."DEPID") AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."STUDID") AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."DEPID" = QVIEW6."DEPARTMENTID") AND
(QVIEW6."UNIVERSITYID" = '0') AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW7."UNIVERSITYID" = '0')