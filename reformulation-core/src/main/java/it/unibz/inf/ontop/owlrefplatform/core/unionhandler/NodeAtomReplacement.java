package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

public class NodeAtomReplacement {
	
	private Long node;
	private int atomCount;
	private int startPos;
	
	
	public NodeAtomReplacement(Long node, int atomCount, int startPos) {
		super();
		this.node = node;
		this.atomCount = atomCount;
		this.startPos = startPos;
	}


	public Long getQuery() {
		return node;
	}


	public int getAtomCount() {
		return atomCount;
	}


	public int getStartPos() {
		return startPos;
	}


	@Override
	public String toString() {
		return "NodeAtomReplacement [node=" + node + ", atomCount=" + atomCount + ", startPos=" + startPos + "]";
	}


	
	
	
	
	

}
