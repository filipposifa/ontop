SELECT *
FROM (
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview3."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL AND
qview3."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."strat_litho_wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."lsuNpdidLithoStrat" IS NOT NULL AND
qview5."lsuCoreLenght" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview5."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview4."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCoreNumber" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview6."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview3."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."strat_litho_wellbore_core" qview3
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."lsuNpdidLithoStrat" IS NOT NULL AND
qview3."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview2."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview4."lsuCoreLenght" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."strat_litho_wellbore_core" qview4
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."lsuNpdidLithoStrat" IS NOT NULL AND
qview4."lsuCoreLenght" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."lsuCoreLenght" > 50))
UNION
SELECT 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(qview5."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", qview1."cmpLongName" AS "company"
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCoreNumber" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

