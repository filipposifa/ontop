package it.unibz.inf.ontop.owlrefplatform.core.unfolding;

import it.unibz.inf.ontop.model.CQIE;
import it.unibz.inf.ontop.model.Constant;
import it.unibz.inf.ontop.model.ExpressionOperation;
import it.unibz.inf.ontop.model.Function;
import it.unibz.inf.ontop.model.Predicate;
import it.unibz.inf.ontop.model.Term;
import it.unibz.inf.ontop.model.Variable;
import it.unibz.inf.ontop.owlrefplatform.core.basicoperations.Substitution;
import it.unibz.inf.ontop.owlrefplatform.core.basicoperations.SubstitutionUtilities;
import it.unibz.inf.ontop.owlrefplatform.core.basicoperations.UnifierUtilities;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.google.common.collect.Multimap;

public class UniqueConstraintOptimizer {

	public static void selfJoinElimination(CQIE query, Multimap<Predicate, List<Integer>> primaryKeys) {

		List<Function> body = query.getBody();
		
		int startSize = body.size();
		int round = 0;

		while (true) {
			int roundStart = body.size();
			round++;
			
			Iterator<Function> it = body.iterator();
			while (it.hasNext()) {
				Function currentAtom = it.next();		
				if (!currentAtom.isDataFunction())
					continue;

				Collection<List<Integer>> pKeys = primaryKeys.get(currentAtom.getFunctionSymbol());
	            for (List<Integer> pKey : pKeys) {
	                if (pKey == null || pKey.isEmpty()) 
	                    continue;
	                
	                // the predicate has a primary key, looking for candidates for
	                // unification, when we find one we can stop, since the application
	                // of this optimization at each step of the derivation tree
	                // guarantees there wont be any other redundant atom.
	                
					Substitution mgu = null;
					
	                for (Function tempatom : body) {
	                	// reached the diagonal (i mean equality of pointers)
	                	if (tempatom == currentAtom)
	                		break;
	                	
	                    // predicates are different, atoms cannot be unified
	                    if (!tempatom.getFunctionSymbol().equals(currentAtom.getFunctionSymbol())) 
	                        continue;

	                    boolean redundant = true;
	                    for (Integer termidx2 : pKey) {
	                        if (!currentAtom.getTerm(termidx2 - 1).equals(tempatom.getTerm(termidx2 - 1))) {
	                            redundant = false;
	                            break;
	                        }
	                    }
	                    
	                    if (redundant) {
	                        // found a candidate replacement atom 
	                        mgu = UnifierUtilities.getMGU(currentAtom, tempatom);
	                        if (mgu != null) 
	                            break;
	                    }
	                }

	                if (mgu == null)
	                    continue;

					SubstitutionUtilities.applySubstitution(query, mgu, false);
					it.remove();
	                break;
	            }
			}
			// if have not removed any atom
			if (body.size() == roundStart)
				break;
		}
			
		int diff = startSize - body.size();
		if (diff != 0)
			System.out.println("ESJ ELIMINATION REMOVED " + diff + " ATOMS IN " + round + " ROUNDS");
	}
	
	public static void coveredJoinElimination(CQIE query) {

		List<Function> body = query.getBody();
		Map<Variable, Integer> variablesCount=null;
		//set null for now in order to avoid compute if
		//no self joins occur in the query
		
		
		
		int startSize = body.size();
		int round = 0;

		while (true) {
			int roundStart = body.size();
			round++;
			
			Iterator<Function> it = body.iterator();
			while (it.hasNext()) {
				Function currentAtom = it.next();		
				if (!currentAtom.isDataFunction())
					continue;

				
	                
	                // the predicate has a primary key, looking for candidates for
	                // unification, when we find one we can stop, since the application
	                // of this optimization at each step of the derivation tree
	                // guarantees there wont be any other redundant atom.
	                
					Substitution mgu = null;
					
	                for (Function tempatom : body) {
	                	// reached the diagonal (i mean equality of pointers)
	                	if (tempatom == currentAtom)
	                		continue;
	                	
	                    // predicates are different, atoms cannot be unified
	                    if (!tempatom.getFunctionSymbol().equals(currentAtom.getFunctionSymbol())) 
	                        continue;

	                    boolean redundant = true;
	                    if(variablesCount==null){
	                    	variablesCount=new HashMap<Variable, Integer>();
	                    	computeVariablesCount(variablesCount, query);
	                    }
	                    
	                    for(int i=0;i<currentAtom.getArity();i++){
	                    	Term next=currentAtom.getTerm(i);
	                    	if(next instanceof Constant){
	                    		if(!tempatom.getTerm(i).equals(next)){
	                    			redundant=false;
	                    			break;
	                    		}
	                    	}
	                    	else if(next instanceof Variable){
	                    		Variable v=(Variable)currentAtom.getTerm(i);
	                    		if(variablesCount.get(v)==1){
	                    			//this column is not used anywhere else in the query
	                    			continue;
	                    		}
	                    		else{
	                    			if(!tempatom.getTerm(i).equals(next)){
		                    			redundant=false;
		                    			break;
		                    		}
	                    			else{
	                    				continue;
	                    			}
	                    		}
	                    	}
	                    }
	                    	
	                    
	                    //for (Integer termidx2 : pKey) {
	                    //    if (!currentAtom.getTerm(termidx2 - 1).equals(tempatom.getTerm(termidx2 - 1))) {
	                    //        redundant = false;
	                    //        break;
	                    //    }
	                    //}
	                    
	                    if (redundant) {
	                        // found a candidate replacement atom 
	                        mgu = UnifierUtilities.getMGU(currentAtom, tempatom);
	                        if (mgu != null) 
	                            break;
	                    }
	                }

	                if (mgu == null)
	                    continue;

					SubstitutionUtilities.applySubstitution(query, mgu, false);
					it.remove();
					for(Term t:currentAtom.getTerms()){
						if(t instanceof Variable){
							Variable v=(Variable)t;
							variablesCount.put(v, variablesCount.get(v)-1);
						}
					}
	                break;
	            
			}
			// if have not removed any atom
			if (body.size() == roundStart)
				break;
		}
			
		int diff = startSize - body.size();
		if (diff != 0)
			System.out.println("COVERED JOIN REMOVED " + diff + " ATOMS IN " + round + " ROUNDS");
	}

	private static void computeVariablesCount(Map<Variable, Integer> variablesCount, CQIE query) {
		Set<Term> notNulls=new HashSet<Term>();
		
		for(Term headTerm:query.getHead().getTerms()){
			computeVariableCount(variablesCount, headTerm, notNulls);
			
		}
		
		for(Function f:query.getBody()){
			
				computeVariableCount(variablesCount, f, notNulls);
		
		
	}
}

	private static void computeVariableCount(Map<Variable, Integer> variablesCount, Term t, Set<Term> notNulls) {
		if(t instanceof Variable){
			Variable v=(Variable)t;
		 if(!variablesCount.containsKey(v)){
			 variablesCount.put(v, 1);
		 }
		 else{
			 variablesCount.put(v, variablesCount.get(v)+1);
		 }
		}
		if(t instanceof Function){
			Function f=(Function) t;
			
			for(Term ft:f.getTerms()){
				if (f.getFunctionSymbol() == ExpressionOperation.IS_NOT_NULL){
					if(!notNulls.add(ft)){
						continue;
					}
				}
				computeVariableCount(variablesCount, ft, notNulls);
			}
			//System.out.println("function!!!! :"+t);
		}
		
	}
	

}