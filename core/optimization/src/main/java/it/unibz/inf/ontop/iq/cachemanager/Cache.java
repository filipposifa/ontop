package it.unibz.inf.ontop.iq.cachemanager;

public interface Cache {

    public boolean manage (String minDate, String maxDate, double minX, double maxX, double minY, double maxY, String[] variables);

}