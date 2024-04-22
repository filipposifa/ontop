package it.unibz.inf.ontop.iq.cachemanager.impl;

import com.google.common.collect.*;
import it.unibz.inf.ontop.dbschema.*;
import it.unibz.inf.ontop.dbschema.impl.AbstractRelationDefinition;
import it.unibz.inf.ontop.dbschema.impl.SQLStandardQuotedIDFactory;
import it.unibz.inf.ontop.injection.CoreSingletons;
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
import it.unibz.inf.ontop.model.type.DBTermType;
import it.unibz.inf.ontop.utils.ImmutableCollectors;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
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
        private static CoreSingletons coreSingletons;

        //following data collected from property file
        private static final String connectionString = "jdbc:postgresql://88.197.53.173:86/cubez";
        private static final String connectionUsr = "???";
        private static final String connectionPwd = "???";   //TODO: read connection parameters from file

        // Foreign table name
        //private static final String tableFDW = "cubetable_uc3";
        //private static final String tableFDW = "cubetable_fire";
        //private static final String tableFDW = "cubetable_uc5";
        //private static final String tableFDW = "cubetable_uc5_new";
        //private static final String tableFDW = "cubetable_uc5_france";
        private static final String tableFDW = "cubetable_uc3_mesogeos";

        // Cache table name
        //private static final String tableCache = "cache_uc3";
        //private static final String tableCache = "cache_fire";
        //private static final String tableCache = "cache_brazil";
        //private static final String tableCache = "cache_slovenia";
        //private static final String tableCache = "cache_france";
        private static final String tableCache = "cache_mesogeos";
        private static String filterStr = "";

        @Inject
        protected DataCubeFilterTransformer(IntermediateQueryFactory iqFactory, CoreSingletons coreSingletons) {
            super(iqFactory);

            this.filters = new HashSet<>();
            this.coreSingletons = coreSingletons;
            System.out.println("DCFT: Building hash set for filters.");

            Connection con = null;
            try {
                con = java.sql.DriverManager.getConnection(connectionString, connectionUsr, connectionPwd);
                // Further testing on how to get properties:
                // DBMetadataProvider dbmeta = metadataProviderFactory.getMetadataProvider(con)
                // RelationID rID = dbmeta.getRelationIDs().get(0)
                // NamedRelationDefinition nRD = dbmeta.getRelation(rID)
                // System.out.println(nRD)
            } catch (SQLException e) {
                e.printStackTrace();
            }
            int maxSize = 10; //max size of cache (days * variables); Normal: 1000; Testing: 10
            cache = new SimpleCache(tableFDW, tableCache, maxSize, con);
        }

        @Override
        public IQTree transformFilter(IQTree tree, FilterNode rootNode, IQTree child) {
            //filters.add(rootNode);
            filterStr = rootNode.toString();
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
            boolean replaceWithCacheTable = false;
            String query = dataNode.toString();
            String filterVar = "";
            System.out.println("tED-Query: " + query);
            System.out.println("tED-Filter String: " + filterStr);
            // Use dataNode.getRelationDefinition().getAttribute(INDEX) to get specific variable

            /*
                TODO:
                 - Check relationDefinition pipeline and see how to modify which table it refers to
                 - Arrange necessary variables to pass as arguments in manage
             */

            int variablePos;
            int variableCount = 0;
            Attribute cubeVar;

            String specDate;
            String specX;
            String specY;

            /* UC3
            String minDate = "2009-03-06T00:00:00";
            String maxDate = "2020-12-26T00:00:00";
            double minX = 19.86;
            double maxX = 28.19;
            double minY = 34.93;
            double maxY = 41.62;
            */

            /* UC3-Fire
            String minDate = "2022-07-08T12:00:00";
            String maxDate = "2022-12-26T12:00:00";
            double minX = 18.30;
            double maxX = 31.18;
            double minY = 32.67;
            double maxY = 43.50;
            */

            /* UC3-Mesogeos */
            String minDate = "2006-04-01T00:00:00";
            String maxDate = "2022-09-29T00:00:00";
            double minX = -10.72;
            double maxX = 36.75;
            double minY = 30.06;
            double maxY = 47.70;

            /* UC3-Brazil
            String minDate = "2019-01-01T00:00:00";
            String maxDate = "2019-04-01T00:00:00";
            double minX = -47.01;
            double maxX = -41.99;
            double minY = -6.01;
            double maxY = -0.99;
            */

            /* UC3-Slovenia
            String minDate = "2021-01-01T00:00:00";
            String maxDate = "2022-01-01T00:00:00";
            double minX = 13.44;
            double maxX = 16.46;
            double minY = 45.44;
            double maxY = 46.86;
            */

            /* UC3-France
            String minDate = "2022-01-01T00:00:00";
            String maxDate = "2022-12-31T00:00:00";
            double minX = -0.33;
            double maxX = 4.85;
            double minY = 42.33;
            double maxY = 45.06;
            */

            HashSet<String> variables = new HashSet<String>();
            Attribute date = null;
            //Attribute xCoord, yCoord;

            /* Parsing helper variables for dimension ranges */
            int strIndex;
            String strFilter;
            String strDate;
            LocalDateTime tmpDate;
            DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
            //double tmpCoord;

            if (dataNode.getRelationDefinition().getAtomPredicate().getName().contains(tableFDW)) {
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
                            filterVar = dataNode.getArgumentMap().get(0).toString();
                            strIndex = filterStr.indexOf(filterVar);
                            System.out.println("tED-Date: Looking for time filters: " + filterVar);
                            while (strIndex > -1) {
                                if (filterStr.charAt(strIndex-21) == 'S')   //STR_GT, STR_LT
                                    strFilter = filterStr.substring(strIndex-21, strIndex-15);
                                else if (filterStr.charAt(strIndex-21) == 'T')  //STR_GTE, STR_LTE
                                    strFilter = filterStr.substring(strIndex-22, strIndex-15);
                                else if (filterStr.charAt(strIndex-2) == 'L') {   //IS_NOT_NULL
                                    strIndex = filterStr.indexOf(filterVar, strIndex + 1);
                                    continue;
                                }
                                else
                                    return dataNode;

                                strDate = filterStr.substring(strIndex+filterVar.length()+3, strIndex+filterVar.length()+22);
                                switch (strFilter) {
                                    case "STR_LT":
                                        if (tableFDW.contains("uc3") || tableFDW.contains("mesogeos"))
                                            tmpDate = LocalDateTime.parse(strDate).minusDays(1);
                                        else
                                            tmpDate = LocalDateTime.parse(strDate).minusHours(1);
                                        strDate = tmpDate.format(formatter);
                                        if (strDate.compareTo(maxDate) < 0) maxDate = strDate;
                                        break;
                                    case "STR_LTE":
                                        if (strDate.compareTo(maxDate) < 0) maxDate = strDate;
                                        break;
                                    case "STR_GT":
                                        if (tableFDW.contains("uc3") || tableFDW.contains("mesogeos"))
                                            tmpDate = LocalDateTime.parse(strDate).plusDays(1);
                                        else
                                            tmpDate = LocalDateTime.parse(strDate).plusHours(1);
                                        strDate = formatter.format(tmpDate);
                                        if (strDate.compareTo(minDate) > 0) minDate = strDate;
                                        break;
                                    case "STR_GTE":
                                        if (strDate.compareTo(minDate) > 0) minDate = strDate;
                                        break;
                                }
                                strIndex = filterStr.indexOf(filterVar, strIndex+1);
                            }
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
                            System.out.println("tED-Date: Looking for y filters...");
                            filterVar = dataNode.getArgumentMap().get(1).toString();
                            strIndex = filterStr.indexOf(filterVar);
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
                            System.out.println("tED-Date: Looking for x filters...");
                            filterVar = dataNode.getArgumentMap().get(2).toString();
                            strIndex = filterStr.indexOf(filterVar);
                        }
                    } else {
                        //some other cube variable
                        variablePos = i;
                        variableCount++;
                        System.out.println("tED-varPos: " + variablePos);
                        if (dataNode.getArgumentMap().get(i).isGround()) {
                            /*
                                TODO:
                                - add another set/map for specific values of variables
                                - handle it as min/max, same way with dimensions
                             */
                            Variable tmpVar = (Variable) dataNode.getArgumentMap().get(i);
                            System.out.println("tED-SpecificVar: " + tmpVar);
                            variables.add(tmpVar.toString());
                        } else {
                            //parse for cube variables
                            cubeVar = dataNode.getRelationDefinition().getAttribute(i+1);
                            String cubeAttr = cubeVar.toString().split("\\s")[0].replace("\"", "");
                            System.out.println("tED-cubeVarAttr: " + cubeAttr);
                            variables.add(cubeAttr);
                        }
                    }
                }

                //now check Filters to find possible filters on date, x or y
                for (ImmutableExpression exp : filters) {
                    for (ImmutableExpression andExp : exp.flattenAND().collect(ImmutableCollectors.toList())) {
                        for (Variable v : andExp.getVariables()) {
                            if (v.equals(date)) {
                                //restriction on cube date
                                System.out.println("tED-andExp: " + andExp);
                                if (andExp.getFunctionSymbol().getName().equals("DATETIME_NON_STRICT_EQ")) {
                                    //for example: DATETIME_NON_STRICT_EQ(isoTimestampDenorm(VARCHARToTEXT(time223m1)),"2020-07-15 00:00:00"^^TIMESTAMPTZ)
                                    for (ImmutableTerm innerTerm : andExp.getTerms()) {
                                        if (innerTerm instanceof DBConstant) {
                                            DBConstant dateFilter = (DBConstant) innerTerm;
                                            String dateString = dateFilter.getValue();
                                            System.out.println("tED-dateString: " + dateString);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                // Manage cache with gathered data
                System.out.println("tED-Manage:");
                System.out.println("\tMinDate: " + minDate);
                System.out.println("\tMaxDate: " + maxDate);
                System.out.println("\tMinX: " + minX);
                System.out.println("\tMaxX: " + maxX);
                System.out.println("\tMinY: " + minY);
                System.out.println("\tMaxY: " + maxY);
                System.out.println("\tVariables: " + variables);
                replaceWithCacheTable = this.cache.manage(minDate, maxDate, minX, maxX, minY, maxY, variables);
            }

            /* Modify DataNode if query can be answered by cache */
            if (replaceWithCacheTable) {
                System.out.println("tED-Replace:");
                System.out.println("\tRootDBType: " + coreSingletons.getTypeFactory().getDBTypeFactory().getAbstractRootDBType().toString());
                System.out.println("\tArguments: " + dataNode.getArgumentMap().toString());
                System.out.println("\tVariables: " + dataNode.getVariables().toString());
                System.out.println("\tRelationDefinition: " + dataNode.getRelationDefinition().toString());
                System.out.println("\tAttributes: " + dataNode.getRelationDefinition().getAttributes().toString());
                return DataCubeCacheManager.renameExtensionalDataNode(dataNode, coreSingletons, tableCache);
            }
            else
                return dataNode;
        }

        @Override
        protected IQTree transformNaryCommutativeNode(IQTree tree, NaryOperatorNode rootNode, ImmutableList<IQTree> children) {
            /* This type of node contains filters on values. We need to check though if these filter can also be
            present in different kinds of nodes
             */
            this.filters.clear();
            if(rootNode instanceof InnerJoinNode) {
                InnerJoinNode inner = (InnerJoinNode) rootNode;
                Optional<ImmutableExpression> filterConditions = inner.getOptionalFilterCondition();
                if (filterConditions.isPresent()) {
                    ImmutableExpression expression = filterConditions.get();
                    filters.add(expression);
                    filterStr = filters.toString();
                    System.out.println("tNCN-Filters: " + filters);
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
            System.out.println("ePS-Filters: " + filters);
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

            System.out.println("uC-Filters: " + filters);
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

    /**
     * Temporary (should disappear when converting back the CQ into IQ
     */
    private static class ValuesRelationDefinition extends AbstractRelationDefinition {

        //private final ValuesNode valuesNode;

        private ValuesRelationDefinition(
                String name,
                DBTermType rootType,
                QuotedIDFactory idFactory,
                ExtensionalDataNode original
        ) {
            super(name, extractAttributes(original, rootType, idFactory));
            //this.valuesNode = valuesNode;
        }

        private static RelationDefinition.AttributeListBuilder extractAttributes(
                ExtensionalDataNode original,
                DBTermType rootType,
                QuotedIDFactory idFactory
        ) {
            RelationDefinition.AttributeListBuilder builder = AbstractRelationDefinition.attributeListBuilder();
            VariableNullability variableNullability = original.getVariableNullability();
            //valuesNode.getVariableNullability();

            original.getRelationDefinition().getAttributes()//.getVariables()//.getOrderedVariables()
                .forEach(v -> builder.addAttribute(v.getID(), v.getTermType(), v.isNullable()));
            return builder;
        }

        @Override
        public ImmutableList<UniqueConstraint> getUniqueConstraints() {
            return ImmutableList.of();
        }

        @Override
        public ImmutableList<FunctionalDependency> getOtherFunctionalDependencies() {
            return ImmutableList.of();
        }

        @Override
        public ImmutableList<ForeignKeyConstraint> getForeignKeys() {
            return ImmutableList.of();
        }
    }

    private static ExtensionalDataNode renameExtensionalDataNode(ExtensionalDataNode node, CoreSingletons coreSingletons, String name) {
        return coreSingletons.getIQFactory().createExtensionalDataNode(
                new DataCubeCacheManager.ValuesRelationDefinition(
                        name,
                        coreSingletons.getTypeFactory().getDBTypeFactory().getAbstractRootDBType(),
                        new SQLStandardQuotedIDFactory(),
                        node),
                node.getArgumentMap()
        );
    }
}