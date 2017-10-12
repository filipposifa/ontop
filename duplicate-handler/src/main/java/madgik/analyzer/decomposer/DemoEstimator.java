package madgik.analyzer.decomposer;

import madgik.analyzer.decomposer.dag.NodeHashValues;
import madgik.analyzer.decomposer.federation.NamesToAliases;
import madgik.analyzer.decomposer.federation.QueryDecomposer;
import madgik.analyzer.decomposer.query.SQLQuery;
import madgik.analyzer.decomposer.query.SQLQueryParser;
import madgik.analyzer.estimator.NodeSelectivityEstimator;

public class DemoEstimator {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		NodeHashValues hashes=new NodeHashValues();
		NodeSelectivityEstimator nse=null;
		String core="select qview5.wlbCoreNumber from wellbore_core qview5, wellbore_core qview6 where (qview5.wlbCoreNumber = qview6.wlbCoreNumber)";

		String q2="select qview5.wlbNpdidWellbore from wellbore_core qview5, wellbore_exploration_all qview4 where qview5.wlbNpdidWellbore=qview4.wlbNpdidWellbore";
		
		String q="select m.wlbMD as md from wellbore_mud m, apaAreaGross g where m.wlbMD=g.apaAreaGross_id";
		nse = new NodeSelectivityEstimator("/media/dimitris/T/exaremenpd100/" + "histograms.json");
		hashes.setSelectivityEstimator(nse);
		SQLQuery query = SQLQueryParser.parse(q2, hashes);
		QueryDecomposer d = new QueryDecomposer(query, "/tmp/", 1, hashes);
		
		d.setN2a(new NamesToAliases());
		StringBuffer sb=new StringBuffer();
		for (SQLQuery s : d.getSubqueries()) {
			sb.append("\n");
			sb.append(s.toDistSQL());
		}
	}

}
