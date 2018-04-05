#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

	#Query2
	SELECT DISTINCT ?x ?y ?z WHERE { 
	?x rdf:type ub:GraduateStudent. 
	?y rdf:type ub:University. 
	?z rdf:type ub:Department. 
	?x ub:memberOf ?z. 
	?z ub:subOrganizationOf ?y.
	?x ub:undergraduateDegreeFrom ?y. }
