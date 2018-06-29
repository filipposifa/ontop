package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import it.unibz.inf.ontop.model.CQIE;
import it.unibz.inf.ontop.model.Predicate;

public class UnionPair {
	
	private Map<CQIE, UnionSet> unions;
	Map<CQIE, UnionInfo> queryIndex;
	Predicate pred;

	public UnionPair(Predicate predicate) {
		super();
		pred=predicate;
		unions=new HashMap<CQIE, UnionSet>();
		queryIndex=new HashMap<CQIE, UnionInfo>();
	}

	public void add(CQIE mapping, UnionSet unionset) {
		unions.put(mapping, unionset);
		
	}

	public int size() {
		return unions.size();
	}

	public Collection<UnionSet> getSets() {
		return unions.values();
	}
	
	

}
