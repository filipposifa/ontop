#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>


#Query12
	SELECT DISTINCT ?x ?y WHERE {
	?x rdf:type ub:Chair. 
	?y rdf:type ub:Department. 
	?x ub:worksFor ?y. 
	?y ub:subOrganizationOf <http://www.University0.edu>. }
