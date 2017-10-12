package it.unibz.inf.ontop.model.impl;

import java.util.HashSet;
import java.util.Set;

import it.unibz.inf.ontop.model.AnonQuerySet;
import it.unibz.inf.ontop.model.CQIE;

public class AnonQuerySetImpl implements AnonQuerySet{
	private Set<CQIE> queries;
	private boolean distinctFromKeys;
	
	public AnonQuerySetImpl() {
		super();
		queries=new HashSet<CQIE>();
		distinctFromKeys=false;
	}

	public Set<CQIE> getQueries() {
		return queries;
	}

	public void setQueries(Set<CQIE> queries) {
		this.queries = queries;
	}

	public boolean isDistinctFromKeys() {
		return distinctFromKeys;
	}

	public void setDistinctFromKeys(boolean distinctFromKeys) {
		this.distinctFromKeys = distinctFromKeys;
	}
	
	

}