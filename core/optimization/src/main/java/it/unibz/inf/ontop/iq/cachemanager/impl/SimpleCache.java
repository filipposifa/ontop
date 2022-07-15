package it.unibz.inf.ontop.iq.cachemanager.impl;

import it.unibz.inf.ontop.iq.cachemanager.Cache;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Date;

public class SimpleCache implements Cache {
    //simple cache, uses h hash set of strings that correspond to dates to denote presence of data in cache

    private HashMap<LocalDate, TreeSet> timeCache;
    private HashMap<Double, TreeSet> xCache;
    private HashMap<Double, TreeSet> yCache;
    private HashSet<String> varCache;
    private int size;
    private int maxSize;
    private Connection con;
    private String table;

    public SimpleCache(String tablenameFDW, String tablenameCache, int maxSize, Connection con) {
        this.timeCache = new HashMap<LocalDate, TreeSet>();
        this.maxSize = maxSize;
        this.size = 0;
        this.table = tablenameCache;
        this.con = con;

        System.out.println("SC: In the constructor.");
        try (Statement stmt = con.createStatement()) {
            String stmtStr = "CREATE TABLE " + tablenameCache +
                    " (id INTEGER not NULL, " +
                    " time timestamp without time zone NULL, " +
                    " y double precision NULL, " +
                    " x double precision NULL, " +
                    "PRIMARY KEY (id))";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        stmt.executeUpdate(stmtStr);
        System.out.println("SC: Created cache table in given database.");
    }

    @Override
    public void manage(String minDate, String maxDate, double minX, double maxX, double minY, double maxY, String variable) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-ddThh:mm:ss")
        LocalDate minD = LocalDate.parse(minDate, formatter);
        LocalDate maxD = LocalDate.parse(minDate, formatter);

        /* Get range for data */
        long difDate = maxD.getTime() - minD.getTime();
        int sizeDate = (int) (difDate / (1000 * 60 * 60 * 24));

        LocalDate tmpMaxD = maxD;
        if (sizeDate > 30) {
            /* Cache fits 30 days worth of data */
            /*
                for (maxDate-30) to maxDate:
                    if currDate exists in cache check if requested variable is in cache
                    if currDate does not exist in cache, update cache
                    (updating cache also has 2 paths based on if it has enough space)


                RETRIEVAL?
             */
        }
        else {
            /*
                for minDate to maxDate:
                    same process as before
             */
        }
    }
}
