package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.HashSet;
import java.util.Set;

import it.unibz.inf.ontop.model.Function;

public class UnionSet {
	
	private Set<Function> toReplace;
	private Set<UnionInfo> unions;
	
	public UnionSet(Set<Function> toReplace, UnionInfo firstUnion) {
		super();
		this.toReplace = toReplace;
		this.unions = new HashSet<UnionInfo>();
		unions.add(firstUnion);
	}

	public Set<UnionInfo> getInfo() {
		return unions;
	}

	public void remove(UnionInfo ui) {
		this.unions.remove(ui);
		
	}

	public void add(UnionInfo ui) {
		this.unions.add(ui);
		
	}
	
	

}
