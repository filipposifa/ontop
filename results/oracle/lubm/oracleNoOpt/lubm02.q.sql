SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."DOCD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."DOCD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."DOCD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."UNDERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."STUDENTS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."DOCD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW9."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW9."DEGREEUNIID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."DOCD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."MASTERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."UNDERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."DOCD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."UNDERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."UNDERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."STUDENTS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."UNDERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW9."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW9."DEGREEUNIID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."UNDERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."MASTERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW3."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW3."DEGREEUNIID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."DOCD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW3."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW3."DEGREEUNIID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."UNDERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."STUDENTS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW3."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW3."DEGREEUNIID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW9."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW9."DEGREEUNIID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."STUDENTS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW3."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW3."DEGREEUNIID") AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."MASTERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."MASTERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."DOCD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."MASTERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."UNDERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."STUDENTS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."MASTERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW9."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW9."DEGREEUNIID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "y", 
   1 AS "zQuestType", NULL AS "zLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."DEPID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."UNIID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu') AS "z"
 FROM 
"LUBM"."STUDENTS" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."STUDENTS" QVIEW4,
"LUBM"."DEPARTMENTS" QVIEW5,
"LUBM"."STUDENTS" QVIEW6,
"LUBM"."DEPARTMENTS" QVIEW7,
"LUBM"."DEPARTMENTS" QVIEW8,
"LUBM"."TEACHERS" QVIEW9
WHERE 
(QVIEW1."STYPE" = 1) AND
(QVIEW1."UNIID" = QVIEW1."DEGREEUNIID") AND
QVIEW1."UNIID" IS NOT NULL AND
QVIEW1."DEPID" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW1."DEPID" = QVIEW2."DEPID") AND
(QVIEW1."UNIID" = QVIEW2."UNIID") AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
(QVIEW1."UNIID" = QVIEW3."MASTERD") AND
((0 = QVIEW3."TTYPE") OR ((3 = QVIEW3."TTYPE") OR ((1 = QVIEW3."TTYPE") OR (2 = QVIEW3."TTYPE")))) AND
(QVIEW1."DEPID" = QVIEW4."DEPID") AND
(QVIEW1."UNIID" = QVIEW4."UNIID") AND
(QVIEW4."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
(QVIEW1."DEPID" = QVIEW5."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW5."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW6."DEPID") AND
(QVIEW1."UNIID" = QVIEW6."UNIID") AND
(QVIEW6."STYPE" = 1) AND
(QVIEW1."ID" = QVIEW6."ID") AND
(QVIEW1."DEPID" = QVIEW7."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW7."UNIVERSITYID") AND
(QVIEW1."DEPID" = QVIEW8."DEPARTMENTID") AND
(QVIEW1."UNIID" = QVIEW8."UNIVERSITYID") AND
(QVIEW1."UNIID" = QVIEW9."MASTERD") AND
((0 = QVIEW9."TTYPE") OR ((3 = QVIEW9."TTYPE") OR ((1 = QVIEW9."TTYPE") OR (2 = QVIEW9."TTYPE"))))