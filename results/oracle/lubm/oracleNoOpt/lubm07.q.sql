SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 0) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((3 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR (((1 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (0 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TA" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR (((1 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TA" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/UndergraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Course' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 0) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 0) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 0) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((0 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR (((3 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((0 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR (((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((0 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR (((3 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((0 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR (((3 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 1) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((0 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR (((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 1) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 1) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((0 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR (((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."STUDENTS" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW1."STUDID" = QVIEW2."ID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((0 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR (((3 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((0 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR (((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((0 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR (((3 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(((0 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR (((3 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")) OR ((2 = QVIEW3."TEACHERTYPE") AND (1 = QVIEW3."CTYPE")))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 1) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((0 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR (((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 1) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."COURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."ID") AND
(QVIEW3."TEACHERTYPE" = 1) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(((0 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR (((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE"))))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."ID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateStudent' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."STUDID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/GraduateCourse' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."COURSEID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "y"
 FROM 
"LUBM"."TAKESCOURSES" QVIEW1,
"LUBM"."TAKESCOURSES" QVIEW2,
"LUBM"."TAKESCOURSES" QVIEW3,
"LUBM"."COURSES" QVIEW4,
"LUBM"."TAKESCOURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."COURSETYPE" = 1) AND
QVIEW1."COURSEID" IS NOT NULL AND
QVIEW1."STUDID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."STUDID" = QVIEW2."STUDID") AND
(QVIEW2."COURSETYPE" = 1) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW3."COURSEID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."CTYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW4."ID") AND
(QVIEW4."TEACHERID" = '0') AND
(QVIEW4."TEACHERTYPE" = 2) AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."COURSETYPE" = 1) AND
(QVIEW1."COURSEID" = QVIEW5."COURSEID")