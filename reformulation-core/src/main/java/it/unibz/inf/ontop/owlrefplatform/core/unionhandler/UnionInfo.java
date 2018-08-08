package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class UnionInfo {
	
	
	private Map<Integer, PredEntry> predicates;
	
	
	
	public UnionInfo() {
		super();
		predicates=new HashMap<Integer, PredEntry>();
	}



	public void addSequence(int map, Iterator<Integer> it, SequenceInfo si, long nodeId) {
		if(!predicates.containsKey(map)) {
			predicates.put(map, new PredEntry());
		}
		
		PredEntry pe=predicates.get(map);
		
		List<Integer> seq=new ArrayList<Integer>();
		while(it.hasNext()) {
			seq.add(it.next());
		}
		pe.setProjection(si.getProjection());
		NodeAtomReplacement repl=new NodeAtomReplacement(nodeId, si.getAtomcount(), si.getStartPos());
		pe.addSequence(seq, repl);
		
	}

	public int getCardinality() {
		return predicates.size();
	}



	public Iterator<PredEntry> getPredicates() {
		return predicates.values().iterator();
		
	}



	public Iterator<Integer> getMappings() {
		return predicates.keySet().iterator();
	}



	public PredEntry getPredicate(Integer mapping) {
		return predicates.get(mapping);
	}



	@Override
	public String toString() {
		return "UnionInfo [predicates=" + predicates + "]";
	}
	
	
	

}
