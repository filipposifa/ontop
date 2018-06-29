/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madgik.analyzer.decomposer.federation;

import madgik.analyzer.decomposer.ViewInfo;
import madgik.analyzer.decomposer.dag.Node;
import madgik.analyzer.decomposer.dag.NodeHashValues;
import madgik.analyzer.decomposer.dag.NodeOutputs;
import madgik.analyzer.decomposer.dag.PartitionCols;
import madgik.analyzer.decomposer.query.*;
import madgik.analyzer.decomposer.util.Pair;
import madgik.analyzer.decomposer.util.Util;
import madgik.analyzer.estimator.NodeCostEstimator;
import madgik.analyzer.estimator.NodeInfo;
import madgik.analyzer.estimator.NodeSelectivityEstimator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.hash.HashCode;

import java.io.File;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

//import di.madgik.statistics.tools.OverlapAnalyzer;

/**
 * @author dimitris
 */
public class QueryDecomposer {

	private static final Logger log = LoggerFactory.getLogger(QueryDecomposer.class);
	private SQLQuery initialQuery;
	ArrayList<SQLQuery> result;
	private final int noOfparts;
	private Node root;
	private Node union;
	private NodeHashValues hashes;
	private NamesToAliases n2a;
	private boolean projectRefCols;
	private String db;
	private Map<String, Set<String>> refCols;
	// private NodeSelectivityEstimator nse;
	private Map<Node, Double> limits;
	private boolean addAliases;
	private String uniontable = "";
	// private Registry registry;
	private final boolean useGreedy = true;
	private final int mostProminent = 30;
	private boolean onlyLeft = true;
	private int unionnumber;
	private double onlyLeftTime = 0.0;
	private double startexpand;

	public QueryDecomposer(SQLQuery initial) throws ClassNotFoundException {
		this(initial, ".", 1, null);
	}

	public QueryDecomposer(SQLQuery initial, String database, int noOfPartitions, NodeHashValues h) {
		result = new ArrayList<SQLQuery>();
		this.initialQuery = initial;
		this.noOfparts = noOfPartitions;
		// when using cache
		/*
		 * for(PhysicalTable
		 * pt:Registry.getInstance(database).getPhysicalTables()){
		 * registry.put(HashCode.fromBytes(pt.getTable().getHashID()),
		 * pt.getTable()); }
		 */

		
		this.db = database;
		// DBInfoReader.read("./conf/dbinfo.properties");
		union = new Node(Node.AND);
		if (initialQuery.isUnionAll() && !initialQuery.isOutputColumnsDinstict()) {
			union.setObject(("UNIONALL"));
			union.setOperator(Node.UNIONALL);
		} else {
			union.setObject(("UNION"));
			union.setOperator(Node.UNION);
		}

		root = new Node(Node.OR);
		root.setObject(new Table("table" + Util.createUniqueIdString(), null));
		root.addChild(union);
		if (initialQuery.getOrderBy().size() > 0) {
			Node orderBy = new Node(Node.AND, Node.ORDERBY);
			orderBy.addChild(root);
			List<Column> orderCols = new ArrayList<Column>();
			orderBy.setObject(orderCols);
			for (ColumnOrderBy ob : initialQuery.getOrderBy()) {
				orderCols.add(new ColumnOrderBy(null, ob.getName(), ob.isAsc));
			}
			Node orderByParent = new Node(Node.OR);
			orderByParent.addChild(orderBy);
			orderByParent.setObject(new Table("table" + Util.createUniqueIdString(), null));
			root = orderByParent;
		}

		// this.nse = nse;
		hashes = h;
		// hashes.setSelectivityEstimator(nse);
		this.projectRefCols = true;
		this.addAliases = false;
		// this.n2a = new NamesToAliases();
		// this.memo = new Memo();
		this.limits = new HashMap<Node, Double>();
		if (projectRefCols) {
			refCols = new HashMap<String, Set<String>>();
			initial.generateRefCols(refCols);
			/*
			 * for (Table t : initial.getAllReferencedTables()) { Set<String>
			 * colsForT = new HashSet<String>();
			 * if(refCols.containsKey(t.getName())){
			 * colsForT=refCols.get(t.getName()); } for (Column c :
			 * initial.getAllReferencedColumns()) { if
			 * (t.getAlias().equals(c.tableAlias)) { colsForT.add(c.columnName);
			 * } } refCols.put(t.getName(), colsForT); }
			 */
		}
		
		ConjunctiveQueryDecomposer.resetCounter();
	}

