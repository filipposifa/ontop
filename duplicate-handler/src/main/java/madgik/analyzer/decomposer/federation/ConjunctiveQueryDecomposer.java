/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madgik.analyzer.decomposer.federation;

import madgik.analyzer.decomposer.ViewInfo;
import madgik.analyzer.decomposer.dag.Node;
import madgik.analyzer.decomposer.dag.NodeHashValues;
import madgik.analyzer.decomposer.dag.NodeOutputs;
import madgik.analyzer.decomposer.query.*;
import madgik.analyzer.decomposer.util.Util;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.hash.HashCode;

/**
 * @author dimitris
 */
public class ConjunctiveQueryDecomposer {

	private SQLQuery initialQuery;
	private List<NonUnaryWhereCondition> remainingWhereConditions;
	private ColumnsToTableNames<Node> c2n;
	HashSet<Join> lj;
	private static final boolean useGreedy = true;
	private Set<NodeOutputs> candidatesForElmination;
	private static int counter = 0;
	private static boolean checkViews = true;
	Map<Set<String>, Set<ViewInfo>> viewinfos = null;
	// private boolean mergeSelections;
	// private static int counter=0;
	private static final Logger log = LoggerFactory.getLogger(ConjunctiveQueryDecomposer.class);

	public ConjunctiveQueryDecomposer(SQLQuery initial, boolean centralized) {
		this.initialQuery = initial;
		this.lj = new HashSet<Join>();
		this.remainingWhereConditions = new ArrayList<NonUnaryWhereCondition>();
		
		counter++;
	}

