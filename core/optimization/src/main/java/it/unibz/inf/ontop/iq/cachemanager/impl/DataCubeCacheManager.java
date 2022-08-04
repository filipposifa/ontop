package it.unibz.inf.ontop.iq.cachemanager.impl;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import it.unibz.inf.ontop.injection.IntermediateQueryFactory;
import it.unibz.inf.ontop.iq.IQ;
import it.unibz.inf.ontop.iq.IQTree;
import it.unibz.inf.ontop.iq.LeafIQTree;
import it.unibz.inf.ontop.iq.NaryIQTree;
import it.unibz.inf.ontop.iq.cachemanager.Cache;
import it.unibz.inf.ontop.iq.cachemanager.QueryCacheManager;
import it.unibz.inf.ontop.iq.node.*;
import it.unibz.inf.ontop.iq.optimizer.GeneralStructuralAndSemanticIQOptimizer;
import it.unibz.inf.ontop.iq.transform.impl.DefaultRecursiveIQTreeVisitingTransformer;
import it.unibz.inf.ontop.model.term.*;
import it.unibz.inf.ontop.utils.ImmutableCollectors;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static java.lang.Double.parseDouble;

public class DataCubeCacheManager implements QueryCacheManager {

    private static final Logger LOGGER = LoggerFactory.getLogger(DataCubeCacheManager.class);

    private final GeneralStructuralAndSemanticIQOptimizer generalOptimizer;
    private final DataCubeFilterTransformer transformer;
    private final IntermediateQueryFactory iqFactory;

    @Inject
    protected DataCubeCacheManager(GeneralStructuralAndSemanticIQOptimizer generalOptimizer,
                                   DataCubeCacheManager.DataCubeFilterTransformer transformer,
                                         IntermediateQueryFactory iqFactory) {
        this.generalOptimizer = generalOptimizer;
        this.transformer = transformer;
        this.iqFactory = iqFactory;
    }

    @Override
    public IQ optimize(IQ query) {
        IQTree tree = query.getTree();
        IQTree newTree = transformer.transform(tree);

        IQ newIQ = newTree.equals(tree)
                ? query
                : iqFactory.createIQ(query.getProjectionAtom(), newTree);

        return newIQ;
    }


    @Singleton
    protected static class DataCubeFilterTransformer extends DefaultRecursiveIQTreeVisitingTransformer {
        private Set<ImmutableExpression> filters;
        private static Cache cache;

        //following data collected from property file
        private static final String connectionString = "jdbc:postgresql://88.197.53.173:82/cubez";
        private static final String connectionUsr = "postgres";
        private static final String connectionPwd = "???";   //other way to provide pwd ?
        private static final String tableFDW = "cubetable_uc3";
        private static final String tableCache= "cache_uc3";
        //utilize OntopQuery.java/OntopExtractDBMetadata.java code to get properties?

