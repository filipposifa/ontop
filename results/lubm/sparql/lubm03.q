#LUBM 14 queries
PREFIX ub:<http://swat.cse.lehigh.edu/onto/univ-bench.owl#>

#Query3
	SELECT DISTINCT ?x WHERE {
	?x rdf:type ub:Publication.
	?x ub:publicationAuthor <http://www.Department0.University0.edu/AssistantProfessor0>. }
