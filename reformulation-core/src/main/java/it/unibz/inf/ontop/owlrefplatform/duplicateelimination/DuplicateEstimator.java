package it.unibz.inf.ontop.owlrefplatform.duplicateelimination;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import madgik.analyzer.decomposer.dag.Node;
import madgik.analyzer.decomposer.dag.NodeHashValues;
import madgik.analyzer.decomposer.dag.NodeOutputs;
import madgik.analyzer.decomposer.federation.NamesToAliases;
import madgik.analyzer.decomposer.federation.QueryDecomposer;
import madgik.analyzer.decomposer.query.Column;
import madgik.analyzer.decomposer.query.SQLQuery;
import madgik.analyzer.decomposer.query.Table;
import madgik.analyzer.decomposer.query.UnaryWhereCondition;
import madgik.analyzer.decomposer.util.Util;
import madgik.analyzer.decomposer.query.NonUnaryWhereCondition;
import madgik.analyzer.decomposer.query.Operand;
import madgik.analyzer.decomposer.query.Output;
import madgik.analyzer.estimator.NodeInfo;
import madgik.analyzer.estimator.NodeSelectivityEstimator;

import com.google.common.collect.Multimap;

import it.unibz.inf.ontop.model.AnonQuerySet;
import it.unibz.inf.ontop.model.CQIE;
import it.unibz.inf.ontop.model.Constant;
import it.unibz.inf.ontop.model.DatalogProgram;
import it.unibz.inf.ontop.model.ExpressionOperation;
import it.unibz.inf.ontop.model.Function;
import it.unibz.inf.ontop.model.OBDADataFactory;
import it.unibz.inf.ontop.model.Predicate;
import it.unibz.inf.ontop.model.Term;
import it.unibz.inf.ontop.model.Variable;
import it.unibz.inf.ontop.model.impl.OBDAVocabulary;
import it.unibz.inf.ontop.owlrefplatform.core.basicoperations.CQCUtilities;
import it.unibz.inf.ontop.model.Predicate.COL_TYPE;
import it.unibz.inf.ontop.sql.Attribute;
import it.unibz.inf.ontop.sql.DBMetadata;
import it.unibz.inf.ontop.sql.DatabaseRelationDefinition;
import it.unibz.inf.ontop.sql.QuotedID;
import it.unibz.inf.ontop.sql.Relation2DatalogPredicate;
import it.unibz.inf.ontop.sql.RelationDefinition;
import it.unibz.inf.ontop.sql.RelationID;

public class DuplicateEstimator {

	private DatalogProgram queries;
	private Multimap<Predicate, List<Integer>> primaryKeys;
	private NodeHashValues hashes;
	private DBMetadata metadata;
	private OBDADataFactory fac;
	private boolean pushDE;

	public DuplicateEstimator(DatalogProgram result, Multimap<Predicate, List<Integer>> primaryKeys,
			DBMetadata metadata, OBDADataFactory fac) {
		this.queries = result;
		this.primaryKeys = primaryKeys;
		hashes = new NodeHashValues();
		this.metadata = metadata;
		this.fac = fac;
		
		pushDE=containsURIConstruction();
		//pushDE=false;
		hashes.setSelectivityEstimator(fac.getNodeSelectivityEstimator());
	}

	private boolean containsURIConstruction() {
		
		if(!this.metadata.getDriverName().toLowerCase().contains("mysql")){
			return true;
		}
		CQIE q=queries.getRules().get(0);
		Function head = q.getHead();
		for(Term a:head.getTerms()){
			//check if we indeed have uri construction
			if(a instanceof Function){
				Function f=(Function)a;
				if(f.getFunctionSymbol().getName().equals("URI")){
					return true;
				}
			}
		}
		return false;
	}

