SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."HEADS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."HEADS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."HEADS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5,
"PUBLIC"."STUDENTS" QVIEW6
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW6."DEPID" = '0') AND
(QVIEW6."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW6."ADVISORID") AND
(((3 = QVIEW6."ADVISORTYPE") AND (1 = QVIEW6."STYPE")) OR ((3 = QVIEW6."ADVISORTYPE") AND (0 = QVIEW6."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."HEADS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."HEADS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."PROFID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 3) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((3 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((3 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((3 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((3 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((3 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((3 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((3 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((3 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 1) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 1) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 1) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 1) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 1) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW2."STYPE" = 0) AND
(QVIEW2."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW3."STYPE" = 0) AND
(QVIEW3."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW4."STYPE" = 0) AND
(QVIEW4."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW5."STYPE" = 0) AND
(QVIEW5."ADVISORTYPE" = 1) AND
(QVIEW1."ID" = QVIEW5."ADVISORID")
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((2 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((2 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((2 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((2 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((2 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((2 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE")))
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((2 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((2 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL
UNION
SELECT 
   1 AS "xQuestType", NULL AS "xLang", CAST(('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."ID" AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", QVIEW1."NAME" AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", QVIEW1."EMAIL" AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", QVIEW1."PHONE" AS "y3"
 FROM 
"PUBLIC"."TEACHERS" QVIEW1,
"PUBLIC"."STUDENTS" QVIEW2,
"PUBLIC"."STUDENTS" QVIEW3,
"PUBLIC"."STUDENTS" QVIEW4,
"PUBLIC"."STUDENTS" QVIEW5
WHERE 
(QVIEW1."DEPID" = '0') AND
(QVIEW1."UNIID" = '0') AND
(QVIEW1."TTYPE" = 2) AND
QVIEW1."NAME" IS NOT NULL AND
QVIEW1."ID" IS NOT NULL AND
(QVIEW2."DEPID" = '0') AND
(QVIEW2."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW2."ADVISORID") AND
(((2 = QVIEW2."ADVISORTYPE") AND (1 = QVIEW2."STYPE")) OR ((2 = QVIEW2."ADVISORTYPE") AND (0 = QVIEW2."STYPE"))) AND
QVIEW1."EMAIL" IS NOT NULL AND
(QVIEW3."DEPID" = '0') AND
(QVIEW3."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW3."ADVISORID") AND
(((2 = QVIEW3."ADVISORTYPE") AND (1 = QVIEW3."STYPE")) OR ((2 = QVIEW3."ADVISORTYPE") AND (0 = QVIEW3."STYPE"))) AND
(QVIEW4."DEPID" = '0') AND
(QVIEW4."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW4."ADVISORID") AND
(((2 = QVIEW4."ADVISORTYPE") AND (1 = QVIEW4."STYPE")) OR ((2 = QVIEW4."ADVISORTYPE") AND (0 = QVIEW4."STYPE"))) AND
QVIEW1."PHONE" IS NOT NULL AND
(QVIEW5."DEPID" = '0') AND
(QVIEW5."UNIID" = '0') AND
(QVIEW1."ID" = QVIEW5."ADVISORID") AND
(((2 = QVIEW5."ADVISORTYPE") AND (1 = QVIEW5."STYPE")) OR ((2 = QVIEW5."ADVISORTYPE") AND (0 = QVIEW5."STYPE")))