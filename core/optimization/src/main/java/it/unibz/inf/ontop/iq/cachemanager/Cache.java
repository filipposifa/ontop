package it.unibz.inf.ontop.iq.cachemanager;

public interface Cache {

    public void manage (String minDate, String maxDate, double minX, double maxX, double minY, double maxY, String[] variables);

}
