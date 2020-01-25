CREATE TEMPORARY TABLE SESSION.viewtable7246 AS select distinct alias3."WLBNPDIDWELLBORE" as "WLBNPDIDWELLBORE" from 
"PUBLIC"."WELLBORE_CORE" alias3 
where 
alias3."WLBNPDIDWELLBORE" IS NOT NULL

CREATE TEMPORARY TABLE SESSION.viewtable7247 AS select distinct alias2."WLBNPDIDWELLBORERECLASS" as "WLBNPDIDWELLBORERECLASS" from 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" alias2 
where 
alias2."WLBNPDIDWELLBORERECLASS" IS NOT NULL

CREATE TEMPORARY TABLE SESSION.viewtable7248 AS select distinct alias0."WLBNPDIDWELLBORERECLASS" as "WLBNPDIDWELLBORERECLASS" from 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" alias0 
where 
alias0."WLBNPDIDWELLBORERECLASS" IS NOT NULL

CREATE TEMPORARY TABLE SESSION.viewtable7249 AS select distinct alias4."WLBNPDIDWELLBORERECLASS" as "WLBNPDIDWELLBORERECLASS" from 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" alias4 
where 
alias4."WLBNPDIDWELLBORERECLASS" IS NOT NULL

SELECT

   1 AS "qQuestType", NULL AS "qLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "q", 
   1 AS "discoveryQuestType", NULL AS "discoveryLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/discovery/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var1 AS VARCHAR(500)), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS VARCHAR(500)) AS "discovery", 
   4 AS "yQuestType", NULL AS "yLang", CAST(var2 AS VARCHAR(500)) AS "y"
FROM (
 (
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW3."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW2,
"PUBLIC"."DISCOVERY" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW3."DSCNPDIDDISCOVERY") AND
QVIEW3."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
SESSION.VIEWTABLE7248 QVIEW3
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORERECLASS"))
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW3
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW3
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
"PUBLIC"."WELLBORE_SHALLOW_ALL" QVIEW3
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW3."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_SHALLOW_ALL" QVIEW2,
"PUBLIC"."DISCOVERY" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW3."DSCNPDIDDISCOVERY") AND
QVIEW3."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
SESSION.VIEWTABLE7246 QVIEW3
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE"))
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
SESSION.VIEWTABLE7249 QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORERECLASS"))
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
SESSION.VIEWTABLE7247 QVIEW3
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORERECLASS"))
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
SESSION.VIEWTABLE7246 QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORE"))
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2,
SESSION.VIEWTABLE7247 QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW3."WLBNPDIDWELLBORERECLASS"))
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW3."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_EXPLORATION_ALL" QVIEW1,
"PUBLIC"."WELLBORE_NPDID_OVERVIEW" QVIEW2,
"PUBLIC"."DISCOVERY" QVIEW3
WHERE 
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
(QVIEW1."WLBNPDIDWELLBORE" = QVIEW2."WLBNPDIDWELLBORE") AND
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW3."DSCNPDIDDISCOVERY") AND
QVIEW3."DSCDISCOVERYYEAR" IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1."WLBNPDIDWELLBORE" as var0, 
   QVIEW1."DSCNPDIDDISCOVERY" as var1, 
   QVIEW2."DSCDISCOVERYYEAR" as var2
 FROM 
"PUBLIC"."WELLBORE_DEVELOPMENT_ALL" QVIEW1,
"PUBLIC"."DISCOVERY" QVIEW2
WHERE 
(QVIEW1."DSCNPDIDDISCOVERY" = QVIEW2."DSCNPDIDDISCOVERY") AND
QVIEW1."WLBNPDIDWELLBORE" IS NOT NULL AND
QVIEW1."DSCNPDIDDISCOVERY" IS NOT NULL AND
QVIEW2."DSCDISCOVERYYEAR" IS NOT NULL
 ) 
 
 ) SUBQALIAS