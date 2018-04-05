#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query8
	SELECT DISTINCT ?x ?y ?z WHERE { 
	?x rdf:type ub:Student. 
	?y rdf:type ub:Department. 
	?x ub:memberOf ?y. 
	?y ub:subOrganizationOf <http://www.University0.edu>.
	?x ub:emailAddress ?z. }
