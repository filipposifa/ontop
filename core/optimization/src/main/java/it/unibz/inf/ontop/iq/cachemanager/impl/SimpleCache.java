package it.unibz.inf.ontop.iq.cachemanager.impl;

import it.unibz.inf.ontop.iq.cachemanager.Cache;

import java.sql.Connection;
import java.util.HashSet;
import java.util.Set;

public class SimpleCache implements Cache {
    //simple cache, uses h hash set of strings that correspond to dates to denote presence of data in cache

    private Set<String> theCache;
    private int size;
    private int maxSize;
    private Connection con;

    public SimpleCache(String tablenameFDW, String tablenameCache, int maxSize, Connection con) {
        theCache = new HashSet<String>();
        this.maxSize = maxSize;
        size = 0;
        this.con = con;

    }

    @Override
    public void manage(String minDate, String maxDate, double minX, double maxX, double minY, double maxY, String variable) {

    }
}
