package it.unibz.inf.ontop.owlrefplatform.duplicateelimination;

import java.util.List;
import java.util.Set;

import it.unibz.inf.ontop.model.CQIE;
import it.unibz.inf.ontop.model.Function;

public class AtomReplacement {
	
	private final CQIE query;
	private Function replacement;
	private final List<Function> toBeReplaced;
	public AtomReplacement(CQIE query, List<Function> toBeReplaced) {
		super();
		this.query = query;
		this.toBeReplaced = toBeReplaced;
	}
	public CQIE getQuery() {
		return query;
	}
	
	public List<Function> getToBeReplaced() {
		return toBeReplaced;
	}
	
	
	

}