	public Node addCQToDAG(Node root, NodeHashValues hashes) throws CloneNotSupportedException {

		if (initialQuery.getJoinNode() != null) {
			Node tempParent = makeNodeFinal(initialQuery.getJoinNode(), hashes);
			root.addChild(tempParent);
			if (useGreedy) {
				tempParent.addUnionToDesc(counter);
			}
			// String a=tempParent.dotPrint();
			return tempParent;
		}
		
		//add redundant not nulls
				for (int i = 0; i < this.initialQuery.getUnaryWhereConditions().size(); i++) {
					UnaryWhereCondition uwc = this.initialQuery.getUnaryWhereConditions().get(i);
					if (uwc.getNot() && uwc.getType() == UnaryWhereCondition.IS_NULL) {
						Column c = uwc.getAllColumnRefs().get(0);
						for (NonUnaryWhereCondition nuwc : this.initialQuery.getBinaryWhereConditions()) {
							if (nuwc.getOperator().equals("=")) {
								Column other = null;
								if (nuwc.getLeftOp().equals(c) && nuwc.getRightOp() instanceof Column) {
									other = (Column) nuwc.getRightOp();
								}
								if (nuwc.getRightOp().equals(c) && nuwc.getLeftOp() instanceof Column) {
									other = (Column) nuwc.getLeftOp();
								}
								if (other != null) {
									try {
										UnaryWhereCondition toAdd = new UnaryWhereCondition(UnaryWhereCondition.IS_NULL,
												other.clone(), true);
										if (!this.initialQuery.getUnaryWhereConditions().contains(toAdd)) {
											this.initialQuery.getUnaryWhereConditions().add(toAdd);
										}
									} catch (CloneNotSupportedException ex) {
										log.error(ex.getMessage());
									}
								}
							}
						}
					}
				}

		// columnsToSubqueries tracks from which temporary table we take each
		// column of the initial query
		c2n = new ColumnsToTableNames<Node>();

		// else we have only one DB, for each table make a subquery
		// else {
		Node last = null;

		boolean checkToRemoveReduntantJoins = false;
		if (checkToRemoveReduntantJoins && root.getOpCode() == Node.UNION) {
			Map<String, Boolean> tbleHashOnlyOneCol = new HashMap<String, Boolean>();
			for (Column c : initialQuery.getAllColumns()) {
				if (tbleHashOnlyOneCol.containsKey(c.getAlias())) {
					tbleHashOnlyOneCol.put(c.getAlias(), false);
				} else {
					tbleHashOnlyOneCol.put(c.getAlias(), true);
				}
			}
			for (String s : tbleHashOnlyOneCol.keySet()) {
				if (tbleHashOnlyOneCol.get(s)) {
					for (NonUnaryWhereCondition join : initialQuery.getBinaryWhereConditions()) {
						if (join.getLeftOp() instanceof Column && join.getRightOp() instanceof Column
								&& join.getOperator().equals("=")) {
							Column left = (Column) join.getLeftOp();
							Column right = (Column) join.getRightOp();
							if (left.getName().equals(right.getName())) {
								if (left.getAlias().equals(s)) {

								}
								if (right.getAlias().equals(s)) {

								}
							}
						}
					}
				}
			}
		}
		
		if (checkViews && viewinfos != null) {
			int tableCounter = 0;
			if (this.initialQuery.getGroupBy().isEmpty() && this.initialQuery.getOrderBy().isEmpty()) {
				for (int i = 0; i < this.initialQuery.getInputTables().size(); i++) {
					Table t = this.initialQuery.getInputTables().get(i);
					if (viewinfos.containsKey(t.getName())) {
						for (ViewInfo vi : viewinfos.get(t.getName())) {
							// NonUnaryWhereCondition toChange=null;
							boolean replace = true;
							// int noOfContainedConditions=0;
							Set<Operand> toDelete = new HashSet<Operand>();
							if (vi.isOr()) {
								for (UnaryWhereCondition uwc : this.initialQuery.getUnaryWhereConditions()) {
									if (!uwc.getAllColumnRefs().isEmpty()) {
										Column c = uwc.getAllColumnRefs().get(0);
										if (c.getAlias().equals(t.getAlias())) {
											if (!c.getName().equals(vi.getOutput())) {
												replace = false;
												break;
											}
										}
									}
								}
								for (NonUnaryWhereCondition nuwc : this.initialQuery.getBinaryWhereConditions()) {
									if (!replace) {
										break;
									}
									boolean containsAll = true;
									boolean containsOne = false;
									boolean containsOutput = true;
									for (Column c : nuwc.getAllColumnRefs()) {
										if (c.getAlias().equals(t.getAlias())) {
											containsOne = true;
											if (!c.getName().equals(vi.getOutput())) {
												containsOutput = false;
											}
										} else {
											containsAll = false;
										}
									}
									if (containsAll) {
										NonUnaryWhereCondition cloned = nuwc.clone();
										for (Column c : nuwc.getAllColumnRefs()) {
											cloned.changeColumn(c, new Column(null, c.getName()));
										}
										Set<NonUnaryWhereCondition> ors = cloned.getOrConditions();
										if (ors == null) {
											replace = false;
											break;
										}

										if (!vi.orsAreEqual(ors)) {
											replace = false;
											break;
										} else {
											toDelete.add(nuwc);
										}
									} else if (containsOne) {
										if (!containsOutput) {
											// also contains some other col from
											// initial table
											replace = false;
											break;
										} else {
											// toChange=nuwc;
										}
									}

								}

							} else {

								for (UnaryWhereCondition uwc : this.initialQuery.getUnaryWhereConditions()) {
									if (!uwc.getAllColumnRefs().isEmpty()) {
										Column c = uwc.getAllColumnRefs().get(0);
										if (c.getAlias().equals(t.getAlias())) {
											Column clonedC = new Column(t.getName(), c.getName());
											UnaryWhereCondition cloned = uwc.clone();
											cloned.changeColumn(c, clonedC);
											if (!vi.getOutput().contains(clonedC.toString())
													&& !vi.containsCondition(cloned)) {
												replace = false;
												break;
											} else {
												if (vi.containsCondition(cloned))
													toDelete.add(uwc);
											}
										}
									}
								}
								for (NonUnaryWhereCondition nuwc : this.initialQuery.getBinaryWhereConditions()) {
									if (!replace) {
										break;
									}
									boolean containsAll = true;
									boolean containsOne = false;
									boolean containsOutput = true;
									for (Column c : nuwc.getAllColumnRefs()) {
										if (c.getAlias().equals(t.getAlias())) {
											containsOne = true;
											Column clonedC = new Column(t.getName(), c.getName());
											if (!vi.getOutput().contains(clonedC.toString())) {
												containsOutput = false;
											}
										} else {
											containsAll = false;
										}
									}
									if (containsAll) {
										NonUnaryWhereCondition cloned = nuwc.clone();
										for (Column c : nuwc.getAllColumnRefs()) {
											cloned.changeColumn(c, new Column(t.getName(), c.getName()));
										}
										if (!vi.containsCondition(cloned)) {
											if (!containsOutput) {
												// also contains some other col
												// from
												// initial table
												replace = false;
												break;
											}
											// replace = false;
											// break;
										} else {
											System.out.println("YYYYYYY" + nuwc);
											toDelete.add(nuwc);
										}
									} else if (containsOne) {
										if (!containsOutput) {
											// also contains some other col from
											// initial table
											replace = false;
											break;
										} else {
											// toChange=nuwc;
										}
									}

								}
							}
							if (replace && toDelete.size() == vi.getNumberOfConditions()) {
								this.initialQuery.getInputTables().remove(i);
								this.initialQuery.getInputTables().add(i,
										new Table(vi.getTableName().toLowerCase(), vi.getTableName() + tableCounter));
								for (Operand o : toDelete) {
									this.initialQuery.getBinaryWhereConditions().remove(o);
									this.initialQuery.getUnaryWhereConditions().remove(o);
								}
								System.out.println("replacing...");
								for (NonUnaryWhereCondition nuwc : this.initialQuery.getBinaryWhereConditions()) {
									for (Column c : nuwc.getAllColumnRefs()) {
										if (c.getAlias().equals(t.getAlias())) {
											c.setAlias(vi.getTableName() + tableCounter);
										}
									}
								}
								for (UnaryWhereCondition uwc : this.initialQuery.getUnaryWhereConditions()) {
									for (Column c : uwc.getAllColumnRefs()) {
										if (c.getAlias().equals(t.getAlias())) {
											c.setAlias(vi.getTableName() + tableCounter);
										}
									}

								}
								tableCounter++;
							}
						}
					}
				}
			}
		}
		for (NonUnaryWhereCondition bwc : initialQuery.getBinaryWhereConditions()) {
			this.remainingWhereConditions.add(bwc);
		}
		for (Table t : this.initialQuery.getInputTables()) {
			Node table = new Node(Node.OR);
			table.addDescendantBaseTable(t.getAlias());

			table.setObject(t);
			if (!hashes.containsKey(table.getHashId())) {

				// table.setHashID(Objects.hash(t.getName()));
				// table.setIsBaseTable(true);
				hashes.put(table.getHashId(), table);
			} else {
				table = hashes.get(table.getHashId());
			}
			last = table;
			
			SQLQuery s = createSubqueriesForTable(t.getAlias(), "");

			Node selection = new Node(Node.AND, Node.SELECT);
			Selection sel = new Selection();
			for (UnaryWhereCondition uwc : s.getUnaryWhereConditions()) {

				sel.addOperand(uwc);
			}
			for (NonUnaryWhereCondition bwc : s.getBinaryWhereConditions()) {

				sel.addOperand(bwc);
			}
			if (sel.getOperands().size() > 0) {

				selection.addChild(table);
				// selection.setPartitionRecord(table.getPartitionRecord());
				// selection.setLastPartition(table.getLastPartition());
				selection.setObject(sel);
				if (!hashes.containsKey(selection.getHashId())) {
					hashes.put(selection.getHashId(), selection);
					selection.addDescendantBaseTable(t.getAlias());
					// selection.addChild(table);

				} else {
					selection = hashes.get(selection.getHashId());
				}

				Node selTable = new Node(Node.OR);

				Table selt = new Table("table" + Util.createUniqueIdString(), null);
				selTable.setObject(selt);
				selTable.addChild(selection);

				if (!hashes.containsKey(selTable.getHashId())) {
					selTable.addDescendantBaseTable(t.getAlias());
					hashes.put(selTable.getHashId(), selTable);
					// selection.addChild(table);

				} else {
					selTable = hashes.get(selTable.getHashId());

				}
				last = selTable;

				for (Column cl : s.getAllColumns()) {
					c2n.putColumnInTable(cl, selTable);
					// add projections

				}
			} else {
				for (Column cl : s.getAllColumns()) {
					c2n.putColumnInTable(cl, table);
					// add projections

				}
			}
			if(!t.hasDtr1FromKeys()){
				NodeOutputs no=new NodeOutputs(last.getHashId(), s);
				candidatesForElmination.add(no);
			}

		}

		for (SQLQuery nested : this.initialQuery.getNestedSelectSubqueries().keySet()) {
			String alias = this.initialQuery.getNestedSubqueryAlias(nested);
			Node table = nested.getNestedNode();
			last = table;
			
			SQLQuery s = createSubqueriesForTable(alias, "");

			Node selection = new Node(Node.AND, Node.SELECT);
			Selection sel = new Selection();
			for (UnaryWhereCondition uwc : s.getUnaryWhereConditions()) {

				sel.addOperand(uwc);
			}
			for (NonUnaryWhereCondition bwc : s.getBinaryWhereConditions()) {

				sel.addOperand(bwc);
			}

			if (sel.getOperands().size() > 0) {

				selection.addChild(table);
				// selection.setPartitionRecord(table.getPartitionRecord());
				// selection.setLastPartition(table.getLastPartition());
				selection.setObject(sel);
				if (!hashes.containsKey(selection.getHashId())) {
					hashes.put(selection.getHashId(), selection);
					selection.addDescendantBaseTable(alias);
					// selection.addChild(table);

				} else {
					selection = hashes.get(selection.getHashId());
				}

				Node selTable = new Node(Node.OR);

				Table selt = new Table("table" + Util.createUniqueIdString(), null);
				selTable.setObject(selt);
				selTable.addChild(selection);
				selTable.setPartitionRecord(selection.getPartitionRecord());
				// selTable.setLastPartition(selection.getLastPartition());
				// selTable.setIsCentralised(table.isCentralised());
				// selTable.setPartitionedOn(table.isPartitionedOn());
				if (!hashes.containsKey(selTable.getHashId())) {
					selTable.addDescendantBaseTable(alias);
					hashes.put(selTable.getHashId(), selTable);
					// selection.addChild(table);

				} else {
					selTable = hashes.get(selTable.getHashId());
				}
				last = selTable;

				for (Column cl : s.getAllColumns()) {
					c2n.putColumnInTable(cl, selTable);
					// add projections

				}
			} else {
				for (Column cl : s.getAllColumns()) {
					c2n.putColumnInTable(cl, table);
					// add projections

				}
			}
		}

		List<Set<String>> joinSets = new ArrayList<Set<String>>();
		for (Table t : this.getInputTables()) {
			Set<String> tableSet = new HashSet<String>();
			tableSet.add(t.getAlias());
			joinSets.add(tableSet);
		}
		for (String n : this.initialQuery.getNestedSelectSubqueries().values()) {
			Set<String> tableSet = new HashSet<String>();
			tableSet.add(n);
			joinSets.add(tableSet);
		}
		if (remainingWhereConditions.isEmpty()) {

			if (joinSets.size() > 1) {
				NonUnaryWhereCondition toAdd = addConditionsFromConstants();
				if (toAdd == null) {
					log.error("Input query contains cartesian product. Currently not supported");

				} else {
					this.initialQuery.getBinaryWhereConditions().add(toAdd);
					remainingWhereConditions.add(toAdd);
				}
			} else {
				if (last == null) {
					return root;
				}
				Node tempParent = makeNodeFinal(last, hashes);
				root.addChild(tempParent);
				if (useGreedy) {
					tempParent.addUnionToDesc(counter);
				}
				return tempParent;
			}

		}

		while (!this.remainingWhereConditions.isEmpty()) {
			NonUnaryWhereCondition bwc = this.remainingWhereConditions.get(0);
			mergeJoinSets(joinSets, bwc);
			Node join = new Node(Node.AND, Node.JOIN);
			join.setObject(bwc);

			if (bwc.getLeftOp() instanceof Column && bwc.getRightOp() instanceof Column) {
				Node lchild = c2n.getTablenameForColumn((Column) bwc.getLeftOp());
				join.addChild(lchild);
				join.addAllDescendantBaseTables(lchild.getDescendantBaseTables());

				Node rchild = c2n.getTablenameForColumn((Column) bwc.getRightOp());
				join.addChild(rchild);
				join.addAllDescendantBaseTables(rchild.getDescendantBaseTables());

			} else {

				log.error(bwc.toString() + ":operand not Column");

			}
			HashCode hc = join.getHashId();
			if (!hashes.containsKey(hc)) {
				hashes.put(join.getHashId(), join);
			} else {
				join.removeAllChildren();
				join = hashes.get(hc);
			}

			Node table = new Node(Node.OR);
			Table t = new Table("table" + Util.createUniqueIdString(), null);
			table.setObject(t);
			table.addChild(join);
			// table.setIsCentralised(tableIsCentralised);
			hc = table.getHashId();
			if (!hashes.containsKey(hc)) {
				hashes.put(table.getHashId(), table);
				table.addAllDescendantBaseTables(join.getDescendantBaseTables());
			} else {
				table.removeAllChildren();
				table = hashes.get(hc);
			}

			// change columns according to columnsToSubqueries
			// ConcurrentHashMap<Column, Column> changePairs = new
			// ConcurrentHashMap();

			// for (Node toChange : join.getChildren()) {
			for(Column c:bwc.getLeftOp().getAllColumnRefs()){
				c2n.changeColumns(c2n.getTablenameForColumn(c), table);
			}
			for(Column c:bwc.getRightOp().getAllColumnRefs()){
				c2n.changeColumns(c2n.getTablenameForColumn(c), table);
			}
			//c2n.changeColumns(c2n.getTablenameForColumn(bwc.getLeftOp().get, table);
			//c2n.changeColumns(c2n.getTablenameForColumn((Column) bwc.getRightOp()), table);
			// }

			if (remainingWhereConditions.size() == 1) {
				if (joinSets.size() > 1) {
					NonUnaryWhereCondition toAdd = addConditionsFromConstants();
					if (toAdd == null) {
						log.error("Input query contains cartesian product. Currently not supported");

					} else {
						this.initialQuery.getBinaryWhereConditions().add(toAdd);
						remainingWhereConditions.add(toAdd);
					}
				} else {
					Node tempParent = makeNodeFinal(table, hashes);
					root.addChild(tempParent);
					if (useGreedy) {
						tempParent.addUnionToDesc(counter);
					}
					return tempParent;
				}

			}

			this.remainingWhereConditions.remove(0);

		}

		return null;
		// return result;
	}

