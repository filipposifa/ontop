#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query14
	SELECT DISTINCT ?x WHERE { 
	?x rdf:type ub:UndergraduateStudent. }
