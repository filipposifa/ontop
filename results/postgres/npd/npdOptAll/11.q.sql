CREATE TEMPORARY TABLE viewtable3020 AS select distinct alias2."cmpLongName" as "cmpLongName" from 
"public"."company" alias2 
where 
alias2."cmpNpdidCompany" IS NOT NULL and 
alias2."cmpLongName" IS NOT NULL

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
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview2."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
viewtable3020 qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview2."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview4."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview3."wlbCompletionYear" as var1, 
   qview2."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview2."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview3."wlbCompletionYear" as var1, 
   qview2."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview2."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview2."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
viewtable3020 qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview2."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview4."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview3."wlbCompletionYear" as var1, 
   qview2."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview2."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview3."wlbCompletionYear" as var1, 
   qview2."wlbTotalCoreLength" as var2, 
   qview1."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview1."wlbDrillingOperator" IS NOT NULL AND
((qview3."wlbCompletionYear" >= 2008) AND (qview2."wlbTotalCoreLength" > 50)) AND
(qview1."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview1."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview1."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview4."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_core" qview5,
viewtable3020 qview6
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview5."wlbCoreNumber") AND
(qview5."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
((qview4."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview6."cmpLongName"))
 
UNION
(
SELECT 
   qview1."wlbWellboreName" as var0, 
   qview2."wlbCompletionYear" as var1, 
   qview3."wlbTotalCoreLength" as var2, 
   qview2."wlbDrillingOperator" as var3
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_core" qview4,
viewtable3020 qview5
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview3."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
(qview3."wlbCoreNumber" = qview4."wlbCoreNumber") AND
(qview4."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview2."wlbDrillingOperator" IS NOT NULL AND
((qview2."wlbCompletionYear" >= 2008) AND (qview3."wlbTotalCoreLength" > 50)) AND
(qview2."wlbDrillingOperator" = qview5."cmpLongName")
 ) 
 
 ) SUBQALIAS
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"

