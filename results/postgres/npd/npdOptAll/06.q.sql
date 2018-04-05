SELECT *
FROM (
SELECT

   7 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(var0 AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(var1 AS VARCHAR(10485760)) AS "year", 
   5 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(var2 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", CAST(var3 AS VARCHAR(10485760)) AS "company"
FROM (
 (
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_shallow_all" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_shallow_all" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_shallow_all" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_shallow_all" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview5."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_npdid_overview" qview5
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview1."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview1."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview1."lsuCoreLenght" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuCoreLenght" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview1."lsuCoreLenght" > 50))
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

