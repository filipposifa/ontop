package it.unibz.inf.ontop.iq.cachemanager.impl;

import com.google.common.reflect.TypeToken;
import it.unibz.inf.ontop.iq.cachemanager.Cache;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

import static java.time.temporal.ChronoUnit.DAYS;
import com.google.gson.Gson;

public class SimpleCache implements Cache {
    //simple cache, uses h hash set of strings that correspond to dates to denote presence of data in cache

    private HashMap<LocalDate, HashSet> timeCache;
    private String timeFile;
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

        //Initialize Cache Fields
        this.maxSize = maxSize;
        this.currSize = 0;
        this.cacheTable = tablenameCache;
        this.dcTable = tablenameFDW;
        this.con = con;

        /*
        TODO:
        - Remove emptying cache if it already exists (DELETE FROM)
        - Fill hash table with existing data
        - Dump json of hash table for next run
        - If there is no json, build hash table based on existing cache
         */
        this.timeFile = "../CacheData.json";
        File jsonFile = new File(this.timeFile);
        if (jsonFile.exists() && !jsonFile.isDirectory()) {
            try {
                Gson gson = new Gson();
                Type hashType = new TypeToken<Map<LocalDate, Set<String>>>(){}.getType();
                Reader jsonReader = new FileReader(this.timeFile);
                this.timeCache = gson.fromJson(jsonReader, hashType);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else this.timeCache = new HashMap<LocalDate, HashSet>();

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
        - update cache accordingly, return and proceed with usual workflow (FDW)
        - if query was fully imported, return and proceed with cache
        */
        if (miss) {
            System.out.println("SC: Updating cache...");

            /* Get range for data */
            long difDate = DAYS.between(minD, maxD);            //range of dates
            long querySize = difDate * variables.size();        //total query size
            System.out.println("SC: Range of Dates: " + difDate);
            System.out.println("SC: Query Size: " + querySize);

            /* Different cases based on query size */
            if (querySize > this.maxSize) {
                //FOR NOW: delete & update everything
                System.out.println("SC: Case 1 - Query Larger than Max Cache Size");
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
                System.out.println("SC: Number of Dates to be imported: " + dateRange);
                System.out.println("SC: [" + minDate + ", " + maxDate + "]");

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
                    this.currSize = this.maxSize;
                    for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
                        HashSet<String> vars = new HashSet<String>(variables);
                        this.timeCache.put(tmpD, vars);
                    }

                    /* Template Export to Json:
                    try {
                        Gson gson = new Gson();
                        gson.toJson(this.timeCache, new FileWriter(this.timeFile));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    */
                }
            } else if (querySize < this.maxSize && querySize > this.maxSize - this.currSize) {
                //FOR NOW: delete & update everything
                System.out.println("SC: Case 2 - Query Larger than Remaining Cache Size");
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
                this.currSize = (int) querySize;
                for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
                    HashSet<String> vars = new HashSet<String>(variables);
                    this.timeCache.put(tmpD, vars);
                }
                /* Template Export to Json:
                try {
                    Gson gson = new Gson();
                    gson.toJson(this.timeCache, new FileWriter(this.timeFile));
                } catch (IOException e) {
                    e.printStackTrace();
                }
                */
            } else {
                System.out.println("SC: Case 3 - Query Smaller than Remaining Cache Size");
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
                    HashSet<String> vars = new HashSet<String>(variables);
                    this.timeCache.put(tmpD, vars);
                }

                /* Template Export to Json:
                try {
                    Gson gson = new Gson();
                    gson.toJson(this.timeCache, new FileWriter(this.timeFile));
                } catch (IOException e) {
                    e.printStackTrace();
                }
                */

                //Exit and proceed with cache
                System.out.println("SC: Exiting...");
                return true;
            }

            //Before exiting, print hash set for debug
            this.timeCache.forEach((key, value) -> System.out.println(key + ": " + value.toString()));

            //Exit and proceed with usual workflow (FDW)
            System.out.println("SC: Exiting...");
            return false;
        }
        else {
            //Exit and proceed with cache
            System.out.println("SC: Exiting...");
            return true;
        }
    }
}
