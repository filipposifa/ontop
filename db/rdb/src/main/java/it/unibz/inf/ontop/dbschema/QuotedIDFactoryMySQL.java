package it.unibz.inf.ontop.dbschema;


/*
 * #%L
 * ontop-obdalib-core
 * %%
 * Copyright (C) 2009 - 2014 Free University of Bozen-Bolzano
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * #L%
 */


/**
 * Creates QuotedIdentifiers following the rules of MySQL:<br>
 *    - unquoted table identifiers are preserved<br>
 *    - unquoted column identifiers are not case-sensitive<br>
 *    - quoted identifiers are preserved
 *
 *
 * https://dev.mysql.com/doc/refman/8.0/en/identifier-case-sensitivity.html
 *
 * How table and database names are stored on disk and used in MySQL is affected
 * by the lower_case_table_names system variable, which you can set when starting mysqld.
 *
 * Column, index, and stored routine names are not case sensitive on any platform, nor are column aliases.
 *
 * https://dev.mysql.com/doc/refman/8.0/en/identifiers.html
 *
 * The identifier quote character is the backtick (`):
 * If the ANSI_QUOTES SQL mode is enabled, it is also permissible to quote identifiers
 * within double quotation marks. The ANSI_QUOTES mode causes the server to interpret
 * double-quoted strings as identifiers. Consequently, when this mode is enabled,
 * string literals must be enclosed within single quotation marks.
 *
 * @author Roman Kontchakov
 *
 */

public class QuotedIDFactoryMySQL implements QuotedIDFactory {

	private static final String QUOTATION_STRING = "`";
	private final boolean caseSensitiveTableNames;
	
	QuotedIDFactoryMySQL(boolean caseSensitiveTableNames) {
		this.caseSensitiveTableNames = caseSensitiveTableNames;
	}

	@Override
	public QuotedID createAttributeID(String s) {
		if (s == null)
			return new QuotedID(s, QuotedID.NO_QUOTATION);

		if (s.startsWith("`") && s.endsWith(QUOTATION_STRING))
			return new QuotedID(s.substring(1, s.length() - 1), QUOTATION_STRING, false);

		if (s.startsWith("\"") && s.endsWith(QuotedIDFactoryStandardSQL.QUOTATION_STRING))
			return new QuotedID(s.substring(1, s.length() - 1), QUOTATION_STRING, false);

		return new QuotedID(s, QuotedID.NO_QUOTATION, false);
	}

	@Override
	public RelationID createRelationID(String schema, String table) {
		return new RelationID(createFromString(schema), createFromString(table));			
	}

	private QuotedID createFromString(String s) {
		if (s == null)
			return new QuotedID(s, QuotedID.NO_QUOTATION);

		if (s.startsWith("`") && s.endsWith(QUOTATION_STRING))
			return new QuotedID(s.substring(1, s.length() - 1), QUOTATION_STRING, caseSensitiveTableNames);

		if (s.startsWith("\"") && s.endsWith(QuotedIDFactoryStandardSQL.QUOTATION_STRING))
			return new QuotedID(s.substring(1, s.length() - 1), QUOTATION_STRING, caseSensitiveTableNames);

		return new QuotedID(s, QuotedID.NO_QUOTATION, caseSensitiveTableNames);
	}
	
	@Override
	public String getIDQuotationString() {
		return QUOTATION_STRING;
	}	
}
