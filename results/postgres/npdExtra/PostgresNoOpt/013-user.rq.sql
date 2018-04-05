SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview8."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview3."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
(qview8."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview10."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10,
"public"."wellbore_core" qview11
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
(qview5."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
qview10."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview11."wlbNpdidWellbore") AND
(qview10."wlbTotalCoreLength" > 50)
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview9."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8,
"public"."wellbore_core" qview9,
"public"."wellbore_core" qview10
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview4."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") AND
(qview9."wlbTotalCoreLength" > 50)
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

