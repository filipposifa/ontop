package it.unibz.inf.ontop.iq.cachemanager.impl;

import it.unibz.inf.ontop.iq.cachemanager.Cache;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class SimpleCache implements Cache {
    //simple cache, uses h hash set of strings that correspond to dates to denote presence of data in cache

    private HashMap<LocalDate, TreeSet> timeCache;
    //private HashMap<Double, TreeSet> xCache;
    //private HashMap<Double, TreeSet> yCache;
    //private HashSet<String> varCache;
    private int currSize;
    private int maxSize;
    private Connection con;
    private String cacheTable;
    private String dcTable;

    public SimpleCache(String tablenameFDW, String tablenameCache, int maxSize, Connection con) {
        this.timeCache = new HashMap<LocalDate, TreeSet>();
        this.maxSize = maxSize;
        this.currSize = 0;
        this.cacheTable = tablenameCache;
        this.dcTable = tablenameFDW;
        this.con = con;

        System.out.println("SC: In the constructor.");
        try (Statement stmt = this.con.createStatement()) {
            String stmtStr = "CREATE TABLE " + this.cacheTable +
                    " (time timestamp without time zone NULL, " +
                    " y double precision NULL, " +
                    " x double precision NULL, " +
                    "PRIMARY KEY (time, y, x))";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        stmt.executeUpdate(stmtStr);
        System.out.println("SC: Created cache table in given database.");
    }

    @Override
    public void manage(String minDate, String maxDate, double minX, double maxX, double minY, double maxY, String[] variables) {
        System.out.println("SC: In the manage method.");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-ddThh:mm:ss");
        LocalDate minD = LocalDate.parse(minDate, formatter);
        LocalDate maxD = LocalDate.parse(maxDate, formatter);

        /* First check if data is in time hash (exists in cache table) */
        boolean miss = false;
        outerLoop: for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
            if (!this.timeCache.containsKey(tmpD)) {
                //if current date is NOT in hash, break
                miss = true;
                break;
            }
            else {
                //if current date IS in hash, check if requested variables are in its hash set
                for (String var:variables) {
                    //if current variable is not in current date's hash set, break
                    if (!this.timeCache.get(tmpD).contains(var)) {
                        miss = true;
                        break outerLoop;
                    }
                }
            }
        }

        /* If query cannot be answered by cache in total, return and proceed with usual workflow */
        if (miss) return;

        /* Get range for data */
        long difDate = maxD.getTime() - minD.getTime();
        int sizeDate = (int) ((difDate / (1000 * 60 * 60 * 24)) + 1);   //msec, sec, min, hours, +1 day to include start date in interval
        int querySize = sizeDate * variables.length;                    //total query size

        /* If query size is bigger than cache capacity, return and proceed with usual workflow */
        if (querySize > this.maxSize) return;

        //check if query fits in cache
        if (querySize > this.maxSize - this.currSize) {
            //FOR NOW: delete & update everything

            //clear everything
            this.currSize = 0;
            this.timeCache.clear();
            try (Statement stmt = this.con.createStatement()) {
                String stmtStr = "DELETE FROM " + this.cacheTable + ";";
            } catch (SQLException e) {
                e.printStackTrace();
            }
            stmt.executeUpdate(stmtStr);
            System.out.println("SC: Successfully deleted data from cache.");

            //update with new data
            for (String column: variables) {
                try (Statement stmt = this.con.createStatement()) {
                    String stmtStr = "ALTER TABLE " + this.cacheTable +
                            " ADD COLUMN IF NOT EXISTS " + column + " double precision; " +
                            " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                            " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                            " WHERE time >= " + minDate + " AND time <= " + maxDate +
                            " AND x >= " + minX + " AND x <= " + maxX +
                            " AND y >= " + minY + " AND y <= " + maxY + ";";
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                stmt.executeUpdate(stmtStr);
                System.out.println("SC: Successfully updated cache for variable: " + column);
            }

            //update current cache size and hash
            this.currSize += querySize;
            for (LocalDate tmpD = minDate; tmpD.isBefore(maxDate); tmpD = tmpD.plusDays(1)) {
                TreeSet<String> vars = new TreeSet<String>(Arrays.asList(variables));
                this.timeCache.put(tmpD, vars);
            }
        }
        else {
            for (String column: variables) {
                try (Statement stmt = this.con.createStatement()) {
                    String stmtStr = "ALTER TABLE " + this.cacheTable +
                            " ADD COLUMN IF NOT EXISTS " + column + " double precision; " +
                            " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                            " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                            " WHERE time >= " + minDate + " AND time <= " + maxDate +
                            " AND x >= " + minX + " AND x <= " + maxX +
                            " AND y >= " + minY + " AND y <= " + maxY + ";";
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                stmt.executeUpdate(stmtStr);
                System.out.println("SC: Successfully updated cache for variable: " + column);
            }

            //update current cache size and hash
            this.currSize += querySize;
            for (LocalDate tmpD = minDate; tmpD.isBefore(maxDate); tmpD = tmpD.plusDays(1)) {
                TreeSet<String> vars = new TreeSet<String>(Arrays.asList(variables));
                this.timeCache.put(tmpD, vars);
            }
        }
    }
}
