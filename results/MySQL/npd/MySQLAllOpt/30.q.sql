SELECT

   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`, 
   5 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(var1 AS CHAR(8000) CHARACTER SET utf8) AS `length`, 
   1 AS `wellQuestType`, NULL AS `wellLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/well/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `well`, 
   1 AS `wcQuestType`, NULL AS `wcLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/core/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wc`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`discovery` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`dscNpdidDiscovery` = QVIEW5.`dscNpdidDiscovery`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW4.`wlbReentry` = 'YES') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`discovery` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`dscNpdidDiscovery` = QVIEW5.`dscNpdidDiscovery`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
(QVIEW1.`wlbReentry` = 'YES') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbPurpose` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW4.`wlbReentry` = 'YES') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbDrillingDays` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`discovery` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW4.`dscNpdidDiscovery`) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbProductionLicence` = QVIEW4.`prlName`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbPurpose` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbDrillingDays` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4,
`wellbore_exploration_all` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW4.`prlName` = QVIEW5.`wlbProductionLicence`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW4.`wlbReentry` = 'NO') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4,
`wellbore_exploration_all` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW4.`prlName` = QVIEW5.`wlbProductionLicence`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`licence` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbProductionLicence` = QVIEW5.`prlName`) AND
QVIEW5.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`wlbPurpose` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW4.`wlbReentry` = 'NO') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`wlbDrillingDays` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`licence` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbProductionLicence` = QVIEW5.`prlName`) AND
QVIEW5.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbProductionLicence` = QVIEW4.`prlName`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
(QVIEW1.`wlbReentry` = 'NO') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
QVIEW1.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW2.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
QVIEW2.`wlbTotalCoreLength` IS NOT NULL AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW3.`wlbCoreIntervalUom` = '[m   ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbTotalCoreLength` < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL
 ) 
) SUBQALIAS 
 UNION ALL
SELECT

   1 AS `wellboreQuestType`, NULL AS `wellboreLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var0 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wellbore`, 
   3 AS `lengthQuestType`, NULL AS `lengthLang`, CAST(var1 * 0.3048 AS CHAR(8000) CHARACTER SET utf8) AS `length`, 
   1 AS `wellQuestType`, NULL AS `wellLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/well/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var2 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `well`, 
   1 AS `wcQuestType`, NULL AS `wcLang`, CONCAT('http://sws.ifi.uio.no/data/npd-v2/wellbore/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var3 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D'), '/core/', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(var4 AS CHAR(8000) CHARACTER SET utf8), ' ', '%20'), '!', '%21'), '''', '%22'), '#', '%23'), '$', '%24'), '&', '%26'), '(', '%28'), ')', '%29'), '*', '%2A'), '+', '%2B'), ',', '%2C'), '/', '%2F'), ':', '%3A'), ';', '%3B'), '=', '%3D'), '?', '%3F'), '@', '%40'), '[', '%5B'), ']', '%5D')) AS `wc`
FROM (
 (
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
(QVIEW1.`wlbReentry` = 'NO') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbPurpose` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`discovery` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`dscNpdidDiscovery` = QVIEW4.`dscNpdidDiscovery`) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW4.`wlbReentry` = 'NO') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW4.`wlbReentry` = 'NO') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`wlbPurpose` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW4.`wlbReentry` = 'YES') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW4.`wlbReentry` = 'YES') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`discovery` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`dscNpdidDiscovery` = QVIEW5.`dscNpdidDiscovery`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`licence` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbProductionLicence` = QVIEW5.`prlName`) AND
QVIEW5.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
(QVIEW1.`wlbReentry` = 'YES') AND
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbProductionLicence` = QVIEW4.`prlName`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbDrillingDays` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`))
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidProductionLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4,
`wellbore_exploration_all` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW4.`prlName` = QVIEW5.`wlbProductionLicence`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4,
`wellbore_exploration_all` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW4.`prlName` = QVIEW5.`wlbProductionLicence`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW5.`wlbNpdidWellbore`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbPurpose` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_npdid_overview` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4,
`discovery` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`dscNpdidDiscovery` = QVIEW5.`dscNpdidDiscovery`) AND
QVIEW4.`dscNpdidDiscovery` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`wlbDrillingDays` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_development_all` QVIEW4,
`licence` QVIEW5
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
(QVIEW4.`wlbProductionLicence` = QVIEW5.`prlName`) AND
QVIEW5.`prlNpdidLicence` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`wellbore_exploration_all` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW4.`wlbNpdidWellbore`) AND
QVIEW4.`wlbDrillingDays` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_exploration_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
QVIEW1.`fldNpdidField` IS NOT NULL)
 
UNION
(
SELECT 
   QVIEW1.`wlbNpdidWellbore` as var0, 
   QVIEW3.`wlbTotalCoreLength` as var1, 
   QVIEW1.`wlbWell` as var2, 
   QVIEW1.`wlbNpdidWellbore` as var3, 
   QVIEW2.`wlbCoreNumber` as var4
 FROM 
`wellbore_development_all` QVIEW1,
`wellbore_core` QVIEW2,
`wellbore_core` QVIEW3,
`licence` QVIEW4
WHERE 
QVIEW1.`wlbNpdidWellbore` IS NOT NULL AND
QVIEW1.`wlbWell` IS NOT NULL AND
QVIEW2.`wlbCoreNumber` IS NOT NULL AND
(QVIEW2.`wlbCoreIntervalUom` = '[ft  ]') AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW2.`wlbNpdidWellbore`) AND
(QVIEW2.`wlbCoreNumber` = QVIEW3.`wlbCoreNumber`) AND
(QVIEW1.`wlbNpdidWellbore` = QVIEW3.`wlbNpdidWellbore`) AND
QVIEW3.`wlbTotalCoreLength` IS NOT NULL AND
((QVIEW3.`wlbTotalCoreLength` * 0.3048) < 22337) AND
(QVIEW1.`wlbProductionLicence` = QVIEW4.`prlName`) AND
QVIEW4.`prlNpdidLicence` IS NOT NULL
 ) 
 
 ) SUBQALIAS