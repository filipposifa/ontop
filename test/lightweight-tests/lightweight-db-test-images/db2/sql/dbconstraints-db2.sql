CREATE DATABASE DBCONSTR;

CONNECT TO DBCONSTR;

CREATE TABLE Book (
bk_code INTEGER NOT NULL,
bk_title VARCHAR(100) WITH DEFAULT NULL,
PRIMARY KEY (bk_code)
) ;

CREATE TABLE Writer (
"WR_CODE" INTEGER NOT NULL,
"WR_NAME" VARCHAR(100) WITH DEFAULT NULL,
PRIMARY KEY ("WR_CODE")
) ;

CREATE TABLE Bookwriter (
bk_code integer NOT NULL,
wr_code integer WITH DEFAULT NULL,
FOREIGN KEY (bk_code) REFERENCES Book(bk_code),
FOREIGN KEY (wr_code) REFERENCES Writer(wr_code)
) ;

CREATE TABLE Edition (
ed_code integer NOT NULL,
ed_year integer WITH DEFAULT NULL,
bk_code integer WITH DEFAULT NULL,
PRIMARY KEY (ed_code),
FOREIGN KEY (bk_code) REFERENCES Book(bk_code)
) ;

COMMIT WORK;

CONNECT RESET;

TERMINATE;