
SELECT 
   qview1."wlbNamePart1" as var0, 
   qview1."wlbNamePart1" as var1
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbNamePart1" IS NOT NULL AND
(qview1."wlbNamePart1" = qview2."wlbNamePart1") AND
qview1."wlbNamePart1"<?

/*wlbNamePart1 
1% 5
5% 25
10% 50
30% 150
60% 300
*/
