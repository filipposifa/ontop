/**
 * Copyright MaDgIK Group 2010 - 2015.
 */
package madgik.analyzer.decomposer.query.visitors;

import com.foundationdb.sql.StandardException;
import com.foundationdb.sql.parser.ColumnReference;
import com.foundationdb.sql.parser.GroupByColumn;
import com.foundationdb.sql.parser.Visitable;
import madgik.analyzer.decomposer.query.Column;
import madgik.analyzer.decomposer.query.SQLQuery;

/**
 * @author heraldkllapi
 */
public class GroupByColumnVisitor extends AbstractVisitor {

    public GroupByColumnVisitor(SQLQuery query) {
        super(query);
    }

    @Override public Visitable visit(Visitable node) throws StandardException {
        if (node instanceof GroupByColumn) {
            Column column = new Column();

            ColumnReference parserColumn = (ColumnReference) ((GroupByColumn) node).getColumnExpression();
            column.setAlias( parserColumn.getTableName());
            column.setName(parserColumn.getColumnName());
            query.getGroupBy().add(column);
            return node;
        }
        return node;
    }
}