	public void estimate() {

		NamesToAliases n2a = new NamesToAliases();
		Map<Term, AnonQuerySet> anonToQueries = new HashMap<Term, AnonQuerySet>();
		if(pushDE){
		queries.setAnonToQueries(anonToQueries);
		}
		// int tt=0;
		Map<NodeOutputs, List<CQDuplicateInfo>> duplInfos = new HashMap<NodeOutputs, List<CQDuplicateInfo>>();
		for (CQIE q : queries.getRules()) {
			boolean nonRelationalFunctions = false;
			SQLQuery query = new SQLQuery();
			// Set<String> outputs = new HashSet<String>();
			Map<String, Integer> tableOccurences = new HashMap<String, Integer>();
			// Map<Variable, Integer> varCounts=new HashMap<Variable,
			Map<String, List<Function>> atomsToBeReplaced = new HashMap<String, List<Function>>();
			// Integer>();
			// UniqueConstraintOptimizer.computeVariablesCount(varCounts, q);
			Set<Variable> projectedVars = new HashSet<Variable>();
			getVariablesForTerm(projectedVars, q.getHead());
			Function head = q.getHead();
			Term anonHead = null;
			if(pushDE){
			anonHead = head.clone();
			List<Term> vars = new ArrayList<Term>();
			
			computeAnonAns(vars, (Function) anonHead);
					
				
			
			
			if (anonToQueries.containsKey(anonHead)) {
				anonToQueries.get(anonHead).getQueries().add(q);
			} else {
				AnonQuerySet qs = fac.getAnonQuerySet();
				qs.getQueries().add(q);
				anonToQueries.put(anonHead, qs);
			}
			// System.out.println("size::::" + anonToQueries.size());
			Function fi = fac.getFunction(((Function) anonHead).getFunctionSymbol(), vars);
			q.updateHead(fi);
			}
			Map<Variable, Set<Column>> joinClasses = new HashMap<Variable, Set<Column>>();
			// Map<RelationID, Set<String>> projectedColumns=new
			// HashMap<RelationID, Set<String>>();
			Set<Function> tables = new HashSet<Function>();
			Map<Variable, Set<Function>> filters = new HashMap<Variable, Set<Function>>();
			Map<Variable, Set<Function>> notNulls = new HashMap<Variable, Set<Function>>();
			Map<Function, Set<NonUnaryWhereCondition>> complexConditions = new HashMap<Function, Set<NonUnaryWhereCondition>>();
			Map<Variable, Column> colsToBeRenamed = new HashMap<Variable, Column>();
			Set<Function> processed=new HashSet<Function>(); 
			for (Function f : q.getBody()) {
				if(!processed.add(f)) continue;
				
				RelationID id = Relation2DatalogPredicate.createRelationFromPredicateName(metadata.getQuotedIDFactory(),
						f.getFunctionSymbol());
				RelationDefinition def = metadata.getRelation(id);
				if (def == null) {
					if (f.getFunctionSymbol() == ExpressionOperation.IS_NOT_NULL
							|| f.getFunctionSymbol() == ExpressionOperation.IS_NULL) {
						Term t = f.getTerm(0);
						if (t instanceof Variable) {
							Variable v = (Variable) t;
							if (!colsToBeRenamed.containsKey(v)) {
								colsToBeRenamed.put(v, new Column());
							}
							Column c = colsToBeRenamed.get(v);
							UnaryWhereCondition uwc = new UnaryWhereCondition(UnaryWhereCondition.IS_NULL, c, true);
							if (f.getFunctionSymbol() == ExpressionOperation.IS_NULL) {
								uwc.setNot(false);
							}
							query.addUnaryWhereCondition(uwc);
							if (!notNulls.containsKey(v)) {
								notNulls.put(v, new HashSet<Function>());
							}
							notNulls.get(v).add(f);
						} else if (t instanceof Constant) {
							continue;
						} else {
							System.out.println("(not) null condition on complex expression! skiping...");
						}

					} else if (f.getFunctionSymbol() == ExpressionOperation.GT
							|| f.getFunctionSymbol() == ExpressionOperation.GTE
							|| f.getFunctionSymbol() == ExpressionOperation.LT
							|| f.getFunctionSymbol() == ExpressionOperation.LTE
							|| f.getFunctionSymbol() == ExpressionOperation.EQ
							|| f.getFunctionSymbol() == ExpressionOperation.NEQ) {
						// Term t1 = f.getTerm(0);
						// Term t2 = f.getTerm(1);
						Variable v1 = getVariableFromTerm(f.getTerm(0));
						Variable v2 = getVariableFromTerm(f.getTerm(1));
						if (v1 != null && v2 != null) {
							System.out.println("query contains range join. TODO...");
							nonRelationalFunctions = true;
							break;
						} else if (v1 == null && v2 == null) {
							System.out.println("condition with constants?... ignoring");
							// nonRelationalFunctions = true;
							break;
						} else {
							if (v1 != null) {
								if (!filters.containsKey(v1)) {
									filters.put(v1, new HashSet<Function>());
								}
								filters.get(v1).add(f);
							} else if (v2 != null) {
								if (!filters.containsKey(v2)) {
									filters.put(v2, new HashSet<Function>());
								}
								filters.get(v2).add(f);
							}
						}
					} else if (f.getFunctionSymbol() == ExpressionOperation.OR) {

						NonUnaryWhereCondition bo = (NonUnaryWhereCondition) getOperandFromExpession(f,
								colsToBeRenamed);
						Set<NonUnaryWhereCondition> conditions = new HashSet<NonUnaryWhereCondition>();
						conditions.add(bo);
						complexConditions.put(f, conditions);
						query.addBinaryWhereCondition(bo);
					} else if (f.getFunctionSymbol() == ExpressionOperation.AND) {
						if (f.getTerm(0) instanceof Function && f.getTerm(1) instanceof Function) {
							NonUnaryWhereCondition bo = (NonUnaryWhereCondition) getOperandFromExpession(
									(Function) f.getTerm(0), colsToBeRenamed);
							query.addBinaryWhereCondition(bo);
							NonUnaryWhereCondition bo2 = (NonUnaryWhereCondition) getOperandFromExpession(
									(Function) f.getTerm(1), colsToBeRenamed);
							Set<NonUnaryWhereCondition> conditions = new HashSet<NonUnaryWhereCondition>();
							conditions.add(bo);
							conditions.add(bo2);
							complexConditions.put(f, conditions);
							query.addBinaryWhereCondition(bo2);
						} else {
							System.out.println("and condition with no function args");
						}
					} else {
						System.out.println("query contains non relation functions");
						nonRelationalFunctions = true;
						break;
					}
				} else {
					if (f.isOperation()) {
						continue;
					}
					tables.add(f);
				}

			}
			boolean hasDTR1FromKeys = true;
			for (Function f : tables) {

				RelationID id = Relation2DatalogPredicate.createRelationFromPredicateName(metadata.getQuotedIDFactory(),
						f.getFunctionSymbol());
				RelationDefinition def = metadata.getRelation(id);
				String tblName = id.getSQLRendering();

				if (!tableOccurences.containsKey(tblName)) {
					tableOccurences.put(tblName, 0);
				} else {
					tableOccurences.put(tblName, tableOccurences.get(tblName) + 1);
				}
				String alias = n2a.getGlobalAliasForBaseTable(tblName, tableOccurences.get(tblName));
				Table tbl = new Table(tblName, alias);
				atomsToBeReplaced.put(alias, new ArrayList<Function>());
				atomsToBeReplaced.get(alias).add(f);
				query.addInputTable(tbl);
				List<Integer> projected = new ArrayList<Integer>();

				// Set<String> projections=new HashSet<String>();

				for (int i = 0; i < f.getArity(); i++) {
					Term t = f.getTerm(i);
					if (t instanceof Constant) {
						projected.add(i + 1);
						Constant cnst = (Constant) t;
						madgik.analyzer.decomposer.query.Constant exCnst = new madgik.analyzer.decomposer.query.Constant(
								cnst.getValue());
						exCnst.setArithmetic(isArithmetic(cnst));
						NonUnaryWhereCondition nuwc = new NonUnaryWhereCondition(
								new Column(alias, def.getAttributes().get(i).getID().getName()), exCnst, "=");
						query.addBinaryWhereCondition(nuwc);
						// projected.add(i);
					} else if (t instanceof Variable) {
						Variable v = (Variable) t;
						if (joinClasses.containsKey(v)) {
							// add join
							Set<Column> cols = joinClasses.get(v);
							Column newCol = new Column(alias, def.getAttributes().get(i).getID().getName());
							Column otherCol = cols.iterator().next();
							NonUnaryWhereCondition nuwc = new NonUnaryWhereCondition(newCol, otherCol, "=");
							query.addBinaryWhereCondition(nuwc);
							cols.add(newCol);
							projected.add(i + 1);

						} else {
							Set<Column> cols = new HashSet<Column>();
							cols.add(new Column(alias, def.getAttributes().get(i).getID().getName()));
							joinClasses.put(v, cols);
						}
						if (projectedVars.contains(v)) {
							Column c = new Column(alias, def.getAttributes().get(i).getID().getName());
							Output o = new Output(c.getName(), c);
							query.getOutputs().add(o);
							projectedVars.remove(v);
							// outputs.add(alias+"."+def.getAttributes().get(i).getID().getName());
							projected.add(i + 1);
						}
						if (filters.containsKey(v)) {

							for (Function filter : filters.get(v)) {
								NonUnaryWhereCondition filterCondition = new NonUnaryWhereCondition();
								Constant con = getConstantFromTerm(filter.getTerm(0));

								if (con != null) {

									madgik.analyzer.decomposer.query.Constant exCnst = new madgik.analyzer.decomposer.query.Constant(
											con.getValue());
									exCnst.setArithmetic(isArithmetic(con));
									filterCondition.addOperand(exCnst);
									filterCondition.addOperand(
											new Column(alias, def.getAttributes().get(i).getID().getName()));

								} else {
									con = getConstantFromTerm(filter.getTerm(1));

									if (con != null) {

										madgik.analyzer.decomposer.query.Constant exCnst = new madgik.analyzer.decomposer.query.Constant(
												con.getValue());
										exCnst.setArithmetic(isArithmetic(con));
										filterCondition.addOperand(
												new Column(alias, def.getAttributes().get(i).getID().getName()));

										filterCondition.addOperand(exCnst);

									} else {
										System.out.println("filter not supported!!!");
									}

								}

								if (filter.getFunctionSymbol() == ExpressionOperation.GT) {
									filterCondition.setOperator(">");
								} else if (filter.getFunctionSymbol() == ExpressionOperation.GTE) {
									filterCondition.setOperator(">=");
								} else if (filter.getFunctionSymbol() == ExpressionOperation.LT) {
									filterCondition.setOperator("<");
								} else if (filter.getFunctionSymbol() == ExpressionOperation.LTE) {
									filterCondition.setOperator("<=");
								} else if (filter.getFunctionSymbol() == ExpressionOperation.EQ) {
									filterCondition.setOperator("=");
									// projected.add(i+1);
								} else if (filter.getFunctionSymbol() == ExpressionOperation.NEQ) {
									filterCondition.setOperator("!=");
								} else {
									System.out.println("filter not supported!!!");
								}
								query.addBinaryWhereCondition(filterCondition);
								atomsToBeReplaced.get(alias).add(filter);
							}
							filters.remove(v);
						}
						if (notNulls.containsKey(v)) {
							for (Function nn : notNulls.get(v)) {
								atomsToBeReplaced.get(alias).add(nn);
							}
							notNulls.remove(v);
						}
						if (colsToBeRenamed.containsKey(v)) {
							Column c = colsToBeRenamed.get(v);
							c.setAlias(alias);
							c.setName(def.getAttributes().get(i).getID().getName());

						}
					}
				}
				boolean hasDtr1 = false;
				for (List<Integer> pks : primaryKeys.get(f.getFunctionSymbol())) {
					if (projected.containsAll(pks)) {
						hasDtr1 = true;
						tbl.setDtr1FromKeys(true);
						// System.out.println(f.getFunctionSymbol() + " has
						// DTR=1 from keys");
					}
				}
				if (!hasDtr1) {
					hasDTR1FromKeys = false;
					for (Function complex : complexConditions.keySet()) {
						boolean existColumnFromOtherTable = false;
						for (NonUnaryWhereCondition nuwc : complexConditions.get(complex)) {
							for (Column c : nuwc.getAllColumnRefs()) {
								if (c.getAlias() == null) {
									existColumnFromOtherTable = true;
									break;
								}
								if (!c.getAlias().equals(alias)) {
									existColumnFromOtherTable = true;
									break;
								}
							}
							if (existColumnFromOtherTable) {
								break;
							}
						}
						if (!existColumnFromOtherTable) {
							// all columns of complex function come from this
							// table
							atomsToBeReplaced.get(alias).add(complex);
						}
					}
				}
			}
			if (nonRelationalFunctions) {
				continue;
			}
			if (hasDTR1FromKeys&&pushDE) {
				// System.out.println("DTR 1 from keys: for CQ:\n" +
				// q.toString());
				anonToQueries.get(anonHead).setDistinctFromKeys(true);
			} else {
				// tt++;
				QueryDecomposer d = new QueryDecomposer(query, "/tmp/", 1, hashes);
				d.setN2a(n2a);
				// System.out.println(query.toSQL());
				Set<NodeOutputs> candidatesForElmination = new HashSet<NodeOutputs>();
				Node top = d.getSelectivityForTopNode(candidatesForElmination);
				NodeInfo r = top.getNodeInfo();
				// renameOutputs(queryOutputs.get(sql), query);
				// double dupl =
				// NodeSelectivityEstimator.getDuplicateEstimation(r, outputs);
				// System.out.println("dupl est.:" + dupl + " for CQ:\n" +
				// q.toString());
				for (NodeOutputs no : candidatesForElmination) {

					// System.out.println("dupl est.:" + duplBase + " for
					// base:\n" + baseNode.getDescendantBaseTables()+"
					// outputs:"+no.getOutputs());
					if (!duplInfos.containsKey(no)) {
						duplInfos.put(no, new LinkedList<CQDuplicateInfo>());
					}
					Node baseNode = hashes.get(no.getNode());
					AtomReplacement repl = new AtomReplacement(q,
							atomsToBeReplaced.get(baseNode.getDescendantBaseTables().iterator().next()));
					CQDuplicateInfo di = new CQDuplicateInfo(top, r.getTupleLength() * r.getNumberOfTuples(), repl);
					duplInfos.get(no).add(di);
				}

			}
		}
		computeBeneficialEliminations(duplInfos);
		System.out.println("OK");
	}

