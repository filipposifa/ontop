SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssociateProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", CAST(var1 AS VARCHAR(10485760)) AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", CAST(var2 AS VARCHAR(10485760)) AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", CAST(var3 AS VARCHAR(10485760)) AS "y3"
FROM (
 (
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((2 = qview4."advisortype") AND (1 = qview4."stype")) OR ((2 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((2 = qview4."advisortype") AND (1 = qview4."stype")) OR ((2 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((2 = qview4."advisortype") AND (1 = qview4."stype")) OR ((2 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((2 = qview4."advisortype") AND (1 = qview4."stype")) OR ((2 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((2 = qview5."advisortype") AND (1 = qview5."stype")) OR ((2 = qview5."advisortype") AND (0 = qview5."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 2) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((2 = qview2."advisortype") AND (1 = qview2."stype")) OR ((2 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((2 = qview3."advisortype") AND (1 = qview3."stype")) OR ((2 = qview3."advisortype") AND (0 = qview3."stype")))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/FullProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", CAST(var1 AS VARCHAR(10485760)) AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", CAST(var2 AS VARCHAR(10485760)) AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", CAST(var3 AS VARCHAR(10485760)) AS "y3"
FROM (
 (
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."heads" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."profid") AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4,
"public"."heads" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."profid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3,
"public"."students" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3,
"public"."students" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."heads" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."profid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."heads" qview4,
"public"."students" qview5,
"public"."students" qview6
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."profid") AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview6."depid" = '0') AND
(qview6."uniid" = '0') AND
(qview1."id" = qview6."advisorid") AND
(((3 = qview6."advisortype") AND (1 = qview6."stype")) OR ((3 = qview6."advisortype") AND (0 = qview6."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."heads" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."profid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."heads" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."profid") AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."heads" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."profid") AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."students" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3,
"public"."heads" qview4
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."advisorid") AND
(((3 = qview2."advisortype") AND (1 = qview2."stype")) OR ((3 = qview2."advisortype") AND (0 = qview2."stype"))) AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."profid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."heads" qview2,
"public"."students" qview3,
"public"."students" qview4,
"public"."students" qview5
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 3) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview1."id" = qview2."profid") AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview1."id" = qview3."advisorid") AND
(((3 = qview3."advisortype") AND (1 = qview3."stype")) OR ((3 = qview3."advisortype") AND (0 = qview3."stype"))) AND
(qview4."depid" = '0') AND
(qview4."uniid" = '0') AND
(qview1."id" = qview4."advisorid") AND
(((3 = qview4."advisortype") AND (1 = qview4."stype")) OR ((3 = qview4."advisortype") AND (0 = qview4."stype"))) AND
qview1."phone" IS NOT NULL AND
(qview5."depid" = '0') AND
(qview5."uniid" = '0') AND
(qview1."id" = qview5."advisorid") AND
(((3 = qview5."advisortype") AND (1 = qview5."stype")) OR ((3 = qview5."advisortype") AND (0 = qview5."stype")))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "xQuestType", NULL AS "xLang", ('http://www.Department' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.University' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST('0' AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '.edu/AssistantProfessor' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "x", 
   4 AS "y1QuestType", NULL AS "y1Lang", CAST(var1 AS VARCHAR(10485760)) AS "y1", 
   4 AS "y2QuestType", NULL AS "y2Lang", CAST(var2 AS VARCHAR(10485760)) AS "y2", 
   3 AS "y3QuestType", NULL AS "y3Lang", CAST(var3 AS VARCHAR(10485760)) AS "y3"
FROM (
 (
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 1) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 0) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 0) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 0) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 1) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 1) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."phone" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 1) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid"))
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."email" IS NOT NULL AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
qview1."email" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 0) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."phone" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."id" as var0, 
   qview1."name" as var1, 
   qview1."email" as var2, 
   qview1."phone" as var3
 FROM 
"public"."teachers" qview1,
"public"."students" qview2,
"public"."students" qview3
WHERE 
(qview1."depid" = '0') AND
(qview1."uniid" = '0') AND
(qview1."ttype" = 1) AND
qview1."name" IS NOT NULL AND
qview1."id" IS NOT NULL AND
(qview2."depid" = '0') AND
(qview2."uniid" = '0') AND
(qview2."stype" = 1) AND
(qview2."advisortype" = 1) AND
(qview1."id" = qview2."advisorid") AND
qview1."email" IS NOT NULL AND
(qview3."depid" = '0') AND
(qview3."uniid" = '0') AND
(qview3."stype" = 0) AND
(qview3."advisortype" = 1) AND
(qview1."id" = qview3."advisorid") AND
qview1."phone" IS NOT NULL
 ) 
 
 ) SUBQALIAS