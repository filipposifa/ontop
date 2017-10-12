SELECT

   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   5 AS "lengthQuestType", NULL AS "lengthLang", CAST(var1 AS VARCHAR(10485760)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."wlbDrillingDays" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbPurpose" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview4."prlName" = qview5."wlbProductionLicence") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."licence" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbProductionLicence" = qview5."prlName") AND
qview5."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview4."prlName" = qview5."wlbProductionLicence") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."wlbPurpose" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview4."wlbReentry" = 'NO') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbProductionLicence" = qview4."prlName") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview4."wlbReentry" = 'NO') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbDrillingDays" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview4."wlbReentry" = 'YES') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbDrillingDays" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
(qview1."wlbReentry" = 'YES') AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."licence" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbProductionLicence" = qview5."prlName") AND
qview5."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview4."wlbReentry" = 'YES') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
(qview1."wlbReentry" = 'NO') AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbPurpose" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview2."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbTotalCoreLength" IS NOT NULL AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview3."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview2."wlbTotalCoreLength" < 22337) AND
(qview1."wlbProductionLicence" = qview4."prlName") AND
qview4."prlNpdidLicence" IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wellbore", 
   3 AS "lengthQuestType", NULL AS "lengthLang", CAST(var1 * 0.3048 AS VARCHAR(10485760)) AS "length", 
   1 AS "wellQuestType", NULL AS "wellLang", ('http://sws.ifi.uio.no/data/npd-v2/well/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "well", 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS VARCHAR(10485760)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS "wc"
FROM (
 (
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview4."wlbReentry" = 'NO') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbDrillingDays" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."wlbPurpose" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview4."wlbReentry" = 'YES') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbDrillingDays" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbProductionLicence" = qview4."prlName") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
(qview1."wlbReentry" = 'NO') AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."wlbDrillingDays" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview4."wlbReentry" = 'NO') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview4."prlName" = qview5."wlbProductionLicence") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbPurpose" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
(qview1."wlbReentry" = 'YES') AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4,
"public"."wellbore_exploration_all" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview4."prlName" = qview5."wlbProductionLicence") AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
qview1."fldNpdidField" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."dscNpdidDiscovery" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."prlNpdidProductionLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbPurpose" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."licence" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbProductionLicence" = qview5."prlName") AND
qview5."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_exploration_all" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview4."wlbReentry" = 'YES') AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore"))
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."licence" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbProductionLicence" = qview4."prlName") AND
qview4."prlNpdidLicence" IS NOT NULL)
 
UNION
(
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview3."wlbTotalCoreLength" as var1, 
   qview1."wlbWell" as var2, 
   qview1."wlbNpdidWellbore" as var3, 
   qview2."wlbCoreNumber" as var4
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_core" qview2,
"public"."wellbore_core" qview3,
"public"."wellbore_development_all" qview4,
"public"."licence" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWell" IS NOT NULL AND
qview2."wlbCoreNumber" IS NOT NULL AND
(qview2."wlbCoreIntervalUom" = '[ft  ]') AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
(qview2."wlbCoreNumber" = qview3."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbTotalCoreLength" IS NOT NULL AND
((qview3."wlbTotalCoreLength" * 0.3048) < 22337) AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbProductionLicence" = qview5."prlName") AND
qview5."prlNpdidLicence" IS NOT NULL
 ) 
 
 ) SUBQALIAS