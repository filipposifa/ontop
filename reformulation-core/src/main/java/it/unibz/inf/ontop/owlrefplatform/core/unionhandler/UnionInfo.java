package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;


import java.util.HashMap;
import java.util.Map;
import it.unibz.inf.ontop.model.Predicate;

public class UnionInfo {
	
	
	private Map<Predicate, PredEntry> predicates;
	
	
	
	public UnionInfo() {
		super();
		predicates=new HashMap<Predicate, PredEntry>();
	}


	
	
	

}
