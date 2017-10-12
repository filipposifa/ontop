#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query9
	SELECT DISTINCT ?x ?y ?z WHERE { 
	?x rdf:type ub:Student. 
	?y rdf:type ub:Faculty. 
	?z rdf:type ub:Course. 
	?x ub:advisor ?y. 
	?y ub:teacherOf ?z. 
	?x ub:takesCourse ?z. }