	private NonUnaryWhereCondition addConditionsFromConstants() {
		NonUnaryWhereCondition result = null;
		for (int i = 0; i < this.initialQuery.getBinaryWhereConditions().size(); i++) {
			NonUnaryWhereCondition nuwc = this.initialQuery.getBinaryWhereConditions().get(i);
			if (nuwc.getOperator().equals("=")
					&& (nuwc.getLeftOp() instanceof Constant || nuwc.getRightOp() instanceof Constant)) {
				Constant c = nuwc.getLeftOp() instanceof Constant ? (Constant) nuwc.getLeftOp()
						: (Constant) nuwc.getRightOp();
				Operand o = nuwc.getLeftOp();
				if (o.equals(c)) {
					o = nuwc.getRightOp();
				}
				for (int j = i + 1; j < this.initialQuery.getBinaryWhereConditions().size(); j++) {
					NonUnaryWhereCondition nuwc2 = this.initialQuery.getBinaryWhereConditions().get(j);
					if (nuwc2.getOperator().equals("=")
							&& (nuwc2.getLeftOp().equals(c) || nuwc2.getRightOp().equals(c))) {
						Operand o2 = nuwc2.getLeftOp();
						if (o2.equals(c)) {
							o2 = nuwc2.getRightOp();
						}
						result = new NonUnaryWhereCondition();
						result.addOperand(o);
						result.addOperand(o2);
						result.setOperator("=");
						NonUnaryWhereCondition reverse = new NonUnaryWhereCondition();
						reverse.addOperand(o2);
						reverse.addOperand(o);
						reverse.setOperator("=");
						if (!this.initialQuery.getBinaryWhereConditions().contains(result)
								&& !this.initialQuery.getBinaryWhereConditions().contains(reverse)) {
							return result;
						}
					}
				}
			}
		}
		return null;
	}

