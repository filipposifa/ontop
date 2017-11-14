package it.unibz.inf.ontop.iq.executor;

import it.unibz.inf.ontop.dbschema.*;
import it.unibz.inf.ontop.dbschema.BasicDBMetadata;
import it.unibz.inf.ontop.iq.exception.EmptyQueryException;
import it.unibz.inf.ontop.iq.node.*;
import it.unibz.inf.ontop.model.atom.DistinctVariableOnlyDataAtom;
import it.unibz.inf.ontop.model.term.TermConstants;

import it.unibz.inf.ontop.iq.*;
import it.unibz.inf.ontop.iq.equivalence.IQSyntacticEquivalenceChecker;
import it.unibz.inf.ontop.model.atom.AtomPredicate;
import it.unibz.inf.ontop.model.term.functionsymbol.ExpressionOperation;
import it.unibz.inf.ontop.model.term.Constant;
import it.unibz.inf.ontop.model.term.ImmutableExpression;
import it.unibz.inf.ontop.model.term.Variable;
import org.junit.Ignore;
import org.junit.Test;

import java.sql.Types;

import static it.unibz.inf.ontop.iq.node.BinaryOrderedOperatorNode.ArgumentPosition.LEFT;
import static it.unibz.inf.ontop.iq.node.BinaryOrderedOperatorNode.ArgumentPosition.RIGHT;
import static it.unibz.inf.ontop.model.OntopModelSingletons.ATOM_FACTORY;
import static it.unibz.inf.ontop.model.OntopModelSingletons.SUBSTITUTION_FACTORY;
import static it.unibz.inf.ontop.model.term.functionsymbol.ExpressionOperation.EQ;
import static it.unibz.inf.ontop.model.term.functionsymbol.ExpressionOperation.IF_ELSE_NULL;
import static it.unibz.inf.ontop.model.term.functionsymbol.ExpressionOperation.IS_NOT_NULL;
import static junit.framework.TestCase.assertTrue;

import static it.unibz.inf.ontop.OptimizationTestingTools.*;

/**
 * TODO: explain
 */

public class LeftJoinOptimizationTest {

    private final static AtomPredicate TABLE1_PREDICATE;
    private final static AtomPredicate TABLE1a_PREDICATE;
    private final static AtomPredicate TABLE2_PREDICATE;
    private final static AtomPredicate TABLE2a_PREDICATE;
    private final static AtomPredicate TABLE3_PREDICATE;
    private final static AtomPredicate TABLE4_PREDICATE;
    private final static AtomPredicate TABLE5_PREDICATE;
    private final static AtomPredicate ANS1_ARITY_2_PREDICATE = ATOM_FACTORY.getAtomPredicate("ans1", 2);
    private final static AtomPredicate ANS1_ARITY_3_PREDICATE = ATOM_FACTORY.getAtomPredicate("ans1", 3);
    private final static AtomPredicate ANS1_ARITY_4_PREDICATE = ATOM_FACTORY.getAtomPredicate("ans1", 4);
    private final static Variable X = DATA_FACTORY.getVariable("X");
    private final static Variable Y = DATA_FACTORY.getVariable("Y");
    private final static Variable Z = DATA_FACTORY.getVariable("z");
    private final static Constant ONE = DATA_FACTORY.getConstantLiteral("1");
    private final static Constant TWO = DATA_FACTORY.getConstantLiteral("2");

    private final static Variable M = DATA_FACTORY.getVariable("m");
    private final static Variable M1 = DATA_FACTORY.getVariable("m1");
    private final static Variable M2 = DATA_FACTORY.getVariable("m2");
    private final static Variable N = DATA_FACTORY.getVariable("n");
    private final static Variable NF1 = DATA_FACTORY.getVariable("nf1");
    private final static Variable N1 = DATA_FACTORY.getVariable("n1");
    private final static Variable N1F0 = DATA_FACTORY.getVariable("n1f0");
    private final static Variable N1F1 = DATA_FACTORY.getVariable("n1f1");
    private final static Variable N2 = DATA_FACTORY.getVariable("n2");
    private final static Variable O = DATA_FACTORY.getVariable("o");
    private final static Variable OF0 = DATA_FACTORY.getVariable("of0");
    private final static Variable O1 = DATA_FACTORY.getVariable("o1");
    private final static Variable O2 = DATA_FACTORY.getVariable("o2");
    private final static Variable F0 = DATA_FACTORY.getVariable("f0");

