drop table if exists viewtable37;

CREATE TEMPORARY TABLE viewtable37 AS select distinct alias3."wlbNpdidWellboreReclass" as "wlbNpdidWellboreReclass" from 
"wellbore_development_all" alias3;



analyze  viewtable37;

/*dscDiscoveryYear from 1968 to 6667
1% 2015
5% 2203
10% 2438
30% 3378
60% 4788
100 6668
*/
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview2."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
viewtable37 qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
AND  qview2."dscDiscoveryYear"<?
