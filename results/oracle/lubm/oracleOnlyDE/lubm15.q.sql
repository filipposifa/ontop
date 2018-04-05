SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."PUBLICATIONS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."AUTHORTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."AUTHORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Lecturer' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/Lecturer' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 0) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 0) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 0)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."PUBLICATIONS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."AUTHORTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."AUTHORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#FullProfessor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Chair' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."HEADS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."PUBLICATIONS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."AUTHORTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."AUTHORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#FullProfessor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Chair' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 3) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((3 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((3 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."PUBLICATIONS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."AUTHORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."AUTHORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#AssistantProfessor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."CTYPE" = 0) AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(QVIEW5."TEACHERTYPE" = 1)
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((2 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((2 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."PUBLICATIONS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."AUTHORTYPE" = 2) AND
(QVIEW1."ID" = QVIEW5."AUTHORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Person' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#AssociateProfessor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((2 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((2 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Employee' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Professor' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((2 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((2 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."TEACHERS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW5."ID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((2 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((2 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(4000)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   1 AS "zQuestType", NULL AS "zLang", 'http://swat.cse.lehigh.edu/onto/univ-bench.owl#Faculty' AS "z", 
   5 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   5 AS "y2QuestType", NULL AS "y2Lang", QVIEW2."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW4."PHONE" AS "y3"
 FROM 
"LUBM"."TEACHERS" QVIEW1,
"LUBM"."TEACHERS" QVIEW2,
"LUBM"."TEACHERS" QVIEW3,
"LUBM"."TEACHERS" QVIEW4,
"LUBM"."COURSES" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW2."ID") AND
QVIEW2."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW3."ID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."TTYPE" = 2) AND
(QVIEW1."ID" = QVIEW4."ID") AND
QVIEW4."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."TEACHERID") AND
(((2 = QVIEW5."TEACHERTYPE") AND (1 = QVIEW5."CTYPE")) OR ((2 = QVIEW5."TEACHERTYPE") AND (0 = QVIEW5."CTYPE")))