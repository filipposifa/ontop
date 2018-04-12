# Experimental Results and  Material

This directory contains the results of the experiments as well as material needed to reproduce them

## Contents of this Directory
* SPARQL: the SPARQL queries
* times: spreadsheets with all the execution times
* heuristic: query fragments and results for evaluating the DE heuristic
* histograms: data summarization gathered from the data for our selectivity estimator
* ontologies: LUBM and NPD ontologies
* view: output of our method for offline identification of mappings with DTR>1. For the specific mappings it contains the SQL query whose result should be materialized
* Directories MySQL, postgres, oracle and db2 contain all the execution times, the produced SQL queries and the number of answers for each query. Each directory also contains the exact mappings used for each system. NPDExtra are the queries coming from user requirements. Please note that for db2 and oracle we have used unquoted identifiers during data import, so all identifiers default to upper case.

## How to reproduce the experiments
* Setup the database according to the directions at the benchmark site (https://github.com/ontop/npd-benchmark for NPD and https://github.com/ontop/iswc2014-benchmark/tree/master/LUBM for LUBM) 
* Make sure your java version is 8 and environment variable JAVA_HOME is set (check with java -version and echo $JAVA_HOME)
* download or clone the repository (git clone https://github.com/dbilid/ontop.git )
* cd to the directory (cd ontop)
* run “mvn clean install -DskipTests=true -Dmaven.javadoc.skip=true”
* cd to subdirectory quest-sesame (cd quest-sesame)
* run “mvn assembly:single -DskipTests=true -Dmaven.javadoc.skip=true”
* cd target
* run “java -jar ontop-quest-sesame-1.18.1-jar-with-dependencies.jar”. You can see the parameters needed. The path to SPARQL queries file must contain each query in a separate file that has the postfix .q. For example, if you have downloaded the repo at /home/user then running “java -jar java -jar ontop-quest-sesame-1.18.1-jar-with-dependencies.jar /tmp/ 1000 /home/user/ontop/results/ontologies/npd-v2-ql.owl /home/user/ontop/results/postgres/mappings/npd-v2-ql-postgres-ontop1.17.obda 0 0 /home/user/ontop/results/SPARQL/npd /home/user/ontop/results/histograms/npd100.json 2” will run the queries in folder /home/user/ontop/results/SPARQL/npd using the mappings from file /home/user/ontop/results/postgres/mappings/npd-v2-ql-postgres-ontop1.17.obda, the ontology from file /home/user/ontop/results/ontologies/npd-v2-ql.owl and the data summarization from file /home/user/ontop/results/histograms/npd100.json with only the early DE optimization performed (without pushing IRI before DE and without self join elimination), it will write the results (times, queries and number of answers) in directory /tmp/ and it will use a timeout of 1000 seconds. Note that you should first modify the .obda file to change the connection details of the database.



