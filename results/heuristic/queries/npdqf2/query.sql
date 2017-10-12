

SELECT 
   qview1."lsuNpdidLithoStrat" as var0
 FROM 
"public"."wellbore_formation_top" qview1,
"public"."wellbore_exploration_all"  qview2,
viewtable5594 qview3
WHERE 
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
(qview1."lsuName" = qview2."wlbFormationAtTd") AND
(qview1."lsuNpdidLithoStrat" = qview3."lsuNpdidLithoStratParent") AND
(qview2."wlbAgeWithHc3" = 'OLIGOCENE' or (qview2."wlbAgeWithHc2" = 'OLIGOCENE' or (qview2."wlbAgeWithHc1" = 'OLIGOCENE' or qview2."wlbAgeAtTd" = 'OLIGOCENE'))) AND
qview1."lsuNpdidLithoStrat"<?
/*lsuNpdidLithoStrat from 2 to 2898
1% 29
5% 145
10% 290
30% 870
60% 1740
*/
