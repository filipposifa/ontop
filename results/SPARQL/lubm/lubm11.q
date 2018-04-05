#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>


#Query11
	SELECT DISTINCT ?x WHERE {
	?x rdf:type ub:ResearchGroup. 
	?x ub:subOrganizationOf <http://www.University0.edu>.}
