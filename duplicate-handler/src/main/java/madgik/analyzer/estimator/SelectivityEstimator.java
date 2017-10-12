/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madgik.analyzer.estimator;

import madgik.analyzer.decomposer.dag.Node;

/**
 * @author dimitris
 */
public interface SelectivityEstimator {

    public void makeEstimationForNode(Node n);

}
