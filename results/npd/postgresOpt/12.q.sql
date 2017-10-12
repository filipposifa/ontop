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
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbDrillingOperator" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbDrillingOperator" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview1."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50))
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   7 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(var0 AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(var1 AS VARCHAR(10485760)) AS "year", 
   3 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(var2 * 0.3048 AS VARCHAR(10485760)) AS "lenghtM", 
   7 AS "companyQuestType", NULL AS "companyLang", CAST(var3 AS VARCHAR(10485760)) AS "company"
FROM (
 (
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."company" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview3."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview3."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview4."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview4."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview4."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."company" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbDrillingOperator" = qview2."cmpLongName") AND
qview2."cmpNpdidCompany" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview3."wlbTotalCoreLength" * 0.3048) > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_core" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview5."wlbCoreNumber" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbDrillingOperator" = qview3."cmpLongName") AND
qview3."cmpNpdidCompany" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview5."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview6."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND ((qview5."wlbTotalCoreLength" * 0.3048) > 50))
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

