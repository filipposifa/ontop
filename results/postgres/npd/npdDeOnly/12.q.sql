CREATE TEMPORARY TABLE viewtable4700 AS select distinct alias0."cmpLongName" as "cmpLongName" from 
"public"."company" alias0 
where 
alias0."cmpNpdidCompany" IS NOT NULL and 
alias0."cmpLongName" IS NOT NULL

SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable4700 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable4700 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview5."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview6."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview5."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)) AND
(qview4."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview3."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable4700 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview3."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable4700 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview1."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview3."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview4."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview4."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6,
viewtable4700 qview7
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)) AND
(qview4."wlbDrillingOperator" = qview7."cmpLongName")
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview1."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview3."wlbDrillingOperator" AS "company"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
viewtable4700 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)) AND
(qview3."wlbDrillingOperator" = qview6."cmpLongName")
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