        @Inject
        protected DataCubeFilterTransformer(IntermediateQueryFactory iqFactory) {
            super(iqFactory);
            System.out.println("DCFT-1: Building hash set for filters.");

            filters = new HashSet<>();
            Connection con = null;
            try {
                con = java.sql.DriverManager.getConnection(connectionString, connectionUsr, connectionPwd);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            int maxSize = 1000; //max size of cache (days * variables);
            cache = new SimpleCache(tableFDW, tableCache, maxSize, con);
        }

        @Override
        public IQTree transformFilter(IQTree tree, FilterNode rootNode, IQTree child) {
            //filters.add(rootNode);
            System.out.println("tF-1: " + rootNode.toString());
            IQTree newChild = child.acceptTransformer(this);
            return newChild.equals(child) && rootNode.equals(tree.getRootNode())
                    ? tree
                    : iqFactory.createUnaryIQTree(rootNode, newChild);
        }

        @Override
        public IQTree transformExtensionalData(ExtensionalDataNode dataNode) {
            /* For each extensional node, check if it corresponds to data cube table.
               If yes, check the filters for time, lat, lon and variable filters
               on this table */

            /* Parse query and determine columns, tables and filters */
            String query = dataNode.toString();
            System.out.println("tED-1: Query: " + query);

            /*
                TODO:
                 - Check relationDefinition pipeline and see how to modify which table it refers to
                 - Arrange necessary variables to pass as arguments in manage
                 - Run initial tests
             */

            int variablePos = 0;
            int variableCount = 0;
            Variable cubeVar = null;

            String specDate;
            String specX;
            String specY;

            String minDate = "2009-03-06T00:00:00";
            String maxDate = "2020-12-26T00:00:00";
            double minX = 19.86;
            double maxX = 28.19;
            double minY = 34.93;
            double maxY = 41.62;
            String[] variables = null;

            Variable date = null;
            Variable xCoord;
            Variable yCoord;

            if (dataNode.getRelationDefinition().getAtomPredicate().getName().contains("cubetable_uc3")) {
                for (Integer i : dataNode.getArgumentMap().keySet()) {
                    if (i == 0) {
                        //date!
                        if (dataNode.getArgumentMap().get(0).isGround()) {
                            //specific date, parse it
                            DBConstant constantDate = (DBConstant) dataNode.getArgumentMap().get(0);
                            specDate = constantDate.getValue();
                            System.out.println("tED-SpecificDate: " + specDate);
                            minDate = maxDate = specDate;
                        } else {
                            //date is variable
                            date = (Variable) dataNode.getArgumentMap().get(0);
                            System.out.println("tED-Date: " + date);
                        }
                    } else if (i == 1) {
                        //y!
                        if (dataNode.getArgumentMap().get(1).isGround()) {
                            //specific y, parse it
                            DBConstant constantY = (DBConstant) dataNode.getArgumentMap().get(1);
                            specY = constantY.getValue();
                            System.out.println("tED-SpecificY: " + specY);
                            minY = maxY = parseDouble(specY);

                        } else {
                            //y is variable
                            yCoord = (Variable) dataNode.getArgumentMap().get(1);
                            System.out.println("tED-yCoord: " + yCoord);
                        }
                    } else if (i == 2) {
                        //x!
                        if (dataNode.getArgumentMap().get(2).isGround()) {
                            //specific x, parse it
                            DBConstant constantX = (DBConstant) dataNode.getArgumentMap().get(2);
                            specX = constantX.getValue();
                            System.out.println("tED-SpecificX: " + specX);
                            minX = maxX = parseDouble(specX);
                        } else {
                            //x is variable
                            xCoord = (Variable) dataNode.getArgumentMap().get(2);
                            System.out.println("tED-xCoord: " + xCoord);
                        }
                    } else {
                        //some other cube variable
                        variableCount++;
                        if (variableCount > 1) {
                            //more than one variable? what to do?
                            System.out.println("tED: TESTING MULTIPLE VARIABLES");
                        }
                        variablePos = i;
                        if (dataNode.getArgumentMap().get(i).isGround()) {
                            //specific value for cube variable! what to do?
                            cubeVar = (Variable) dataNode.getArgumentMap().get(i);
                            System.out.println("tED-cubeVar: " + cubeVar);
                        } else {
                            cubeVar = (Variable) dataNode.getArgumentMap().get(i);
                            System.out.println("tED-cubeVar: " + cubeVar);
                        }
                    }
                }

                //now check Filters to find possible filters on date, x or y
                for (ImmutableExpression exp : filters) {
                    for (ImmutableExpression andExp :
                            exp.flattenAND().collect(ImmutableCollectors.toList())) {
                        for (Variable v : andExp.getVariables()) {
                            if (v.equals(date)) {
                                //restriction on cube date
                                System.out.println("tED-andExp: " + andExp);
                            }
                        }
                    }
                }
            }
            // Manage cache with gathered data
            boolean flag = false;
            System.out.println("- tED-Manage -");
            System.out.println("MinDate: " + minDate);
            System.out.println("MaxDate: " + maxDate);
            System.out.println("MinX: " + minX);
            System.out.println("MaxX: " + maxX);
            System.out.println("MinY: " + minY);
            System.out.println("MaxY: " + maxY);
            System.out.println("Variables: " + variables.toString());
            //flag = this.cache.manage(minDate, maxDate, minX, maxX, minY, maxY, variables);

            if (flag) {
                // Query can be answered by cache
                // TODO: change RelationDefintion somehow... through the DataNode
                System.out.println("tED-Cache: Changing query table...");
            }

            return dataNode;
        }

        @Override
        protected IQTree transformNaryCommutativeNode(IQTree tree, NaryOperatorNode rootNode, ImmutableList<IQTree> children) {
            /* This type of node contains filters on values. We need to check though if these filter can also be
            present in different kinds of nodes
             */
            System.out.println("tNCN-1: Filters: " + filters);
            if(rootNode instanceof InnerJoinNode) {
                InnerJoinNode inner = (InnerJoinNode) rootNode;
                Optional<ImmutableExpression> filterConditions = inner.getOptionalFilterCondition();
                if (filterConditions.isPresent()) {
                    ImmutableExpression expression = filterConditions.get();
                    filters.add(expression);
                    System.out.println("tNCN-2: Filters: " + filters);
                }
            }
            ImmutableList<IQTree> newChildren = children.stream()
                    .map(t -> t.acceptTransformer(this))
                    .collect(ImmutableCollectors.toList());

            return newChildren.equals(children) && rootNode.equals(tree.getRootNode())
                    ? tree
                    : iqFactory.createNaryIQTree(rootNode, newChildren);
        }

        /**
         * Criteria for selecting siblings: must be a leaf and must naturally join (i.e. share a variable) with the union
         */
        protected Optional<Map.Entry<NaryIQTree, ImmutableList<Integer>>> extractPushableSiblings(NaryIQTree unionTree,
                                                                                                  ImmutableList<IQTree> children) {
            System.out.println("ePS-1: Filters: " + filters);
            ImmutableSet<Variable> unionVariables = unionTree.getVariables();

            ImmutableList<Integer> pushableSiblings = IntStream.range(0, children.size())
                    // Leaf siblings ...
                    .filter(i -> (children.get(i) instanceof LeafIQTree)
                            // ... that naturally joins (i.e. share a variable) with the union
                            && !Sets.intersection(unionVariables, children.get(i).getVariables()).isEmpty())
                    .boxed()
                    .collect(ImmutableCollectors.toList());

            return pushableSiblings.isEmpty()
                    ? Optional.empty()
                    : Optional.of(Maps.immutableEntry(unionTree, pushableSiblings));
        }

        private ImmutableList<IQTree> updateChildren(NaryIQTree unionTree, ImmutableList<Integer> pushableSiblingIndexes,
                                                     ImmutableList<IQTree> children) {

            System.out.println("uC-1: Filters: " + filters);
            ImmutableList<IQTree> pushedSiblings = pushableSiblingIndexes.stream()
                    .map(children::get)
                    .collect(ImmutableCollectors.toList());

            ImmutableList<IQTree> newUnionChildren = unionTree.getChildren().stream()
                    .map(c -> Stream.concat(Stream.of(c),
                            pushedSiblings.stream()).collect(ImmutableCollectors.toList()))
                    .map(cs -> iqFactory.createNaryIQTree(
                            iqFactory.createInnerJoinNode(),
                            cs))
                    .collect(ImmutableCollectors.toList());

            ImmutableSet<Variable> newUnionVariables = Sets.union(
                            unionTree.getVariables(),
                            pushedSiblings.stream()
                                    .flatMap(s -> s.getVariables().stream())
                                    .collect(ImmutableCollectors.toSet()))
                    .immutableCopy();

            NaryIQTree newUnionTree = iqFactory.createNaryIQTree(
                    iqFactory.createUnionNode(newUnionVariables),
                    newUnionChildren);

            return IntStream.range(0, children.size())
                    .filter(i -> !pushableSiblingIndexes.contains(i))
                    .mapToObj(children::get)
                    .map(c -> (c == unionTree) ? newUnionTree : c)
                    .collect(ImmutableCollectors.toList());
        }
    }

}