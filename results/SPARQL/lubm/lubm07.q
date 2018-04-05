#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query7
	SELECT DISTINCT ?x ?y WHERE {
	?x rdf:type ub:Student. 
	?y rdf:type ub:Course. 
	?x ub:takesCourse ?y. 
	<http://www.Department0.University0.edu/AssociateProfessor0> ub:teacherOf ?y. }
