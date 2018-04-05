CREATE TEMPORARY TABLE viewtable838 AS select distinct alias3."cmpLongName" as "cmpLongName" from 
"public"."company" alias3 
where 
alias3."cmpNpdidCompany" IS NOT NULL and 
alias3."cmpLongName" IS NOT NULL

SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
viewtable838 qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_npdid_overview" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_npdid_overview" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_shallow_all" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_npdid_overview" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_shallow_all" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_npdid_overview" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_npdid_overview" qview5,
viewtable838 qview6
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
viewtable838 qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_npdid_overview" qview4,
viewtable838 qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview2."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
viewtable838 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_npdid_overview" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_npdid_overview" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_npdid_overview" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_npdid_overview" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_npdid_overview" qview4,
viewtable838 qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
viewtable838 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview1."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview2."wlbDrillingOperator" AS "company"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_npdid_overview" qview3,
viewtable838 qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)) AND
(qview2."wlbDrillingOperator" = qview4."cmpLongName")
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

