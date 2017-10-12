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
   qview2."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbCompletionYear" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_exploration_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview5."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_exploration_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview5."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview5."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_shallow_all" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_shallow_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbCompletionYear" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_development_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_shallow_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbCompletionYear" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_shallow_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
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
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview5."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
"public"."wellbore_development_all" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbCompletionYear" IS NOT NULL AND
((qview5."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_development_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview2."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview4."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
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
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview4."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview4."wlbCompletionYear" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50)))
 
UNION
(
SELECT 
   qview4."wlbWellboreName" as var0, 
   qview6."wlbCompletionYear" as var1, 
   qview5."wlbTotalCoreLength" as var2, 
   qview1."cmpLongName" as var3
 FROM 
"public"."company" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_npdid_overview" qview4,
"public"."wellbore_core" qview5,
"public"."wellbore_shallow_all" qview6
WHERE 
qview1."cmpNpdidCompany" IS NOT NULL AND
qview1."cmpLongName" IS NOT NULL AND
(qview1."cmpLongName" = qview2."wlbDrillingOperator") AND
qview2."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview2."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbWellboreName" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview2."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview5."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbCompletionYear" IS NOT NULL AND
((qview6."wlbCompletionYear" >= 2008) AND (qview5."wlbTotalCoreLength" > 50))
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

