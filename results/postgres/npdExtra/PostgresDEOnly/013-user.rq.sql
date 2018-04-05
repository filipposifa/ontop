CREATE TEMPORARY TABLE viewtable933 AS select distinct alias3."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias3 
where 
alias3."wlbNpdidWellbore" IS NOT NULL

CREATE TEMPORARY TABLE viewtable934 AS select distinct alias5."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias5 
where 
alias5."wlbNpdidWellbore" IS NOT NULL

CREATE TEMPORARY TABLE viewtable935 AS select distinct alias8."cmpLongName" as "cmpLongName" from 
"public"."company" alias8 
where 
alias8."cmpNpdidCompany" IS NOT NULL and 
alias8."cmpLongName" IS NOT NULL

CREATE TEMPORARY TABLE viewtable936 AS select distinct alias0."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias0 
where 
alias0."wlbNpdidWellbore" IS NOT NULL

CREATE TEMPORARY TABLE viewtable937 AS select distinct alias4."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias4 
where 
alias4."wlbNpdidWellbore" IS NOT NULL

CREATE TEMPORARY TABLE viewtable938 AS select distinct alias7."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias7 
where 
alias7."wlbNpdidWellbore" IS NOT NULL

CREATE TEMPORARY TABLE viewtable939 AS select distinct alias6."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias6 
where 
alias6."wlbNpdidWellbore" IS NOT NULL

CREATE TEMPORARY TABLE viewtable940 AS select distinct alias9."wlbNpdidWellbore" as "wlbNpdidWellbore" from 
"public"."wellbore_core" alias9 
where 
alias9."wlbNpdidWellbore" IS NOT NULL

SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable934 qview8,
viewtable935 qview9,
viewtable939 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable937 qview9,
viewtable939 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable935 qview9,
viewtable938 qview10,
viewtable939 qview11
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview3."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable934 qview8,
viewtable935 qview9,
viewtable938 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview1."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable937 qview9,
viewtable939 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview2."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable933 qview7,
viewtable934 qview8,
viewtable935 qview9
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview6."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview1."wlbDrillingOperator" = qview9."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable935 qview7,
viewtable937 qview8,
viewtable939 qview9
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview6."wlbTotalCoreLength" > 50) AND
(qview1."wlbDrillingOperator" = qview7."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable933 qview8,
viewtable935 qview9,
viewtable939 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable933 qview8,
viewtable935 qview9,
viewtable940 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview1."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable933 qview9,
viewtable935 qview10,
viewtable939 qview11
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview10."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable936 qview9,
viewtable939 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable937 qview9,
viewtable940 qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview2."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable934 qview8,
viewtable935 qview9,
viewtable937 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable935 qview9,
viewtable937 qview10,
viewtable939 qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview3."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable933 qview8,
viewtable935 qview9,
viewtable939 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable936 qview9,
viewtable939 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview2."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable935 qview9,
viewtable937 qview10,
viewtable940 qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview3."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable937 qview9,
viewtable940 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview2."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable933 qview8,
viewtable935 qview9,
viewtable940 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable935 qview9,
viewtable936 qview10,
viewtable939 qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview3."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable934 qview9,
viewtable935 qview10,
viewtable937 qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview10."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable934 qview9,
viewtable935 qview10,
viewtable936 qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview10."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
viewtable935 qview9,
viewtable938 qview10,
viewtable940 qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview8."wlbTotalCoreLength" > 50) AND
(qview3."wlbDrillingOperator" = qview9."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
viewtable935 qview8,
viewtable938 qview9,
viewtable940 qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview7."wlbTotalCoreLength" > 50) AND
(qview2."wlbDrillingOperator" = qview8."cmpLongName") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

