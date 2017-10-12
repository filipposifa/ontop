#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query13
	SELECT DISTINCT ?x WHERE { 
	?x rdf:type ub:Person. 
	<http://www.University0.edu> ub:hasAlumnus ?x.}
