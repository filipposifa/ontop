SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_shallow_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview5."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_development_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview6."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_shallow_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview6."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_development_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview5."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_development_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_npdid_overview" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_npdid_overview" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_shallow_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_npdid_overview" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_development_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview6."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_exploration_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview6."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_shallow_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview5."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_shallow_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_exploration_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview5."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_npdid_overview" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_exploration_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview7."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_npdid_overview" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_shallow_all" qview7
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbCompletionYear" IS NOT NULL AND
((qview7."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview5."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_npdid_overview" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

