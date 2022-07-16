package it.unibz.inf.ontop.iq.cachemanager.impl;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import it.unibz.inf.ontop.exception.MinorOntopInternalBugException;
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
import it.unibz.inf.ontop.model.term.ImmutableExpression;
import it.unibz.inf.ontop.model.term.Variable;
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
        //utilize OntopExtractDBMetadata.java code?

        @Inject
        protected DataCubeFilterTransformer(IntermediateQueryFactory iqFactory) {
            super(iqFactory);
            System.out.println("DCFT: Building hash set for filters.");

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
            System.out.println("tF: " + rootNode.toString());
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
            System.out.println("tED: Filters: " + filters);
            System.out.println("tED: Extensional: " + dataNode.toString());

            /* Parse query and determine columns, tables and filters */
            String query = dataNode.toString();

            return dataNode;
        }

        @Override
        protected IQTree transformNaryCommutativeNode(IQTree tree, NaryOperatorNode rootNode, ImmutableList<IQTree> children) {
            /* This type of node contains filters on values. We need to check though if these filter can also be
            present in different kinds of nodes
             */
            if(rootNode instanceof InnerJoinNode) {
                InnerJoinNode inner = (InnerJoinNode) rootNode;
                Optional<ImmutableExpression> filterConditions = inner.getOptionalFilterCondition();
                if (filterConditions.isPresent()) {
                    ImmutableExpression expression = filterConditions.get();
                    filters.add(expression);
                    System.out.println("tNCN: Filters: " + filters);
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
         * Criteria for selecting siblings: must be leaf and must naturally join (i.e. share a variable) with the union
         */
        protected Optional<Map.Entry<NaryIQTree, ImmutableList<Integer>>> extractPushableSiblings(NaryIQTree unionTree,
                                                                                                  ImmutableList<IQTree> children) {
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