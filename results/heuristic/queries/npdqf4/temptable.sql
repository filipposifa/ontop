CREATE TEMPORARY TABLE viewtable5088 AS select distinct alias0."lsuNpdidLithoStratParent" as "lsuNpdidLithoStratParent" from 
"wellbore_formation_top" alias0;

analyze  viewtable5088;


SELECT 
   qview1."wlbNpdidWellbore" as var0, 
   qview1."lsuNpdidLithoStrat" as var1, 
   qview1."lsuTopDepth" as var2, 
   qview1."lsuBottomDepth" as var3, 
   qview1."lsuNpdidLithoStrat" as var4
 FROM 
"public"."strat_litho_wellbore" qview1,
viewtable5088 qview2
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."lsuTopDepth" IS NOT NULL AND
qview1."lsuBottomDepth" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview2."lsuNpdidLithoStratParent") AND
qview1."lsuNpdidLithoStrat"<?

/*lsuNpdidLithoStrat from 2 to 2898
1% 29
5% 145
10% 290
30% 870
60% 1740
*/
