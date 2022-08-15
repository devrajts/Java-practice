mysql> use assignment;
Database changed
mysql> create table CITY(ID int,NAME varchar(17),COUNTRYCODE varchar(3),DISTRICT varchar(20),POPULATION int);
Query OK, 0 rows affected (0.67 sec)

mysql> insert into CITY values(3878,"Scottsdale","USA","Arizona",202705);
Query OK, 1 row affected (0.07 sec)

mysql> insert into CITY values(3965,"Corona","USA","California",90000);
Query OK, 1 row affected (0.14 sec)

mysql> insert into CITY values(3973,"Concord","USA","California",121780);
Query OK, 1 row affected (0.12 sec)

mysql> insert into CITY values(3977,"Cedar Rapids","USA","IOWA",120758);
Query OK, 1 row affected (0.13 sec)

mysql> insert into CITY values(3982,"Coral Springs","USA","Florida",87456);
Query OK, 1 row affected (0.12 sec)

mysql> select * from city;
+------+---------------+-------------+------------+------------+
| ID   | NAME          | COUNTRYCODE | DISTRICT   | POPULATION |
+------+---------------+-------------+------------+------------+
| 3878 | Scottsdale    | USA         | Arizona    |     202705 |
| 3965 | Corona        | USA         | California |      90000 |
| 3973 | Concord       | USA         | California |     121780 |
| 3977 | Cedar Rapids  | USA         | IOWA       |     120758 |
| 3982 | Coral Springs | USA         | Florida    |      87456 |
+------+---------------+-------------+------------+------------+
5 rows in set (0.00 sec)

mysql> select * from city where population>100000;
+------+--------------+-------------+------------+------------+
| ID   | NAME         | COUNTRYCODE | DISTRICT   | POPULATION |
+------+--------------+-------------+------------+------------+
| 3878 | Scottsdale   | USA         | Arizona    |     202705 |
| 3973 | Concord      | USA         | California |     121780 |
| 3977 | Cedar Rapids | USA         | IOWA       |     120758 |
+------+--------------+-------------+------------+------------+
3 rows in set (0.00 sec)

mysql> select sum(population) from city;
+-----------------+
| sum(population) |
+-----------------+
|          622699 |
+-----------------+
1 row in set (0.03 sec)

mysql> select sum(population) from city where district="California";
+-----------------+
| sum(population) |
+-----------------+
|          211780 |
+-----------------+
1 row in set (0.00 sec)

mysql> select avg(population) from city;
+-----------------+
| avg(population) |
+-----------------+
|     124539.8000 |
+-----------------+
1 row in set (0.00 sec)

mysql>