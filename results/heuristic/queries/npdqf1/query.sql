

/*dscDiscoveryYear from 1968 to 6667
1% 2015
5% 2203
10% 2438
30% 3378
60% 4788
*/
SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."dscNpdidDiscovery" as var1, 
   qview2."dscDiscoveryYear" as var2
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."discovery" qview2,
"public"."wellbore_development_all" qview3
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."dscNpdidDiscovery" IS NOT NULL AND
(qview1."dscNpdidDiscovery" = qview2."dscNpdidDiscovery") AND
qview2."dscDiscoveryYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellboreReclass")
AND  qview2."dscDiscoveryYear"<?
