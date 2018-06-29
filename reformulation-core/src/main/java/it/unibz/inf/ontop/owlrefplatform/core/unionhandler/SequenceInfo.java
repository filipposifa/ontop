package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.LinkedList;
import java.util.List;

public class SequenceInfo {
	
	private Node startingNode;
	private LinkedList<Integer> sequence;
	
	public SequenceInfo(Node startingNode) {
		super();
		this.startingNode = startingNode;
		this.sequence=new LinkedList<Integer>();
	}
	
	public void addToSequence(int tMappingID, int mappingID) {
		this.sequence.add(tMappingID);
		this.sequence.add(mappingID);
	}

	public void removeFromSequence() {
		this.sequence.removeLast();
		this.sequence.removeLast();
		
	}

}