	public List<SQLQuery> getSubqueries() throws Exception {
		initialQuery.normalizeWhereConditions();
		if (initialQuery.hasNestedSuqueries()) {
			if (!initialQuery.getUnionqueries().isEmpty()) {
				List<SQLQuery> res = new ArrayList<SQLQuery>();
				SQLQuery finalUnion = new SQLQuery();
				for (SQLQuery u : initialQuery.getUnionqueries()) {
					QueryDecomposer d = new QueryDecomposer(u, this.db, this.noOfparts, hashes);
					for (SQLQuery q2 : d.getSubqueries()) {
						res.add(q2);
						if (!q2.isTemporary()) {
							finalUnion.getUnionqueries().add(q2);
							q2.setTemporary(true);
						}
					}
				}
				finalUnion.setTemporary(false);
				res.add(finalUnion);
				return res;
			}
			initialQuery.setTemporary(false);
			decomposeSubquery(initialQuery);
		} else {
			List<List<String>> aliases = initialQuery.getListOfAliases(n2a, true);
			// for(List<String> aliases:initialQuery.getListOfAliases(n2a)){
			List<String> firstAliases = aliases.get(0);
			initialQuery.renameTables(firstAliases);
			ConjunctiveQueryDecomposer d = new ConjunctiveQueryDecomposer(initialQuery, true);
			d.setViewInfos(viewinfos);
			Node topSubquery = d.addCQToDAG(union, hashes);
			// String u=union.dotPrint();
			if (addAliases) {
				for (int i = 1; i < aliases.size(); i++) {
					List<String> nextAliases = aliases.get(i);
					topSubquery.addChild(addAliasesToDAG(topSubquery, firstAliases, nextAliases, hashes));
				}
			}

		}

		// root.setIsCentralised(union.isCentralised());
		// root.setPartitionedOn(union.isPartitionedOn());
		List<SQLQuery> res = new ArrayList<SQLQuery>(); 
			//	getPlan();
		
		
	
		return res;
	}

	public List<SQLQuery> getPlan() {
		// String dot0 = root.dotPrint();
		// StringBuilder a = root.dotPrint();
		// System.out.println(a.toString());
		if (projectRefCols) {
			createProjections(root);
		}

		// long b=System.currentTimeMillis();
		unionnumber = 0;
	
		return null;
	}

