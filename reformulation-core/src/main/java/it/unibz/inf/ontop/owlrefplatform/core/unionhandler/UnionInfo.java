package it.unibz.inf.ontop.owlrefplatform.core.unionhandler;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import it.unibz.inf.ontop.model.CQIE;
import it.unibz.inf.ontop.model.Function;

public class UnionInfo {
	
	
	private List<CQIE> mappingSequence;
	private CQIE cq;
	
	
	public UnionInfo(CQIE q) {
		super();
		mappingSequence=new ArrayList<CQIE>();
		this.cq=q;
	}
	
	

}
