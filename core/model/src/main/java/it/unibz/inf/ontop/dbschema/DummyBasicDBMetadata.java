package it.unibz.inf.ontop.dbschema;

import com.google.inject.Inject;
import it.unibz.inf.ontop.model.type.TypeFactory;


/**
 * A dummy DBMetadata for tests only
 */
public class DummyBasicDBMetadata extends BasicDBMetadata {

    @Inject
    private DummyBasicDBMetadata(TypeFactory typeFactory) {

        super("dummy class", null, null, "",
                new QuotedIDFactoryStandardSQL(), typeFactory.getDBTypeFactory());
    }
}
