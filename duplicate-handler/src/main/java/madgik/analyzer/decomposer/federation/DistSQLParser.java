/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madgik.analyzer.decomposer.federation;

import com.foundationdb.sql.parser.SQLParser;

/**
 * @author dimitris
 */
public class DistSQLParser extends SQLParser {

    @Override public IdentifierCase getIdentifierCase() {
        return IdentifierCase.PRESERVE;
    }
}
