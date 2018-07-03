package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


public class Node {
	
	private List<Node> children;
	private List<Integer> mappingIds;
	private List<Integer> tMappingIds;
	private long object;
	private int startPos;
	private int atomcount;

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
		
		//SequenceInfo si=null;
		
		for(int i=0;i<children.size();i++) {
			SequenceInfo si=null;
			if(children.size()>1) {
				si=new SequenceInfo(children.get(i));
				sequences.add(si);
				}
			for(SequenceInfo si2:sequences) {
				si2.addToSequence(tMappingIds.get(i), mappingIds.get(i));
			}
			
			
			children.get(i).traverse(unions, sequences);
			for(SequenceInfo si2:sequences) {
					si2.removeFromSequence();
			}
			if(si!=null) {
				sequences.remove(si);
			}
		}
		if(children.isEmpty()) {
			for(SequenceInfo si3:sequences) {
				Iterator<Integer> it=si3.nextSequence();
				int tMap=it.next();
				int map=it.next();
				if(!unions.containsKey(tMap)) {
					unions.put(tMap, new UnionInfo());
				}
				UnionInfo ui=unions.get(tMap);
				ui.addSequence(map, it, si3, object);
				
			}
						
		}
		List<SequenceInfo> toRemove=new ArrayList<SequenceInfo>();
		for(SequenceInfo si:sequences) {
			if(si.getStartingNodeID()==object) {
			toRemove.add(si);
			}
		}
		for(SequenceInfo si:toRemove) {
			sequences.remove(si);
		}
		
	}

	public int getStartPos() {
		return startPos;
	}

	public int getAtomcount() {
		return atomcount;
	}

	public long getObject() {
		return object;
	}
	
	

}
