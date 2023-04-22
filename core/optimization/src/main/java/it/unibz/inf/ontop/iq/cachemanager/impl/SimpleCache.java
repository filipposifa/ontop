package it.unibz.inf.ontop.iq.cachemanager.impl;

import com.google.common.reflect.TypeToken;
import it.unibz.inf.ontop.iq.cachemanager.Cache;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
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

    private HashMap<String, HashSet> timeCache;
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

    public SimpleCache(String tableNameFDW, String tableNameCache, int maxSize, Connection con) {

        //Initialize Cache Fields
        System.out.println("SC: In the constructor.");
        this.maxSize = maxSize;
        this.currSize = 0;
        this.cacheTable = tableNameCache;
        this.dcTable = tableNameFDW;
        this.con = con;

        //Initialize map for hash data
        this.timeCache = new HashMap<String, HashSet>();

        /* Get tmp folder to handle hash data - Old Version
        this.timeFile = System.getProperty("java.io.tmpdir");
        this.timeFile += "/CacheData.json";
         */

        //Get home folder to handle hash data
        this.timeFile = System.getProperty("user.home");
        this.timeFile += "/CacheData.json";

        File jsonFile = new File(this.timeFile);
        System.out.println("SC: Hash File Path: " + this.timeFile);

        //If hash file exists import in hash table; If not, build everything from start
        if (jsonFile.exists() && !jsonFile.isDirectory()) {
            try {
                System.out.println("SC: Hash file found.");
                Gson gson = new Gson();
                FileReader jsonReader = new FileReader(this.timeFile);
                Type hashType = new TypeToken<HashMap<String, HashSet<String>>>(){}.getType();
                this.timeCache = gson.fromJson(jsonReader, hashType);
            } catch (IOException e) {
                e.printStackTrace();
            }
            //Before continuing, update current size of hash and print it for debug
            this.timeCache.forEach((key, value) -> {
                System.out.println(key + ": " + value.toString());
                this.currSize += value.size();  //add number of variables for each day
            });
            System.out.println("SC: Hash table updated.");
        }
        else {
            try (Statement stmt = this.con.createStatement()) {
                System.out.println("SC: Hash file NOT found.");
                //time: character varying instead of timestamp without time zone
                String stmtStr = "CREATE TABLE IF NOT EXISTS " + this.cacheTable +
                        " (time character varying NULL, " +
                        " y double precision NULL, " +
                        " x double precision NULL, " +
                        "PRIMARY KEY (time, y, x))";
                stmt.executeUpdate(stmtStr);
                //Redundant Statement; To be deleted
                stmtStr = "DELETE FROM " + this.cacheTable + ";";
                stmt.executeUpdate(stmtStr);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println("SC: Created cache table in given database.");
        }
    }

    public boolean manage(String minDate, String maxDate, double minX, double maxX, double minY, double maxY, HashSet<String> variables) {
        System.out.println("SC: In the manage method.");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'hh:mm:ss");
        LocalDate minD = LocalDate.parse(minDate, formatter);
        LocalDate maxD = LocalDate.parse(maxDate, formatter).plusDays(1);

        /* First check if data is in time hash (exists in cache table) */
        String tmpStr;
        boolean miss = false;
        System.out.println("SC: Check time hash.");
        outerLoop: for (LocalDate tmpD = minD; tmpD.isBefore(maxD); tmpD = tmpD.plusDays(1)) {
             tmpStr = tmpD.toString();
            if (!this.timeCache.containsKey(tmpStr)) {
                //if current date is NOT in hash, break
                System.out.println("SC: Found date miss. BREAK!");
                miss = true;
                break;
            } else {
                //if current date IS in hash, check if requested variables are in its hash set
                for (String var:variables) {
                    //if current variable is not in current date's hash set, break
                    if (!this.timeCache.get(tmpStr).contains(var)) {
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

        TODO:
        - handle duplicate insert when adding a new variable to a hash set
        - check how upsert works in postgres and edit queries accordingly
        - get database password from properties
        - handle complex queries, requiring access to both fdw and cache
        - change index implementation to R-tree
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
                //delete & update everything
                System.out.println("SC: Case 1 - Query Larger than Max Cache Size");

                //clear hash and cache
                this.currSize = 0;
                this.timeCache.clear();
                try (Statement stmt = this.con.createStatement()) {
                    String stmtStr = "DELETE FROM " + this.cacheTable + ";";
                    stmt.executeUpdate(stmtStr);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("SC: Successfully deleted data from cache.");

                //update with as much new data as possible
                int dateRange = this.maxSize / variables.size();
                minD = maxD.minusDays(dateRange);
                minDate = minD.toString();
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
                                " AND y >= " + minY + " AND y <= " + maxY +
                                " AND " + column + " != 'NaN'" +
                                " ON CONFLICT (time, x, y) DO UPDATE" +
                                " SET " + column + " = EXCLUDED." + column + ";";
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
                        if (this.timeCache.containsKey(tmpD.toString()))
                            this.timeCache.get(tmpD.toString()).addAll(vars);
                        else
                            this.timeCache.put(tmpD.toString(), vars);
                    }

                    /* Template Export to Json: */
                    try {
                        Gson gson = new Gson();
                        FileWriter writer = new FileWriter(this.timeFile);
                        Type hashType = new TypeToken<Map<LocalDate, Set<String>>>(){}.getType();
                        gson.toJson(this.timeCache, hashType, writer);
                        writer.flush();
                        writer.close();
                        System.out.println("SC: Successfully updated hash json file.");
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                    //Before exiting, print hash set for debug
                    this.timeCache.forEach((key, value) -> System.out.println(key + ": " + value.toString()));

                    //Exit and proceed with usual workflow (FDW)
                    System.out.println("SC: Exiting...");
                    return false;
                }
            } else if (querySize < this.maxSize && querySize > this.maxSize - this.currSize) {
                //delete necessary rows to import new query
                System.out.println("SC: Case 2 - Query Larger than Remaining Cache Size");

                //calculate the least amount of rows to be deleted
                int delSum = 0;
                int excess = ((int) querySize + this.currSize) - this.maxSize;

                //iterate through hash data, remove entry and delete corresponding rows
                Iterator it = this.timeCache.entrySet().iterator();
                while (it.hasNext() && delSum < excess) {
                    HashMap.Entry pair = (HashMap.Entry) it.next();
                    String key = (String) pair.getKey() + "T00:00:00"; //hardcoded fix for LocalDateTime
                    HashSet val = (HashSet) pair.getValue();
                    System.out.println("SC:\n\tKey: " + key + "\n\tVal" + val);

                    delSum += val.size();
                    try (Statement stmt = this.con.createStatement()) {
                        String stmtStr = "DELETE FROM " + this.cacheTable +
                                " WHERE time = '" + key + "';";
                        System.out.println("SC: Query: \n" + stmtStr);
                        stmt.executeUpdate(stmtStr);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    it.remove(); //avoids a ConcurrentModificationException
                }
                this.currSize -= delSum;
                System.out.println("SC: Successfully deleted data from cache. Current Cache Size: " + this.currSize);

                //update with new data
                for (String column : variables) {
                    try (Statement stmt = this.con.createStatement()) {
                        String stmtStr = "ALTER TABLE " + this.cacheTable +
                                " ADD COLUMN IF NOT EXISTS " + column + " double precision;" +
                                " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                                " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                                " WHERE time >= '" + minDate + "' AND time <= '" + maxDate + "'" +
                                " AND x >= " + minX + " AND x <= " + maxX +
                                " AND y >= " + minY + " AND y <= " + maxY +
                                " AND " + column + " != 'NaN'" +
                                " ON CONFLICT (time, x, y) DO UPDATE" +
                                " SET " + column + " = EXCLUDED." + column + ";";
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
                    if (this.timeCache.containsKey(tmpD.toString()))
                        this.timeCache.get(tmpD.toString()).addAll(vars);
                    else
                        this.timeCache.put(tmpD.toString(), vars);
                }

                /* Template Export to Json: */
                try {
                    Gson gson = new Gson();
                    FileWriter writer = new FileWriter(this.timeFile);
                    Type hashType = new TypeToken<HashMap<String, HashSet<String>>>(){}.getType();
                    gson.toJson(this.timeCache, hashType, writer);
                    writer.flush();
                    writer.close();
                    System.out.println("SC: Successfully updated hash json file.");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                //no deletions necessary
                System.out.println("SC: Case 3 - Query Smaller than Remaining Cache Size");

                //update with new data
                for (String column : variables) {
                    try (Statement stmt = this.con.createStatement()) {
                        String stmtStr = "ALTER TABLE " + this.cacheTable +
                                " ADD COLUMN IF NOT EXISTS " + column + " double precision;" +
                                " INSERT INTO " + this.cacheTable + " (time, x, y, " + column + ")" +
                                " SELECT time, x, y, " + column + " FROM " + this.dcTable +
                                " WHERE time >= '" + minDate + "' AND time <= '" + maxDate + "'" +
                                " AND x >= " + minX + " AND x <= " + maxX +
                                " AND y >= " + minY + " AND y <= " + maxY +
                                " AND " + column + " != 'NaN'" +
                                " ON CONFLICT (time, x, y) DO UPDATE" +
                                " SET " + column + " = EXCLUDED." + column + ";";
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
                    if (this.timeCache.containsKey(tmpD.toString()))
                        this.timeCache.get(tmpD.toString()).addAll(vars);
                    else
                        this.timeCache.put(tmpD.toString(), vars);
                }

                /* Template Export to Json: */
                try {
                    Gson gson = new Gson();
                    FileWriter writer = new FileWriter(this.timeFile);
                    Type hashType = new TypeToken<HashMap<String, HashSet<String>>>(){}.getType();
                    gson.toJson(this.timeCache, hashType, writer);
                    writer.flush();
                    writer.close();
                    System.out.println("SC: Successfully updated hash json file.");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            //Before exiting, print hash set for debug
            this.timeCache.forEach((key, value) -> System.out.println(key + ": " + value.toString()));
        }

        //Exit and proceed with cache
        System.out.println("SC: Exiting...");
        return true;
    }
}