	private void decomposeSubquery(SQLQuery s) throws Exception {
		// s.normalizeWhereConditions();
		for (SQLQuery u : s.getUnionqueries()) {

			// push limit
			if (s.getLimit() > -1) {
				if (u.getLimit() == -1) {
					u.setLimit(s.getLimit());
				} else {
					if (s.getLimit() < u.getLimit()) {
						u.setLimit(s.getLimit());
					}
				}
			}
			u.normalizeWhereConditions();
			if (u.hasNestedSuqueries()) {
				decomposeSubquery(u);
			} else {

				/*
				 * for (List<String> aliases : u.getListOfAliases(n2a)) {
				 * u.renameTables(aliases); ConjunctiveQueryDecomposer d = new
				 * ConjunctiveQueryDecomposer(u, true,
				 * addNotNulls); d.addCQToDAG(union, hashes); }
				 */

				List<List<String>> aliases = u.getListOfAliases(n2a, true);
				// for(List<String>
				// aliases:initialQuery.getListOfAliases(n2a)){
				List<String> firstAliases = aliases.get(0);
				u.renameTables(firstAliases);
				ConjunctiveQueryDecomposer d = new ConjunctiveQueryDecomposer(u, true);
				d.setViewInfos(viewinfos);
				Node topSubquery = d.addCQToDAG(union, hashes);
				// String u=union.dotPrint();
				if (addAliases) {
					for (int i = 1; i < aliases.size(); i++) {
						List<String> nextAliases = aliases.get(i);
						topSubquery.addChild(addAliasesToDAG(topSubquery, firstAliases, nextAliases, hashes));
					}
				}

			}

		}

		if (s.isSelectAll() && s.getBinaryWhereConditions().isEmpty() && s.getUnaryWhereConditions().isEmpty()
				&& s.getGroupBy().isEmpty() && s.getOrderBy().isEmpty() && s.getNestedSelectSubqueries().size() == 1
				&& !s.getNestedSelectSubqueries().keySet().iterator().next().hasNestedSuqueries()) {
			SQLQuery nested = s.getNestedSubqueries().iterator().next();
			// push limit
			if (s.getLimit() > -1) {
				if (nested.getLimit() == -1) {
					nested.setLimit(s.getLimit());
				} else {
					if (s.getLimit() < nested.getLimit()) {
						nested.setLimit(s.getLimit());
					}
				}
			}
		}
		// Collection<SQLQuery> nestedSubs=s.getNestedSubqueries();
		if (!s.getNestedSubqueries().isEmpty()) {
			for (SQLQuery nested : s.getNestedSubqueries()) {
				nested.normalizeWhereConditions();
				if (nested.hasNestedSuqueries()) {
					decomposeSubquery(nested);
				} else {

					// rename outputs
					if (!(s.isSelectAll() && s.getBinaryWhereConditions().isEmpty()
							&& s.getUnaryWhereConditions().isEmpty() && s.getNestedSelectSubqueries().size() == 1
							&& !s.getNestedSelectSubqueries().keySet().iterator().next().hasNestedSuqueries())) {
						// rename outputs
						String alias = s.getNestedSubqueryAlias(nested);
						for (Output o : nested.getOutputs()) {
							String name = o.getOutputName();
							o.setOutputName(alias + "_" + name);
						}
					}

					Node nestedNodeOr = new Node(Node.AND, Node.NESTED);
					Node nestedNode = new Node(Node.OR);
					nestedNode.setObject(new Table("table" + Util.createUniqueIdString().toString(), null));
					nestedNode.addChild(nestedNodeOr);
					nestedNodeOr.setObject(s.getNestedSubqueryAlias(nested));
					nestedNode.addDescendantBaseTable(s.getNestedSubqueryAlias(nested));
					/*
					 * for (List<String> aliases : nested.getListOfAliases(n2a))
					 * { nested.renameTables(aliases);
					 * ConjunctiveQueryDecomposer d = new
					 * ConjunctiveQueryDecomposer(nested, true,
					 * addNotNulls); d.addCQToDAG(union, hashes); }
					 */
					List<List<String>> aliases = nested.getListOfAliases(n2a, true);
					// for(List<String>
					// aliases:initialQuery.getListOfAliases(n2a)){
					List<String> firstAliases = aliases.get(0);
					nested.renameTables(firstAliases);
					ConjunctiveQueryDecomposer d = new ConjunctiveQueryDecomposer(nested, true);
					d.setViewInfos(viewinfos);
					Node topSubquery = d.addCQToDAG(nestedNodeOr, hashes);
					// String u=union.dotPrint();
					if (addAliases) {
						for (int i = 1; i < aliases.size(); i++) {
							List<String> nextAliases = aliases.get(i);
							topSubquery.addChild(addAliasesToDAG(topSubquery, firstAliases, nextAliases, hashes));
						}
					}

					nested.putNestedNode(nestedNode);
					// nestedNode.removeAllChildren();

				}
			}

			// if s is an "empty" select * do not add it and rename the nested
			// with the s table name??
			if (s.isSelectAll() && s.getBinaryWhereConditions().isEmpty() && s.getUnaryWhereConditions().isEmpty()
					&& s.getGroupBy().isEmpty() && s.getOrderBy().isEmpty() && s.getNestedSelectSubqueries().size() == 1
					&& !s.getNestedSelectSubqueries().keySet().iterator().next().hasNestedSuqueries()) {
				union.addChild(s.getNestedSelectSubqueries().keySet().iterator().next().getNestedNode());
			} else {
				// decompose s changing the nested from tables

				List<List<String>> aliases = s.getListOfAliases(n2a, true);
				// for(List<String>
				// aliases:initialQuery.getListOfAliases(n2a)){
				List<String> firstAliases = new ArrayList<String>();
				if (!aliases.isEmpty()) {
					firstAliases = aliases.get(0);
					s.renameTables(firstAliases);
				}
				ConjunctiveQueryDecomposer d = new ConjunctiveQueryDecomposer(s, true);
				d.setViewInfos(viewinfos);
				Node topSubquery = d.addCQToDAG(union, hashes);
				// String u=union.dotPrint();
				if (addAliases) {
					for (int i = 1; i < aliases.size(); i++) {
						List<String> nextAliases = aliases.get(i);
						topSubquery.addChild(addAliasesToDAG(topSubquery, firstAliases, nextAliases, hashes));
					}
				}

			}

		}

	}

	

	

	
	private Node addAliasesToDAG(Node parent, List<String> firstAliases, List<String> nextAliases, NodeHashValues h) {
		// for(int i=0;i<parent.getChildren().size();i++){
		Node opNode = parent.getChildAt(0);

		List<Node> newChidlren = new ArrayList<Node>();
		for (Node inpEq : opNode.getChildren()) {
			Table t = (Table) inpEq.getObject();
			if (!t.getName().startsWith("table")) {
				Node newBaseTable = new Node(Node.OR);
				Table t2 = new Table(t.getName(), nextAliases.get(firstAliases.indexOf(t.getAlias())));
				newBaseTable.setObject(t2);
				if (!h.containsKey(newBaseTable.getHashId())) {
					h.put(newBaseTable.getHashId(), newBaseTable);
					newBaseTable.addDescendantBaseTable(t2.getAlias());
				}
				newChidlren.add(h.get(newBaseTable.getHashId()));
			} else {
				Node newEqNode = new Node(Node.OR);
				newEqNode.setObject(new Table("table" + Util.createUniqueIdString(), null));
				newEqNode.addChild(addAliasesToDAG(inpEq, firstAliases, nextAliases, h));
				if (!h.containsKey(newEqNode.getHashId())) {
					h.put(newEqNode.getHashId(), newEqNode);
					for (Node n : newEqNode.getChildren()) {
						newEqNode.addAllDescendantBaseTables(n.getDescendantBaseTables());
					}
				} else {
					newEqNode = h.get(newEqNode.getHashId());
					// System.out.println("what?");
				}
				newChidlren.add(newEqNode);
			}
		}

		Operand op = (Operand) opNode.getObject();
		Node newOpNode = new Node(Node.AND, opNode.getOpCode());
		for (Node c : newChidlren) {
			newOpNode.addChild(c);
			newOpNode.addAllDescendantBaseTables(c.getDescendantBaseTables());
		}
		// newOpNode.addChild(newEqNode);
		Operand cloned = null;
		try {
			cloned = op.clone();
		} catch (CloneNotSupportedException ex) {
			java.util.logging.Logger.getLogger(QueryDecomposer.class.getName()).log(Level.SEVERE, null, ex);
		}
		newOpNode.setObject(cloned);
		for (Column c : cloned.getAllColumnRefs()) {
			for (int j = 0; j < firstAliases.size(); j++) {
				if (c.getAlias().equals(firstAliases.get(j))) {
					c.setAlias(nextAliases.get(j));
					break;
				}
			}
		}
		if (h.containsKey(newOpNode.getHashId())) {
			return h.get(newOpNode.getHashId());
		} else {
			h.put(newOpNode.getHashId(), newOpNode);

			return newOpNode;
		}
		// }
	}

