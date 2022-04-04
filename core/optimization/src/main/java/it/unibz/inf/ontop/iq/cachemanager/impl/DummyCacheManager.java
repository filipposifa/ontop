package it.unibz.inf.ontop.iq.cachemanager.impl;


import it.unibz.inf.ontop.iq.cachemanager.QueryCacheManager;
import it.unibz.inf.ontop.iq.IQ;

import javax.inject.Singleton;

@Singleton
public class DummyCacheManager implements QueryCacheManager {

    @Override
    public IQ optimize(IQ query) {
        return query;
    }
}