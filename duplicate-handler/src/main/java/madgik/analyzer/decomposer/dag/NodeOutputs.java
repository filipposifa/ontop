package madgik.analyzer.decomposer.dag;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.google.common.hash.HashCode;

import madgik.analyzer.decomposer.query.Column;
import madgik.analyzer.decomposer.query.SQLQuery;
import madgik.analyzer.decomposer.query.Table;

public class NodeOutputs {
	
	private final HashCode node;
	private final SQLQuery sql;
	
	public NodeOutputs(HashCode node, SQLQuery q) {
		super();
		this.node = node;
		this.sql=q;
	}

	

	public HashCode getNode() {
		return this.node;
	}

	public Set<String> getOutputs() {
		Set<String> result=new HashSet<String>();
		for(Column c:sql.getAllOutputColumns()){
			result.add(c.toString());
		}
		return result;
	}
	
	public List<Column> getOutputColumns() {
		return sql.getAllOutputColumns();
	}

	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((node == null) ? 0 : node.hashCode());
		result = prime * result + ((sql == null) ? 0 : sql.getOutputs().hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NodeOutputs other = (NodeOutputs) obj;
		if (node == null) {
			if (other.node != null)
				return false;
		} else if (!node.equals(other.node))
			return false;
		if (sql == null) {
			if (other.sql != null)
				return false;
		} else if (!sql.getOutputs().equals(other.sql.getOutputs()))
			return false;
		return true;
	}



	public String getSQL(String name) {
		return sql.getViewSQL(name);
	}



	public void refactorSQLWithQuote(String idQuotationString) {
		for(Column c:sql.getAllColumns()){
			if(!c.getName().startsWith(idQuotationString)){
				c.setName(idQuotationString+c.getName()+idQuotationString);
			}
		}
		for(Table t:sql.getInputTables()){
			if(!t.getName().startsWith(idQuotationString)){
				t.setName(idQuotationString+t.getName()+idQuotationString);
			}
		}
		
	}
	
	

}