	private void computeBeneficialEliminations(Map<NodeOutputs, List<CQDuplicateInfo>> duplInfos) {
		for(NodeOutputs no:duplInfos.keySet()){
			Node baseNode=hashes.get(no.getNode());
			//System.out.println("computing... for node "+baseNode.getDescendantBaseTables()+" and outputs "+no.getOutputs());
			List<Double> resultEst=NodeSelectivityEstimator.getDuplicateEstimation(baseNode.getNodeInfo() , no.getOutputs());
			double duplBase=resultEst.get(0);
			double baseLength=resultEst.get(1);
			double sizeBase=baseLength*baseNode.getNodeInfo().getNumberOfTuples();
			double sum=0.0;
			for(CQDuplicateInfo duplUnion:duplInfos.get(no)){
				sum+=(duplUnion.getResultSize()-(duplUnion.getResultSize()/duplBase));
			}
			double rightSide=(sizeBase/duplBase);
			//System.out.println("sum:"+sum);
			//System.out.println("rightSide:"+rightSide);
			//if(sum>-10){
			if(sum>(rightSide)){
				System.out.println("beneficial");
				System.out.println("dupl est fo base:"+duplBase+ " sum: "+ sum);
				List<Integer> positions=new ArrayList<Integer>();
				Predicate tableName=duplInfos.get(no).get(0).getRepl().getToBeReplaced().get(0).getFunctionSymbol();
				RelationID id = Relation2DatalogPredicate.createRelationFromPredicateName(metadata.getQuotedIDFactory(),
						tableName);
				RelationDefinition def = metadata.getRelation(id);
				for(Column output:no.getOutputColumns()){
					for(int pos=0; pos<def.getAttributes().size(); pos++){
						Attribute a=def.getAttributes().get(pos);
					
						if(a.getID().getName().equals(output.getName())){
							positions.add(pos);
						}
					}
				}
				if(!(positions.size()==no.getOutputColumns().size())){
					System.out.println("ERROR! different size");
				}
				List<String> viewNames=new ArrayList<String>();
				String viewtable="viewtable";
				String schema=null;
				if(this.metadata.getDbmsProductName().toLowerCase().contains("db2")){
					schema="SESSION";
				}
				
				String viewName=viewtable+Util.createUniqueId();
				if(this.metadata.getDbmsProductName().toLowerCase().contains("oracle")){
					viewName="V"+UUID.randomUUID().toString().replace("-", "");
					viewName=viewName.substring(0, 30).toUpperCase();
				}
				
				String firstView=viewName;
				viewNames.add(viewName);
				COL_TYPE[]  types= new COL_TYPE[positions.size()] ;
				
				for(CQDuplicateInfo duplUnion:duplInfos.get(no)){
					if(!viewNames.get(viewNames.size()-1).equals(viewName)){
						viewNames.add(viewName);
					}
					AtomReplacement repl=duplUnion.getRepl();
					CQIE q=repl.getQuery();
					List<Function> toRemove=repl.getToBeReplaced();
					List<Term> termsProjected=new ArrayList<Term>();
					Function table=toRemove.iterator().next();
					for(Integer termPos:positions){
						termsProjected.add(table.getTerm(termPos));
					}
					q.getBody().removeAll(toRemove);
					
					String predName=viewNames.get(viewNames.size()-1);
					if(this.metadata.getDbmsProductName().toLowerCase().contains("db2")){
						predName="SESSION."+predName.toUpperCase();
					}
					Predicate p=fac.getPredicate(predName, types);
					Function f=fac.getFunction(p, termsProjected);
					
					
					q.getBody().add(f);	
					
					if(this.metadata.getDriverName().toLowerCase().contains("mysql")){
						viewName=viewtable+Util.createUniqueId();
						//mysql cannot use a temp table more than once in each query!!!
						//"Can't reopen table" error
					}
					
				}
				no.refactorSQLWithQuote(metadata.getQuotedIDFactory().getIDQuotationString());
				
				Predicate pr=fac.getPredicate("stringview", new COL_TYPE[] { null });
				Predicate p2=fac.getPredicate(OBDAVocabulary.QUEST_TEMP_VIEW, types);
				Function f2=fac.getFunction(p2);
				for(String v:viewNames){
					DatabaseRelationDefinition replacement=metadata.createDatabaseRelation(metadata.getQuotedIDFactory().createRelationID(schema, v));
					for(Column c:no.getOutputColumns()){
						replacement.addAttribute(metadata.getQuotedIDFactory().createAttributeID(c.getName()), 1, "VARCHAR", false);
					}
					String q="create temporary table "+v+" as select * from "+firstView+";";
					if(this.metadata.getDbmsProductName().toLowerCase().contains("oracle")){
						q="create temporary global table "+v+" ON COMMIT PRESERVE ROWS  as select * from "+firstView+";";
					}
					if(v.equals(firstView)){
						if(this.metadata.getDbmsProductName().toLowerCase().contains("oracle")){
							//schema="NPD";
							if(schema==null){
								q=no.getOracleSQL(v);
							}
							else{
								q=no.getOracleSQL(schema+"."+v);
							}
						}
						else {
						if(schema==null){
							q=no.getSQL(v);
						}
						else{
							q=no.getSQL(schema+"."+v);
						}
						}
					}
					
					
				Term stringTerm=fac.getConstantLiteral(q);
				Function body=fac.getFunction(pr, stringTerm);
				queries.appendRule(fac.getCQIE(f2, body));
				/*if(this.metadata.getDbmsProductName().toLowerCase().contains("oracle")){
					//add primary key definition
					StringBuffer sb=new StringBuffer();
					sb.append("ALTER TABLE ");
					sb.append(v);
					String keyname=v.substring(0, 28)+"pk";
					sb.append(" ADD CONSTRAINT "+ keyname + " PRIMARY KEY (");
					String del="";
					for(Column c:no.getOutputColumns()) {
						sb.append(del);
						sb.append(c.getName());
						del=", ";
					}
					sb.append(")");
					
					Term stringTermPK=fac.getConstantLiteral(sb.toString());
					Function bodyPK=fac.getFunction(pr, stringTermPK);
					queries.appendRule(fac.getCQIE(f2, bodyPK));
				}*/
				
				
				}
			}
		}
		
	}

