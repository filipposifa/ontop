#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query10
	SELECT DISTINCT ?x WHERE {
	?x rdf:type ub:Student. 
	?x ub:takesCourse <http://www.Department0.University0.edu/GraduateCourse0>.}
