package it.unibz.inf.ontop.model.term.functionsymbol.impl;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import it.unibz.inf.ontop.exception.MinorOntopInternalBugException;
import it.unibz.inf.ontop.iq.node.VariableNullability;
import it.unibz.inf.ontop.model.term.*;
import it.unibz.inf.ontop.model.term.functionsymbol.FunctionSymbol;
import it.unibz.inf.ontop.model.term.impl.FunctionalTermNullabilityImpl;
import it.unibz.inf.ontop.model.term.impl.PredicateImpl;
import it.unibz.inf.ontop.model.type.TermType;
import it.unibz.inf.ontop.model.type.TermTypeInference;
import it.unibz.inf.ontop.utils.ImmutableCollectors;

import javax.annotation.Nonnull;
import java.util.stream.IntStream;

public abstract class FunctionSymbolImpl extends PredicateImpl implements FunctionSymbol {

    private final ImmutableList<TermType> expectedBaseTypes;

    protected FunctionSymbolImpl(@Nonnull String name,
                                 @Nonnull ImmutableList<TermType> expectedBaseTypes) {
        super(name, expectedBaseTypes.size());
        this.expectedBaseTypes = expectedBaseTypes;
    }

    /**
     * TODO: REMOVE IT (TEMPORARY)
     */
    @Override
    public FunctionalTermNullability evaluateNullability(ImmutableList<? extends NonFunctionalTerm> arguments,
                                                         VariableNullability childNullability) {
        // TODO: implement it seriously
        boolean isNullable = arguments.stream()
                .filter(a -> a instanceof Variable)
                .anyMatch(a -> childNullability.isPossiblyNullable((Variable) a));
        return new FunctionalTermNullabilityImpl(isNullable);
    }

    @Override
    public ImmutableTerm simplify(ImmutableList<? extends ImmutableTerm> terms,
                                  boolean isInConstructionNodeInOptimizationPhase, TermFactory termFactory) {

        ImmutableList<ImmutableTerm> newTerms = terms.stream()
                .map(t -> (t instanceof ImmutableFunctionalTerm)
                        ? t.simplify(isInConstructionNodeInOptimizationPhase)
                        : t)
                .collect(ImmutableCollectors.toList());

        return buildTermAfterEvaluation(newTerms, isInConstructionNodeInOptimizationPhase, termFactory);
    }

    /**
     * Default implementation, to be overridden to convert more cases
     */
    @Override
    public EvaluationResult evaluateStrictEq(ImmutableList<? extends ImmutableTerm> terms, ImmutableTerm otherTerm,
                                             TermFactory termFactory) {
        boolean differentTypeDetected = inferType(terms)
                .flatMap(TermTypeInference::getTermType)
                .map(t1 -> otherTerm.inferType()
                        .flatMap(TermTypeInference::getTermType)
                        .map(t2 -> !t1.equals(t2))
                        .orElse(false))
                .orElse(false);

        if (differentTypeDetected)
            return EvaluationResult.declareIsFalse();

        /*
         * In case of injectivity
         * TODO: consider nullability information for arity >1 for avoiding evaluating as FALSE instead of NULL
         * (first produced equality evaluated as false, while the second evaluates as NULL)
         */
        if ((otherTerm instanceof ImmutableFunctionalTerm)
                && ((ImmutableFunctionalTerm) otherTerm).getFunctionSymbol().equals(this)
                && isInjective(terms, ImmutableSet.of())) {
            if (getArity() == 0)
                return EvaluationResult.declareIsTrue();

            ImmutableFunctionalTerm otherFunctionalTerm = (ImmutableFunctionalTerm) otherTerm;

            ImmutableExpression newExpression = termFactory.getConjunction(
                    IntStream.range(0, getArity())
                            .boxed()
                            .map(i -> termFactory.getStrictEquality(terms.get(i), otherFunctionalTerm.getTerm(i)))
                            .collect(ImmutableCollectors.toList()));

            ImmutableExpression.Evaluation newEvaluation = newExpression.evaluate(termFactory);
            return newEvaluation.getExpression()
                    .map(EvaluationResult::declareSimplifiedExpression)
                    .orElseGet(() -> newEvaluation.getValue()
                            .map(v -> {
                                switch (v) {
                                    case TRUE:
                                        return EvaluationResult.declareIsTrue();
                                    case FALSE:
                                        return EvaluationResult.declareIsFalse();
                                    //case NULL:
                                    default:
                                        return EvaluationResult.declareIsNull();
                                }
                            })
                            .orElseThrow(() -> new MinorOntopInternalBugException(
                                    "An evaluation either is expected to return an expression or a value")));
        }
        return EvaluationResult.declareSameExpression();
    }

    /**
     * When the function symbol is sometimes but not always injective, please override isInjective(...)
     */
    protected abstract boolean isAlwaysInjective();

    /**
     * To be overridden when is sometimes but not always injective.
     */
    @Override
    public boolean isInjective(ImmutableList<? extends ImmutableTerm> arguments, ImmutableSet<Variable> nonNullVariables) {
        return isAlwaysInjective();
    }

    /**
     * By default, just build a new functional term.
     *
     * To be extended for reacting to null values and so on.
     *
     */
    protected ImmutableTerm buildTermAfterEvaluation(ImmutableList<ImmutableTerm> newTerms,
                                                     boolean isInConstructionNodeInOptimizationPhase,
                                                     TermFactory termFactory) {
        return termFactory.getImmutableFunctionalTerm(this, newTerms);
    }

    protected boolean isOneArgumentNull(ImmutableList<ImmutableTerm> subTerms) {
        return subTerms.stream()
                .filter(t -> t instanceof Constant)
                .anyMatch(t -> ((Constant) t).isNull());
    }

    protected ImmutableList<TermType> getExpectedBaseTypes() {
        return expectedBaseTypes;
    }

    @Override
    public TermType getExpectedBaseType(int index) {
        return expectedBaseTypes.get(index);
    }
}