	private boolean isArithmetic(Constant cnst) {
		if (cnst.getType() == Predicate.COL_TYPE.DECIMAL || cnst.getType() == Predicate.COL_TYPE.DOUBLE
				|| cnst.getType() == Predicate.COL_TYPE.FLOAT || cnst.getType() == Predicate.COL_TYPE.INT
				|| cnst.getType() == Predicate.COL_TYPE.INTEGER || cnst.getType() == Predicate.COL_TYPE.LONG
				|| cnst.getType() == Predicate.COL_TYPE.NEGATIVE_INTEGER
				|| cnst.getType() == Predicate.COL_TYPE.NON_NEGATIVE_INTEGER
				|| cnst.getType() == Predicate.COL_TYPE.NON_POSITIVE_INTEGER
				|| cnst.getType() == Predicate.COL_TYPE.POSITIVE_INTEGER)
			return true;
		else
			return false;
	}

	private Operand getOperandFromExpession(Function f, Map<Variable, Column> cols) {
		NonUnaryWhereCondition nuwc = new NonUnaryWhereCondition();
		if (f.getFunctionSymbol() == ExpressionOperation.AND) {
			nuwc.setOperator("and");
		} else if (f.getFunctionSymbol() == ExpressionOperation.OR) {
			nuwc.setOperator("or");
		} else if (f.getFunctionSymbol() == ExpressionOperation.GT) {
			nuwc.setOperator(">");
		} else if (f.getFunctionSymbol() == ExpressionOperation.GTE) {
			nuwc.setOperator(">=");
		} else if (f.getFunctionSymbol() == ExpressionOperation.LT) {
			nuwc.setOperator("<");
		} else if (f.getFunctionSymbol() == ExpressionOperation.LTE) {
			nuwc.setOperator("<=");
		} else if (f.getFunctionSymbol() == ExpressionOperation.EQ) {
			nuwc.setOperator("=");
		} else if (f.getFunctionSymbol() == ExpressionOperation.NEQ) {
			nuwc.setOperator("!=");
		} else {

			Constant con = getConstantFromTerm(f.getTerm(0));
			if (con != null) {
				madgik.analyzer.decomposer.query.Constant exCnst = new madgik.analyzer.decomposer.query.Constant(
						con.getValue());
				exCnst.setArithmetic(isArithmetic(con));
				return exCnst;
			} else {
				Variable v = getVariableFromTerm(f.getTerm(0));
				if (v != null) {
					if (!cols.containsKey(v)) {
						cols.put(v, new Column());
					}
					Column c = cols.get(v);
					return c;

				} else {
					System.out.println("filter not supported!!!");
				}

			}
		}

		if (f.getTerm(0) instanceof Function) {
			nuwc.addOperand(getOperandFromExpession((Function) f.getTerm(0), cols));
		} else {
			Constant con = getConstantFromTerm(f.getTerm(0));

			if (con != null) {
				madgik.analyzer.decomposer.query.Constant exCnst = new madgik.analyzer.decomposer.query.Constant(
						con.getValue());
				exCnst.setArithmetic(isArithmetic(con));
				nuwc.addOperand(exCnst);
			} else {
				Variable v = getVariableFromTerm(f.getTerm(0));
				if (v != null) {
					if (!cols.containsKey(v)) {
						cols.put(v, new Column());
					}
					Column c = cols.get(v);
					nuwc.addOperand(c);
				} else {
					System.out.println("filter not supported!!!");
				}

			}
		}
		if (f.getTerm(1) instanceof Function) {
			nuwc.addOperand(getOperandFromExpession((Function) f.getTerm(1), cols));
		} else {
			Constant con = getConstantFromTerm(f.getTerm(1));
			if (con != null) {
				madgik.analyzer.decomposer.query.Constant exCnst = new madgik.analyzer.decomposer.query.Constant(
						con.getValue());
				exCnst.setArithmetic(isArithmetic(con));
				nuwc.addOperand(exCnst);
			} else {
				Variable v = getVariableFromTerm(f.getTerm(1));
				if (v != null) {
					if (!cols.containsKey(v)) {
						cols.put(v, new Column());
					}
					Column c = cols.get(v);
					nuwc.addOperand(c);

				} else {
					System.out.println("filter not supported!!!");
				}

			}
		}

		return nuwc;
	}