	private void mergeJoinSets(List<Set<String>> joinSets, NonUnaryWhereCondition bwc) {
		String l = bwc.getLeftOp().getAllColumnRefs().get(0).getAlias();
		String r = bwc.getRightOp().getAllColumnRefs().get(0).getAlias();
		;
		for (int i = 0; i < joinSets.size(); i++) {
			Set<String> tables = joinSets.get(i);
			if (tables.contains(l) && tables.contains(r)) {
				return;
			} else if (tables.contains(r)) {
				for (int j = 0; j < joinSets.size(); j++) {
					Set<String> tables2 = joinSets.get(j);
					if (tables2.contains(l)) {
						for (String t : tables2) {
							tables.add(t);
						}
						joinSets.remove(tables2);
						return;
					}
				}
			} else if (tables.contains(l)) {
				for (int j = 0; j < joinSets.size(); j++) {
					Set<String> tables2 = joinSets.get(j);
					if (tables2.contains(r)) {
						for (String t : tables2) {
							tables.add(t);
						}
						joinSets.remove(tables2);
						return;
					}
				}
			}
		}
	}




	private SQLQuery createSubqueriesForTable(String tableAlias, String dbID) {
		SQLQuery sub = new SQLQuery();

	

		for (Table t : initialQuery.getInputTables()) {
			if (tableAlias.equals(t.getAlias())) {
				Table t2 = new Table();
				t2.setAlias(t.getAlias());
				t2.setName(t.getName());
				
				sub.getInputTables().add(t2);
				break;
			}
		}

		for (UnaryWhereCondition uwc : initialQuery.getUnaryWhereConditions()) {
			// if filter is on table of the DB, add filter to the subquery
			if (tableAlias.equals(uwc.getAllColumnRefs().get(0).getAlias())) {
				sub.getUnaryWhereConditions().add(uwc);
				// add temporary column if not exists
				//sub.addOutputColumnIfNotExists(uwc.getAllColumnRefs().get(0).getAlias(),
						//uwc.getAllColumnRefs().get(0).getName());

			}
		}

		for (NonUnaryWhereCondition bwc : initialQuery.getBinaryWhereConditions()) {
			boolean allTablesBelong = true;

			// add temporary column if not exists
			for (Column c : bwc.getAllColumnRefs()) {

				if (tableAlias.equals(c.getAlias())) {
					//sub.addOutputColumnIfNotExists(c.getAlias(), c.getName());

				} else {
					allTablesBelong = false;
					break;
				}
			}
			// if both left and right tables belong to DB add the join to
			// suquery
			if (allTablesBelong) {
				sub.getBinaryWhereConditions().add(bwc);
				this.remainingWhereConditions.remove(bwc);
			}
		}
		if (this.remainingWhereConditions.isEmpty()) {
			// we only have this subquery, add udf, groupby, orderby, limit and
			// rename output columns
			for (Output o : this.initialQuery.getOutputs()) {
				if (!(o.getObject() instanceof Column)) {
					sub.getOutputs().add(o);
				}
			}

			for (Column c : this.initialQuery.getGroupBy()) {
				sub.getGroupBy().add(c);
			}
			for (ColumnOrderBy c : this.initialQuery.getOrderBy()) {
				sub.getOrderBy().add(c);
			}
			sub.setLimit(this.initialQuery.getLimit());
			sub.setTemporary(false);

			sub.getOutputs().clear();
			for (Output initialOut : this.initialQuery.getOutputs()) {
				sub.getOutputs().add(initialOut);
			}
		}

		for (Column c : initialQuery.getAllOutputColumns()) {
			if (tableAlias.equals(c.getAlias())) {
				sub.addOutputColumnIfNotExists(c.getAlias(), c.getName());
			}
		}
		for(NonUnaryWhereCondition nuwc:this.remainingWhereConditions){
			for(Column c:nuwc.getAllColumnRefs()){
				if (tableAlias.equals(c.getAlias())) {
				sub.addOutputColumnIfNotExists(c.getAlias(), c.getName());
				}
			}
		}
		
		return sub;

	}

