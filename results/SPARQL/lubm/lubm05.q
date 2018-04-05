#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

	
	#Query5
	SELECT DISTINCT ?x WHERE { 
	?x rdf:type ub:Person. 
	?x ub:memberOf <http://www.Department0.University0.edu>. }
	
