package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import it.unibz.inf.ontop.model.Term;

public class PredEntry {
	
	private int startingPos;
	private int atomcount;
	private Map<List<Integer>, Long> sequences;
	private List<Term> projection;
	
	
	
	public PredEntry(int startingPos, int atomcount) {
		super();
		this.startingPos = startingPos;
		this.atomcount = atomcount;
		sequences=new HashMap<List<Integer>, Long>();
	}





	public void addSequence(List<Integer> seq, long startingNodeID) {
		sequences.put(seq, startingNodeID);
		
	}





	public Set<List<Integer>> getSequences() {
		return sequences.keySet();
	}





	public Long getQueryForSequence(List<Integer> seq) {
		return sequences.get(seq);
	}





	public int getStartPos() {
		return this.startingPos;
	}





	public int getAtomCount() {
		return this.atomcount;
	}





	public void setProjection(List<Term> projection) {
		this.projection=projection;
	}





	public List<Term> getProjection() {
		return projection;
	}

}
