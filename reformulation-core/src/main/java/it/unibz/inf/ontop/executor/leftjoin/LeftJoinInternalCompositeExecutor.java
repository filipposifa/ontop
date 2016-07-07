package it.unibz.inf.ontop.executor.leftjoin;

import com.google.common.collect.ImmutableList;
import it.unibz.inf.ontop.executor.NodeCentricInternalCompositeExecutor;
import it.unibz.inf.ontop.executor.NodeCentricInternalExecutor;
import it.unibz.inf.ontop.pivotalrepr.LeftJoinNode;
import it.unibz.inf.ontop.pivotalrepr.proposal.LeftJoinOptimizationProposal;
import it.unibz.inf.ontop.pivotalrepr.proposal.impl.LeftJoinOptimizationProposalImpl;

import java.util.Optional;

/**
 * TODO: explain
 */
public class LeftJoinInternalCompositeExecutor extends NodeCentricInternalCompositeExecutor<LeftJoinNode,
        LeftJoinOptimizationProposal> {

    @Override
    protected Optional<LeftJoinOptimizationProposal> createNewProposalFromFocusNode(LeftJoinNode focusNode) {
        LeftJoinOptimizationProposal proposal = new LeftJoinOptimizationProposalImpl(focusNode);
        return Optional.of(proposal);
    }

    @Override
    protected ImmutableList<NodeCentricInternalExecutor<LeftJoinNode, LeftJoinOptimizationProposal>> createExecutors() {
        ImmutableList.Builder<NodeCentricInternalExecutor<LeftJoinNode, LeftJoinOptimizationProposal>> executorBuilder = ImmutableList.builder();

        //executorBuilder.add(new LeftJoinBooleanExpressionExecutor());
        executorBuilder.add(new RedundantSelfLeftJoinExecutor());
        executorBuilder.add(new ForeignKeyLeftJoinExecutor());

        return executorBuilder.build();
    }
}
