package it.unibz.inf.ontop.iq.cachemanager.impl;

import it.unibz.inf.ontop.iq.cachemanager.Cache;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

import static java.time.temporal.ChronoUnit.DAYS;

public class SimpleCache implements Cache {
    //simple cache, uses h hash set of strings that correspond to dates to denote presence of data in cache

    private HashMap<LocalDate, TreeSet> timeCache;
    //different structure:
    // private HashMap<Double, TreeSet> xCache
    // private HashMap<Double, TreeSet> yCache
    // private HashSet<String> varCache
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
            //time: character varying instead of timestamp without time zone
            String stmtStr = "CREATE TABLE IF NOT EXISTS " + this.cacheTable +
                    " (time character varying NULL, " +
                    " y double precision NULL, " +
                    " x double precision NULL, " +
                    "PRIMARY KEY (time, y, x))";
            stmt.executeUpdate(stmtStr);
            stmtStr = "DELETE FROM " + this.cacheTable + ";";
            stmt.executeUpdate(stmtStr);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("SC: Created cache table in given database.");

        /*
        TODO:
        - Remove emptying cache if it already exists (DELETE FROM)
        - Fill hash table with existing data
        - Update all corresponding fields
         */
    }

    public boolean manage(String minDate, String maxDate, double minX, double maxX, double minY, double maxY, HashSet<String> variables) {
        System.out.println("SC: In the manage method.");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'hh:mm:ss");
        LocalDate minD = LocalDate.parse(minDate, formatter);
        LocalDate maxD = LocalDate.parse(maxDate, formatter).plusDays(1);

        /* First check if data is in time hash (exists in cache table) */
        boolean miss = false;
        System.out.println("SC: Check time hash.");
        outerLoop: for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
            if (!this.timeCache.containsKey(tmpD)) {
                //if current date is NOT in hash, break
                System.out.println("SC: Found date miss. BREAK!");
                miss = true;
                break;
            } else {
                //if current date IS in hash, check if requested variables are in its hash set
                for (String var:variables) {
                    //if current variable is not in current date's hash set, break
                    if (!this.timeCache.get(tmpD).contains(var)) {
                        System.out.println("SC: Found var miss. BREAK!");
                        miss = true;
                        break outerLoop;
                    }
                }
            }
        }

        /*
        If query cannot be answered by cache in total,
        - update cache accordingly
        - return and proceed with usual workflow (FDW)
        */
        if (miss) {
            System.out.println("SC: Updating cache...");

            /* Get range for data */
            long difDate = DAYS.between(minD, maxD);
            long querySize = difDate * variables.size();        //total query size

            /* If query size is bigger than cache capacity, FOR NOW: delete & update everything */
            if (querySize > this.maxSize) {
                System.out.println("SC: Case 1");
                //clear everything
                this.currSize = 0;
                this.timeCache.clear();
                try (Statement stmt = this.con.createStatement()) {
                    String stmtStr = "DELETE FROM " + this.cacheTable + ";";
                    stmt.executeUpdate(stmtStr);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("SC: Successfully deleted data from cache.");

                //update with new data
                int dateRange = this.maxSize/variables.size();
                minD = maxD.minusDays(dateRange);
                minDate = minD.format(formatter);

                for (String column : variables) {
                    try (Statement stmt = this.con.createStatement()) {
                        String stmtStr = "ALTER TABLE " + this.cacheTable +
                                " ADD COLUMN IF NOT EXISTS " + column + " double precision;" +
                                " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                                " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                                " WHERE time >= '" + minDate + "' AND time <= '" + maxDate + "'" +
                                " AND x >= " + minX + " AND x <= " + maxX +
                                " AND y >= " + minY + " AND y <= " + maxY + ";";
                        System.out.println("SC: Query: \n" + "\u001B[33m" + stmtStr + "\u001B[0m");
                        stmt.executeUpdate(stmtStr);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    System.out.println("SC: Successfully updated cache for variable: " + column);

                    //update current cache size and hash
                    this.currSize += querySize;
                    for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
                        TreeSet<String> vars = new TreeSet<String>(variables);
                        this.timeCache.put(tmpD, vars);
                    }
                }
            } else if (querySize < this.maxSize && querySize > this.maxSize - this.currSize) {
                //FOR NOW: delete & update everything
                System.out.println("SC: Case 2");

                //clear everything
                this.currSize = 0;
                this.timeCache.clear();
                try (Statement stmt = this.con.createStatement()) {
                    String stmtStr = "DELETE FROM " + this.cacheTable + ";";
                    stmt.executeUpdate(stmtStr);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("SC: Successfully deleted data from cache.");

                //update with new data
                int dateRange = (this.maxSize - this.currSize)/variables.size();
                minD = maxD.minusDays(dateRange);
                minDate = minD.format(formatter);

                for (String column : variables) {
                    try (Statement stmt = this.con.createStatement()) {
                        String stmtStr = "ALTER TABLE " + this.cacheTable +
                                " ADD COLUMN IF NOT EXISTS " + column + " double precision;" +
                                " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                                " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                                " WHERE time >= '" + minDate + "' AND time <= '" + maxDate + "'" +
                                " AND x >= " + minX + " AND x <= " + maxX +
                                " AND y >= " + minY + " AND y <= " + maxY + ";";
                        System.out.println("SC: Query: \n" + stmtStr);
                        stmt.executeUpdate(stmtStr);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    System.out.println("SC: Successfully updated cache for variable: " + column);
                }

                //update current cache size and hash
                this.currSize += querySize;
                for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
                    TreeSet<String> vars = new TreeSet<String>(variables);
                    this.timeCache.put(tmpD, vars);
                }
            } else {
                System.out.println("SC: Case 3");
                for (String column : variables) {
                    try (Statement stmt = this.con.createStatement()) {
                        String stmtStr = "ALTER TABLE " + this.cacheTable +
                                " ADD COLUMN IF NOT EXISTS " + column + " double precision;" +
                                " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                                " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                                " WHERE time >= '" + minDate + "' AND time <= '" + maxDate + "'" +
                                " AND x >= " + minX + " AND x <= " + maxX +
                                " AND y >= " + minY + " AND y <= " + maxY + ";";
                        System.out.println("SC: Query: \n" + stmtStr);
                        stmt.executeUpdate(stmtStr);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    System.out.println("SC: Successfully updated cache for variable: " + column);
                }

                //update current cache size and hash
                this.currSize += querySize;
                for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
                    TreeSet<String> vars = new TreeSet<String>(variables);
                    this.timeCache.put(tmpD, vars);
                }
            }

            //Exit and proceed with usual workflow (FDW)
            System.out.println("SC: Exiting...");
            return false;
        }
        else return true;   //Query can be answered by cache
    }
}
