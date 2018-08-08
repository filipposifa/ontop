package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import it.unibz.inf.ontop.model.Term;

public class PredEntry {
	

	private Map<List<Integer>, NodeAtomReplacement> sequences;
	private List<Term> projection;
	
	
	public PredEntry() {
		super();
		sequences=new HashMap<List<Integer>, NodeAtomReplacement>();
	}


	public void addSequence(List<Integer> seq, NodeAtomReplacement startingNodeID) {
		sequences.put(seq, startingNodeID);
		
	}


	public Set<List<Integer>> getSequences() {
		return sequences.keySet();
	}


	public NodeAtomReplacement getQueryForSequence(List<Integer> seq) {
		return sequences.get(seq);
	}


	public void setProjection(List<Term> projection) {
		this.projection=projection;
	}


	public List<Term> getProjection() {
		return projection;
	}


	@Override
	public String toString() {
		return "PredEntry [sequences=" + sequences + ", projection=" + projection + "]";
	}
	
	

}