	int total = 0;
	int pruned = 0;
	private Map<Set<String>, Set<ViewInfo>> viewinfos;

	
	private void createProjections(Node e) {
		for (String t : this.refCols.keySet()) {
			for (String alias : n2a.getAllAliasesForBaseTable(t)) {
				Node table = new Node(Node.OR);
				table.setObject(new Table(t, alias));
				Node tableInHashes = hashes.get(table.getHashId());
				if (tableInHashes == null) {
					// System.out.println("not found");
				} else {
					Node project;
					Node orNode;
					if (tableInHashes.getParents().size() == 1
							&& tableInHashes.getFirstParent().getOpCode() == Node.BASEPROJECT) {
						project = tableInHashes.getFirstParent();
						orNode = project.getFirstParent();
						Projection prj = (Projection) project.getObject();
						hashes.remove(project.getHashId());
						for (String c : refCols.get(t)) {
							Column toAdd = new Column(alias, c);
							if (!prj.getAllColumnRefs().contains(toAdd))
								prj.addOperand(new Output(alias + "_" + c, toAdd));
						}
						this.hashes.put(project.getHashId(), project);
						this.hashes.put(orNode.getHashId(), orNode);

					} else {
						orNode = new Node(Node.OR);
						orNode.setObject(new Table("table" + Util.createUniqueIdString(), null));
						project = new Node(Node.AND, Node.BASEPROJECT);
						orNode.addChild(project);
						Projection prj = new Projection();
						for (String c : refCols.get(t)) {
							prj.addOperand(new Output(alias + "_" + c, new Column(alias, c)));
						}
						project.setObject(prj);
						Set<Node> toRecompute = new HashSet<Node>();
						while (!tableInHashes.getParents().isEmpty()) {
							Node p = tableInHashes.getFirstParent();
							tableInHashes.getParents().remove(0);
							int childNo = p.getChildren().indexOf(tableInHashes);
							this.hashes.remove(p.getHashId());
							p.removeChild(tableInHashes);
							p.addChildAt(orNode, childNo);
							toRecompute.add(p);
							// this.hashes.put(p.getHashId(), p);
						}
						project.addChild(tableInHashes);
						this.hashes.put(project.getHashId(), project);
						this.hashes.put(orNode.getHashId(), orNode);
						for (Node r : toRecompute) {
							this.hashes.put(r.getHashId(), r);
							// recompute parents?

							setParentsNeedRecompute(r);
						}
					}

					project.addDescendantBaseTable(alias);
					orNode.addDescendantBaseTable(alias);

				}
			}
		}
	}

	private void setParentsNeedRecompute(Node r) {
		for (Node p : r.getParents()) {
			hashes.remove(p.getHashId());
			p.computeHashID();
			hashes.put(p.getHashId(), p);
			setParentsNeedRecompute(p);
		}

	}

	

	public NamesToAliases getN2a() {
		return n2a;
	}

	public void setN2a(NamesToAliases n2a) {
		this.n2a = n2a;
	}

	public String getDotPrint() {
		return root.dotPrint().toString();
	}

	public void setViewInfos(Map<Set<String>, Set<ViewInfo>> viewinfos2) {
		this.viewinfos = viewinfos2;

	}
	
	public Node getSelectivityForTopNode(Set<NodeOutputs> candidatesForElmination){
		initialQuery.normalizeWhereConditions();
		if(!initialQuery.getUnionqueries().isEmpty()){
			System.out.println("query with more than 1 union");
		}
		ConjunctiveQueryDecomposer d = new ConjunctiveQueryDecomposer(initialQuery, true);
		d.setCandidatesForElmination(candidatesForElmination);
		Node topSubquery=null;
		try {
			 topSubquery = d.addCQToDAG(union, hashes);
		} catch (CloneNotSupportedException e) {
			return null;
		}
		return topSubquery;
	}
	
}