	private Variable getVariableFromTerm(Term term) {
		if (term instanceof Variable) {
			return (Variable) term;
		} else if (term instanceof Function) {
			Function f = (Function) term;
			if (f.isDataTypeFunction()) {
				if (f.getTerm(0) instanceof Variable) {
					return (Variable) f.getTerm(0);
				}
			}
		}
		return null;
	}

	private Constant getConstantFromTerm(Term term) {
		if (term instanceof Constant) {
			return (Constant) term;
		} else if (term instanceof Function) {
			Function f = (Function) term;
			if (f.isDataTypeFunction()) {
				if (f.getTerm(0) instanceof Constant) {
					return (Constant) f.getTerm(0);
				}
			}
		}
		return null;
	}

	private static void getVariablesForTerm(Set<Variable> variables, Term t) {
		if (t instanceof Variable) {
			Variable v = (Variable) t;
			variables.add(v);
		}
		if (t instanceof Function) {
			Function f = (Function) t;

			for (Term ft : f.getTerms()) {
				getVariablesForTerm(variables, ft);
			}
			// System.out.println("function!!!! :"+t);
		}

	}

	private void computeAnonAns(List<Term> variables, Function f) {

		for (int i = 0; i < f.getArity(); i++) {
			Term ft = f.getTerm(i);
			if (ft instanceof Variable) {
				variables.add(ft);
				f.setTerm(i, fac.getVariable("var" + (variables.size() - 1)));
			} else if (ft instanceof Function) {
				computeAnonAns(variables, (Function) ft);
			} /*
				 * else { System.out.println("not function!!!! :" + ft); }
				 */
		}
		// System.out.println("function!!!! :"+t);
	}

}
