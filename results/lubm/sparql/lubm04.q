#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query4
	SELECT DISTINCT ?x ?y1 ?y2 ?y3 WHERE { 
	?x rdf:type ub:Professor. 
	?x ub:worksFor <http://www.Department0.University0.edu>. 
	?x ub:name ?y1. 
	?x ub:emailAddress ?y2. 
	?x ub:telephone ?y3. }
	
