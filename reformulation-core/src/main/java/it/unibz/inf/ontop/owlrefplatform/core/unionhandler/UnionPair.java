package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import it.unibz.inf.ontop.model.CQIE;

public class UnionPair {
	
	private Set<UnionSet> unions;
	Map<CQIE, UnionInfo> queryIndex;

	public UnionPair() {
		super();
		unions=new HashSet<UnionSet>();
		queryIndex=new HashMap<CQIE, UnionInfo>();
	}

	public void add(UnionSet unionset) {
		unions.add(unionset);
		
	}

	public int size() {
		return unions.size();
	}
	
	

}
