package it.unibz.inf.ontop.model;

import java.io.Serializable;
import java.util.Set;

public interface AnonQuerySet extends Serializable {

	
	public Set<CQIE> getQueries() ; 

	public void setQueries(Set<CQIE> queries) ;

	public boolean isDistinctFromKeys() ;

	public void setDistinctFromKeys(boolean distinctFromKeys) ;
	
	
}
