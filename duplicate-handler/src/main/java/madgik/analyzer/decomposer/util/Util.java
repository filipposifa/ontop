/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package madgik.analyzer.decomposer.util;

import madgik.analyzer.decomposer.query.Column;
import madgik.analyzer.decomposer.query.Operand;
import madgik.analyzer.decomposer.query.SQLQuery;
import madgik.analyzer.decomposer.query.SQLQueryParser;

import java.sql.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

/**
 * @author jim
 */
public class Util {

	private static AtomicLong idCounter = new AtomicLong();


	private Util() {
	}

	public static String createUniqueId() {
		
			String a=String.valueOf(idCounter.getAndIncrement());
			return a;
		
	}

	public static boolean operandsAreEqual(Operand op1, Operand op2) {
		if (op1.getClass() == op2.getClass()) {
			return op1.getClass().cast(op1).equals(op2.getClass().cast(op2));
		} else {
			return false;
		}
	}

	public static HashMap<String, HashSet<String>> getMysqlIndices(
			String conString) throws SQLException {
		HashMap<String, HashSet<String>> result = new HashMap<String, HashSet<String>>();

		Connection conn;

		conn = DriverManager.getConnection(conString);
		DatabaseMetaData meta = conn.getMetaData();
		ResultSet tables = meta.getTables(null, null, null, null);
		while (tables.next()) {
			ResultSet rs;
			String tableName = tables.getString(3);
			rs = meta.getPrimaryKeys(null, null, tableName);
			HashSet<String> hash = new HashSet<String>();
			result.put(tableName.toLowerCase(), hash);
			while (rs.next()) {
				hash.add(rs.getString("COLUMN_NAME"));
				// String columnName = rs.getString("COLUMN_NAME");
				// System.out.println(tables.getString(3));
				// System.out.println("getPrimaryKeys(): columnName=" +
				// columnName);
			}
			rs.close();

		}
		tables.close();
		conn.close();
		return result;
	}

	public static Set<String> getAnalyzeColumns(List<String> queries) {
		Map<String, Set<String>> tables = new HashMap<String, Set<String>>();
		for (String q : queries) {
			SQLQuery query = new SQLQuery();
			try {
				query = SQLQueryParser.parse(q, null);
			} catch (Exception e) {
				System.err.println("Could not generate analyze commands."
						+ e.getMessage());
			}
			for (Column c : query.getAllReferencedColumns()) {
				if (!tables.containsKey(c.getAlias())) {
					tables.put(c.getAlias(), new HashSet<String>());
				}
				Set<String> cols = tables.get(c.getAlias());
				cols.add(c.getName());

			}
		}
		Set<String> result = new HashSet<String>();
		for (String tablename : tables.keySet()) {
			String analyze = "analyzeTable " + tablename;
			for (String col : tables.get(tablename)) {
				analyze += " " + col;
			}
			result.add(analyze);

		}
		return result;
	}
}
