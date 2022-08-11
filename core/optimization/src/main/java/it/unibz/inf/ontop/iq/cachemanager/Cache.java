package it.unibz.inf.ontop.iq.cachemanager;

import java.util.HashSet;

public interface Cache {

    public boolean manage (String minDate, String maxDate, double minX, double maxX, double minY, double maxY, HashSet<String> variables);

}