	private Node makeNodeFinal(Node n, NodeHashValues hashes) {
		Node tempParent = n;
		// boolean isCentralised = n.isCentralised();
		// Set<PartitionCols> partitioned = n.isPartitionedOn();

		if (!this.initialQuery.getGroupBy().isEmpty()) {
			
		}

		if (!this.initialQuery.getOrderBy().isEmpty()) {
			
		}
		if (!this.initialQuery.isSelectAll()) {
			Node projection = new Node(Node.AND, Node.PROJECT);
			Projection p = new Projection();
			for (Output o : this.initialQuery.getOutputs()) {
				// c2n.putColumnInTable(c, projection);
				// add projections
				p.addOperand(o);

			}
			if (p.getOperands().size() > 0) {
				p.setDistinct(initialQuery.isOutputColumnsDinstict());
				projection.setObject(p);
				projection.addChild(tempParent);
				// projection.setPartitionRecord(tempParent.getPartitionRecord());
				// projection.setLastPartition(tempParent.getLastPartition());
				if (!hashes.containsKey(projection.getHashId())) {
					hashes.put(projection.getHashId(), projection);
					projection.addAllDescendantBaseTables(tempParent.getDescendantBaseTables());
					tempParent = projection;
				} else {
					tempParent = hashes.get(projection.getHashId());
					projection.removeAllChildren();
				}

			}

			/*
			 * else { Node n2 = hashes.get(projection.computeHashID());
			 * n2.addChild(tempParent); tempParent = n2; }
			 */
			Node projTable = new Node(Node.OR);
			projTable.setObject(new Table("table" + Util.createUniqueIdString(), null));
			projTable.addChild(tempParent);

			if (!hashes.containsKey(projTable.getHashId())) {
				hashes.put(projTable.getHashId(), projTable);
				projTable.addAllDescendantBaseTables(tempParent.getDescendantBaseTables());
			} else {
				projTable = hashes.get(projTable.getHashId());
			}
			tempParent = projTable;

		}

		if (this.initialQuery.getLimit() > -1) {
			Node limit = new Node(Node.AND, Node.LIMIT);
			limit.setObject(new Integer(this.initialQuery.getLimit()));
			limit.addChild(tempParent);
			// projection.setPartitionRecord(tempParent.getPartitionRecord());
			// projection.setLastPartition(tempParent.getLastPartition());
			if (!hashes.containsKey(limit.getHashId())) {
				hashes.put(limit.getHashId(), limit);
				limit.addAllDescendantBaseTables(tempParent.getDescendantBaseTables());
			} else {
				limit = hashes.get(limit.getHashId());
			}

			// isCentralised = tempParent.isCentralised();
			// partitioned = tempParent.isPartitionedOn();
			tempParent = limit;

			Node limitTable = new Node(Node.OR);
			limitTable.setObject(new Table("table" + Util.createUniqueIdString(), null));
			limitTable.addChild(tempParent);

			if (!hashes.containsKey(limitTable.getHashId())) {
				hashes.put(limitTable.getHashId(), limitTable);
				limitTable.addAllDescendantBaseTables(tempParent.getDescendantBaseTables());
			} else {
				limitTable = hashes.get(limitTable.getHashId());
			}
			tempParent = limitTable;
		}

		return tempParent;

		// joinSubquery.setLimit(this.initialQuery.getLimit());
		// joinSubquery.setTemporary(false);
		// joinSubquery.setSelectAll(this.initialQuery.isSelectAll());
		// joinSubquery.setOutputColumnsDistinct(this.initialQuery.getOutputColumnsDistinct());
	}

	Set<Join> getJoins() {
		return lj;
	}

	List<Table> getInputTables() {
		return this.initialQuery.getInputTables();
	}

	public static void resetCounter() {
		counter = 0;
	}

	public void setViewInfos(Map<Set<String>, Set<ViewInfo>> viewinfos2) {
		this.viewinfos = viewinfos2;

	}

	public Set<NodeOutputs> getCandidatesForElmination() {
		return candidatesForElmination;
	}

	public void setCandidatesForElmination(Set<NodeOutputs> candidatesForElmination2) {
		this.candidatesForElmination = candidatesForElmination2;
	}
}
