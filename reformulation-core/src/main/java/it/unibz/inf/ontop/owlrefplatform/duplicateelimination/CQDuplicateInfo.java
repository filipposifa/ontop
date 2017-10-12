package it.unibz.inf.ontop.owlrefplatform.duplicateelimination;

import madgik.analyzer.decomposer.dag.Node;

public class CQDuplicateInfo {
	
	private final Node resultNode;
	private final double resultSize;
	
	private final AtomReplacement repl;
	
	public CQDuplicateInfo(Node resultNode, double resultSize, AtomReplacement a) {
		super();
		this.resultNode = resultNode;
		this.resultSize = resultSize;
		this.repl=a;
	}

	public Node getResultNode() {
		return resultNode;
	}

	public double getResultSize() {
		return resultSize;
	}

	

	@Override
	public String toString() {
		return "CQDuplicateInfo [resultNode=" + resultNode.getDescendantBaseTables() + ", resultSize=" + resultSize + "]";
	}

	public AtomReplacement getRepl() {
		return repl;
	}
	
	

}