    private final static ImmutableExpression EXPRESSION1 = DATA_FACTORY.getImmutableExpression(
            EQ, M, N);
    private final static ImmutableExpression EXPRESSION2 = DATA_FACTORY.getImmutableExpression(
            EQ, N, M);

    private static final DBMetadata DB_METADATA;

    static {
        BasicDBMetadata dbMetadata = DBMetadataTestingTools.createDummyMetadata();
        QuotedIDFactory idFactory = dbMetadata.getQuotedIDFactory();

        /*
         * Table 1: non-composite unique constraint and regular field
         */
        DatabaseRelationDefinition table1Def = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE1"));
        Attribute table1Col1 = table1Def.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, false);
        table1Def.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        table1Def.addAttribute(idFactory.createAttributeID("col3"), Types.INTEGER, null, true);
        table1Def.addUniqueConstraint(UniqueConstraint.primaryKeyOf(table1Col1));
        TABLE1_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table1Def);

        /*
         * Table 2: non-composite unique constraint and regular field
         */
        DatabaseRelationDefinition table2Def = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE2"));
        Attribute table2Col1 = table2Def.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, false);
        Attribute table2Col2 = table2Def.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        table2Def.addAttribute(idFactory.createAttributeID("col3"), Types.INTEGER, null, false);
        table2Def.addUniqueConstraint(UniqueConstraint.primaryKeyOf(table2Col1));
        table2Def.addForeignKeyConstraint(ForeignKeyConstraint.of("fk2-1", table2Col2, table1Col1));
        TABLE2_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table2Def);

        /*
         * Table 3: composite unique constraint over the first TWO columns
         */
        DatabaseRelationDefinition table3Def = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE3"));
        Attribute table3Col1 = table3Def.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, false);
        Attribute table3Col2 = table3Def.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        table3Def.addAttribute(idFactory.createAttributeID("col3"), Types.INTEGER, null, false);
        table3Def.addUniqueConstraint(UniqueConstraint.primaryKeyOf(table3Col1, table3Col2));
        TABLE3_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table3Def);

        /*
         * Table 1a: non-composite unique constraint and regular field
         */
        DatabaseRelationDefinition table1aDef = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE1A"));
        Attribute table1aCol1 = table1aDef.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, false);
        Attribute table1aCol2 = table1aDef.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        table1aDef.addAttribute(idFactory.createAttributeID("col3"), Types.INTEGER, null, false);
        table1aDef.addAttribute(idFactory.createAttributeID("col4"), Types.INTEGER, null, false);
        table1aDef.addUniqueConstraint(UniqueConstraint.primaryKeyOf(table1aCol1));
        TABLE1a_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table1aDef);

        /*
         * Table 2a: non-composite unique constraint and regular field
         */
        DatabaseRelationDefinition table2aDef = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE2A"));
        Attribute table2aCol1 = table2aDef.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, false);
        Attribute table2aCol2 = table2aDef.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        Attribute table2aCol3 = table2aDef.addAttribute(idFactory.createAttributeID("col3"), Types.INTEGER, null, false);
        table2aDef.addUniqueConstraint(UniqueConstraint.primaryKeyOf(table2aCol1));
        ForeignKeyConstraint.Builder fkBuilder = ForeignKeyConstraint.builder(table2aDef, table1aDef);
        fkBuilder.add(table2aCol2, table1aCol1);
        fkBuilder.add(table2aCol3, table1aCol2);
        table2aDef.addForeignKeyConstraint(fkBuilder.build("composite-fk"));
        TABLE2a_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table2aDef);

        /*
         * Table 4: non-composite unique constraint and nullable fk
         */
        DatabaseRelationDefinition table4Def = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE4"));
        Attribute table4Col1 = table4Def.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, false);
        table4Def.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        Attribute table4Col3 = table4Def.addAttribute(idFactory.createAttributeID("col3"), Types.INTEGER, null, true);
        table4Def.addUniqueConstraint(UniqueConstraint.primaryKeyOf(table4Col1));
        table4Def.addForeignKeyConstraint(ForeignKeyConstraint.of("fk4-1", table4Col3, table1Col1));
        TABLE4_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table4Def);

        /*
         * Table 5: nullable unique constraint
         */
        DatabaseRelationDefinition table5Def = dbMetadata.createDatabaseRelation(idFactory.createRelationID(null, "TABLE5"));
        Attribute table5Col1 = table5Def.addAttribute(idFactory.createAttributeID("col1"), Types.INTEGER, null, true);
        table5Def.addAttribute(idFactory.createAttributeID("col2"), Types.INTEGER, null, false);
        table5Def.addUniqueConstraint(
                UniqueConstraint.builder(table5Def)
                    .add(table5Col1)
                    .build("uc5", false));
        TABLE5_PREDICATE = Relation2Predicate.createAtomPredicateFromRelation(table5Def);

        dbMetadata.freeze();
        DB_METADATA = dbMetadata;
    }

    @Test
    public void testSelfJoinElimination1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables());
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);

        ExtensionalDataNode dataNode5 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O));
        expectedQueryBuilder.addChild(constructionNode1, dataNode5);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testSelfJoinElimination2() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode(DATA_FACTORY.getImmutableExpression(IS_NOT_NULL, O));
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables());
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);

        ExtensionalDataNode dataNode5 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O));
        expectedQueryBuilder.addChild(constructionNode1, dataNode5);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testNoSelfLeftJoin3() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, N, O));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();



        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables());
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);
        LeftJoinNode leftJoinNode1 = IQ_FACTORY.createLeftJoinNode();
        expectedQueryBuilder.addChild(constructionNode1, leftJoinNode1);

        expectedQueryBuilder.addChild(leftJoinNode1, dataNode1, LEFT);
        expectedQueryBuilder.addChild(leftJoinNode1, dataNode2, RIGHT);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testSelfJoinWithCondition() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode(DATA_FACTORY.getImmutableExpression(
                EQ, O, TWO));

        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();
        IntermediateQueryBuilder expectedQueryBuilder = query.newBuilder();
        ConstructionNode newConstructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(O, DATA_FACTORY.getImmutableExpression(
                        IF_ELSE_NULL, DATA_FACTORY.getImmutableExpression(EQ, OF0, TWO), OF0)));
        expectedQueryBuilder.init(projectionAtom, newConstructionNode);
        expectedQueryBuilder.addChild(newConstructionNode,
                IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, OF0)));

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Ignore("Need to support expression simplification in construction nodes")
    @Test
    public void testSelfLeftJoinNonUnification1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, ONE));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, TWO));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(
                projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(N, TermConstants.NULL));
        expectedQueryBuilder.init(projectionAtom, constructionNode1);

        ExtensionalDataNode newDataNode = IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(
                TABLE1_PREDICATE, M, NF1, ONE));
        expectedQueryBuilder.addChild(constructionNode1, newDataNode);
        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testSelfLeftJoinNonUnification1NotSimplifiedExpression() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, ONE));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, TWO));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(
                projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(N,
                        DATA_FACTORY.getImmutableExpression(IF_ELSE_NULL,
                                DATA_FACTORY.getImmutableExpression(EQ, ONE, TWO),
                                NF1)));
        expectedQueryBuilder.init(projectionAtom, constructionNode1);

        ExtensionalDataNode newDataNode = IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(
                TABLE1_PREDICATE, M, NF1, ONE));
        expectedQueryBuilder.addChild(constructionNode1, newDataNode);
        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test(expected = EmptyQueryException.class)
    public void testSelfLeftJoinNonUnificationEmptyResult() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);

        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        FilterNode filterNode = IQ_FACTORY.createFilterNode(DATA_FACTORY.getImmutableExpression(ExpressionOperation.IS_NOT_NULL, N));
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, ONE));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, TWO));

        queryBuilder.init(projectionAtom, constructionNode);
        queryBuilder.addChild(constructionNode, filterNode);
        queryBuilder.addChild(filterNode, leftJoinNode);
        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();
        System.out.println("\nBefore optimization: \n" +  query);

        JOIN_LIKE_OPTIMIZER.optimize(query);
    }


    @Test
    public void testSelfLeftJoinIfElseNull1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, TWO));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = query.newBuilder();
        ConstructionNode newConstructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(N, DATA_FACTORY.getImmutableExpression(
                        IF_ELSE_NULL, DATA_FACTORY.getImmutableExpression(EQ, F0, TWO), NF1)));
        expectedQueryBuilder.init(projectionAtom, newConstructionNode);
        expectedQueryBuilder.addChild(newConstructionNode,
                IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, NF1, F0)));

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testSelfLeftJoinIfElseNull2() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, N));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = query.newBuilder();
        ConstructionNode newConstructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(N, DATA_FACTORY.getImmutableExpression(
                        IF_ELSE_NULL, DATA_FACTORY.getImmutableExpression(EQ, F0, NF1), NF1)));
        expectedQueryBuilder.init(projectionAtom, newConstructionNode);
        expectedQueryBuilder.addChild(newConstructionNode,
                IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, NF1, F0)));

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testNoSelfLeftJoin1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, ONE));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, N1, N, TWO));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();
        optimizeAndCheck(query, query.createSnapshot());
    }

    @Test
    public void testNoSelfLeftJoin2() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, ONE));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, N1, M, N));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();
        optimizeAndCheck(query, query.createSnapshot());
    }

    @Test
    public void testLeftJoinElimination1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2_PREDICATE, M, M1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, N1, O1));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();


        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables());
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);

        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        expectedQueryBuilder.addChild(constructionNode1, joinNode);
        expectedQueryBuilder.addChild(joinNode, dataNode1);
        expectedQueryBuilder.addChild(joinNode, dataNode2);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }


    @Test
    public void testLeftJoinElimination2() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, M2, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2a_PREDICATE, M, M1, M2));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1a_PREDICATE, M1, M2, N1, O1));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);


        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        expectedQueryBuilder.init(projectionAtom, constructionNode);

        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        expectedQueryBuilder.addChild(constructionNode, joinNode);
        expectedQueryBuilder.addChild(joinNode, dataNode1);
        expectedQueryBuilder.addChild(joinNode, dataNode2);

        optimizeAndCheck(queryBuilder.build(), expectedQueryBuilder.build());
    }

    @Test
    public void testLeftJoinElimination3() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, M2, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2a_PREDICATE, M, M1, M2));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1a_PREDICATE, M1, M, N1, O1));

        queryBuilder.init(projectionAtom, constructionNode);
        queryBuilder.addChild(constructionNode, leftJoinNode);
        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        expectedQueryBuilder.init(projectionAtom, constructionNode);
        expectedQueryBuilder.addChild(constructionNode, leftJoinNode);
        expectedQueryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        expectedQueryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testLeftJoinElimination4() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2_PREDICATE, M, M1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, O1, N1));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();


        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables());
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);

        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        expectedQueryBuilder.addChild(constructionNode1, joinNode);
        expectedQueryBuilder.addChild(joinNode, dataNode1);
        expectedQueryBuilder.addChild(joinNode, dataNode2);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testLeftJoinNonElimination1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE4_PREDICATE, M, N1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, O, N, M1));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();
        optimizeAndCheck(query, query.createSnapshot());
    }

    @Test
    public void testLeftJoinEliminationWithFilterCondition2() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode(DATA_FACTORY.getImmutableExpression(ExpressionOperation.IS_NOT_NULL, N1));
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2_PREDICATE, M, M1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, O1, N1));

        queryBuilder.init(projectionAtom, constructionNode);
        queryBuilder.addChild(constructionNode, leftJoinNode);
        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();


        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        expectedQueryBuilder.init(projectionAtom, constructionNode);
        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        expectedQueryBuilder.addChild(constructionNode, joinNode);
        expectedQueryBuilder.addChild(joinNode, dataNode1);
        expectedQueryBuilder.addChild(joinNode, dataNode2);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testLeftJoinEliminationWithFilterCondition4() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());

        ImmutableExpression expression = DATA_FACTORY.getImmutableExpression(EQ, O1, TWO);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode(expression);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2_PREDICATE, M, M1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, N1, O1));

        queryBuilder.init(projectionAtom, constructionNode);
        queryBuilder.addChild(constructionNode, leftJoinNode);
        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();


        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        ConstructionNode newConstructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(N1,
                        DATA_FACTORY.getImmutableExpression(IF_ELSE_NULL, expression, N1F0)));
        expectedQueryBuilder.init(projectionAtom, newConstructionNode);
        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        expectedQueryBuilder.addChild(newConstructionNode, joinNode);
        expectedQueryBuilder.addChild(joinNode, dataNode1);
        ExtensionalDataNode newDataNode2 =  IQ_FACTORY.createExtensionalDataNode(
                ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, N1F0, O1));
        expectedQueryBuilder.addChild(joinNode, newDataNode2);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testLeftJoinEliminationWithImplicitFilterCondition() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_4_PREDICATE, M, M1, O, N1);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());

        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE2_PREDICATE, M, M1, O));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, N1, TWO));

        queryBuilder.init(projectionAtom, constructionNode);
        queryBuilder.addChild(constructionNode, leftJoinNode);
        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();


        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        ImmutableExpression expression = DATA_FACTORY.getImmutableExpression(EQ, F0, TWO);
        ConstructionNode newConstructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(N1,
                        DATA_FACTORY.getImmutableExpression(IF_ELSE_NULL, expression, N1F1)));
        expectedQueryBuilder.init(projectionAtom, newConstructionNode);
        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        expectedQueryBuilder.addChild(newConstructionNode, joinNode);
        expectedQueryBuilder.addChild(joinNode, dataNode1);
        ExtensionalDataNode newDataNode2 =  IQ_FACTORY.createExtensionalDataNode(
                ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M1, N1F1, F0));
        expectedQueryBuilder.addChild(joinNode, newDataNode2);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Ignore("TODO: support it")
    @Test
    public void testSelfLeftJoinWithJoinOnLeft1() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));
        ExtensionalDataNode dataNode3 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE3_PREDICATE, M1, N2, O2));

        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        queryBuilder.addChild(leftJoinNode, joinNode, LEFT);
        queryBuilder.addChild(joinNode, dataNode1);
        queryBuilder.addChild(joinNode, dataNode3);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables());
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);

        expectedQueryBuilder.addChild(constructionNode1, joinNode);
        ExtensionalDataNode dataNode5 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O));
        expectedQueryBuilder.addChild(joinNode, dataNode5);
        expectedQueryBuilder.addChild(joinNode, dataNode3);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Ignore("TODO: support it")
    @Test
    public void testSelfLeftJoinWithJoinOnLeft2() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, O1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N1, O));
        ExtensionalDataNode dataNode3 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE3_PREDICATE, M1, N1, O2));

        InnerJoinNode joinNode = IQ_FACTORY.createInnerJoinNode();
        queryBuilder.addChild(leftJoinNode, joinNode, LEFT);
        queryBuilder.addChild(joinNode, dataNode1);
        queryBuilder.addChild(joinNode, dataNode3);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        IntermediateQueryBuilder expectedQueryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom1 = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_3_PREDICATE, M, N, O);
        ConstructionNode constructionNode1 = IQ_FACTORY.createConstructionNode(projectionAtom1.getVariables(),
                SUBSTITUTION_FACTORY.getSubstitution(O,
                        DATA_FACTORY.getImmutableExpression(IF_ELSE_NULL,
                            DATA_FACTORY.getImmutableExpression(EQ, N, N1),
                            OF0)));
        expectedQueryBuilder.init(projectionAtom1, constructionNode1);

        expectedQueryBuilder.addChild(constructionNode1, joinNode);
        ExtensionalDataNode dataNode5 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE1_PREDICATE, M, N, OF0));
        expectedQueryBuilder.addChild(joinNode, dataNode5);
        expectedQueryBuilder.addChild(joinNode, dataNode3);

        optimizeAndCheck(query, expectedQueryBuilder.build());
    }

    @Test
    public void testSelfJoinNullableUniqueConstraint() throws EmptyQueryException {

        IntermediateQueryBuilder queryBuilder = createQueryBuilder(DB_METADATA);
        DistinctVariableOnlyDataAtom projectionAtom = ATOM_FACTORY.getDistinctVariableOnlyDataAtom(ANS1_ARITY_2_PREDICATE, M, N);
        ConstructionNode constructionNode = IQ_FACTORY.createConstructionNode(projectionAtom.getVariables());
        queryBuilder.init(projectionAtom, constructionNode);
        LeftJoinNode leftJoinNode = IQ_FACTORY.createLeftJoinNode();
        queryBuilder.addChild(constructionNode, leftJoinNode);
        ExtensionalDataNode dataNode1 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE5_PREDICATE, M, N1));
        ExtensionalDataNode dataNode2 =  IQ_FACTORY.createExtensionalDataNode(ATOM_FACTORY.getDataAtom(TABLE5_PREDICATE, M, N));

        queryBuilder.addChild(leftJoinNode, dataNode1, LEFT);
        queryBuilder.addChild(leftJoinNode, dataNode2, RIGHT);

        IntermediateQuery query = queryBuilder.build();

        optimizeAndCheck(query, query.createSnapshot());
    }

    private void optimizeAndCheck(IntermediateQuery query, IntermediateQuery expectedQuery) throws EmptyQueryException {
        System.out.println("\nBefore optimization: \n" +  query);
        System.out.println("\nExpected query: \n" +  expectedQuery);

        IntermediateQuery newQuery = JOIN_LIKE_OPTIMIZER.optimize(query);

        System.out.println("\n After optimization: \n" +  newQuery);

        assertTrue(IQSyntacticEquivalenceChecker.areEquivalent(newQuery, expectedQuery));

    }


}
