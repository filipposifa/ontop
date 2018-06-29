package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class Node {
	
	private List<Node> children;
	private List<Integer> mappingIds;
	private List<Integer> tMappingIds;
	private long object;
	int startPos;
	int atomcount;

	public Node(long queryID, int noOfChildren, Integer startPos, int count) {
		super();
		this.children = new ArrayList<Node>(noOfChildren);
		this.mappingIds = new ArrayList<Integer>(noOfChildren);
		this.tMappingIds = new ArrayList<Integer>(noOfChildren);
		this.object=queryID;
		this.startPos=startPos;
		this.atomcount=count;
	}

	public void removeChildren() {
		this.children.clear();
		
	}
	
	public void addChild(int tMappingID, int mappingID, Node child) {
		this.mappingIds.add(mappingID);
		this.tMappingIds.add(tMappingID);
		this.children.add(child);
	}
	
	public String print() {
		StringBuffer sb=new StringBuffer();
		sb.append(object);
		sb.append(":\n");
		for(int i=0;i<children.size();i++) {
			sb.append("\t");
			sb.append(this.tMappingIds.get(i));
			sb.append(":");
			sb.append(this.mappingIds.get(i));
			sb.append("::::");
			sb.append(children.get(i).print());
		}
		return sb.toString();
	}

	public int noOfChildren() {
		return children.size();
	}

	public void traverse(Map<Integer, UnionInfo> unions, List<SequenceInfo> sequences) {
		SequenceInfo si=null;
		if(children.size()>1) {
			si=new SequenceInfo(this);
			sequences.add(si);
		}
		for(int i=0;i<children.size();i++) {
			for(SequenceInfo si2:sequences) {
				si2.addToSequence(tMappingIds.get(i), mappingIds.get(i));
			}
			children.get(i).traverse(unions, sequences);
			for(SequenceInfo si2:sequences) {
				si2.removeFromSequence();
			}
			
		}
		if(children.isEmpty()) {
			for(SequenceInfo si2:sequences) {
				si2.removeFromSequence();
			}
		}
		sequences.remove(si);
		
	}

}
